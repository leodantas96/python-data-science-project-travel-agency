import tkinter as tk
from tkinter import ttk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import matplotlib.pyplot as plt
import pandas as pd
from app.database import obter_conexao


def abrir_dashboard_widgets(data_ini: str, data_fim: str, operadores: list[str], frame_resultados):
    """
    Cria os widgets analíticos com base nas datas e operadores selecionados,
    consulta a base de dados diretamente e devolve (df, figures, analise_texto).
    """
    # Limpa widgets anteriores
    for widget in frame_resultados.winfo_children():
        widget.destroy()

    # Monta e executa query SQL
    operadores_str = "', '".join(operadores)
    cond_oper = f"AND o.nome_utilizador IN ('{operadores_str}')" if operadores else ""
    query = f"""
        SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador
        FROM reservas r
        JOIN operadores o ON r.id_operador = o.id_operador
        JOIN clientes c  ON r.id_cliente  = c.id_cliente
        WHERE r.data_abertura BETWEEN %s AND %s
        {cond_oper}
    """
    con = obter_conexao()
    df = pd.read_sql(query, con, params=(data_ini, data_fim))
    con.close()

    if df.empty:
        tk.Label(frame_resultados, text="Sem dados para este intervalo.", bg="white").pack()
        return None, [], ""

    # Prepara data
    df["data_abertura"] = pd.to_datetime(df["data_abertura"])

    # Função de análise textual
    def gerar_analise_textual(df_):
        total_vendas = df_["preco"].sum()
        total_margem = df_["margem"].sum()
        media_margem = df_["margem"].mean()
        melhor_dia = df_.groupby("data_abertura")["preco"].sum().idxmax().strftime("%Y-%m-%d")
        melhor_op  = df_.groupby("nome_utilizador")["preco"].sum().idxmax()
        return (
            f"- Total de vendas: {total_vendas:.2f} EUR\n"
            f"- Total de margem: {total_margem:.2f} EUR\n"
            f"- Margem média: {media_margem:.2f} EUR\n"
            f"- Melhor dia: {melhor_dia}\n"
            f"- Melhor operador: {melhor_op}\n"
        )

    # Container grid
    frame_grelha = tk.Frame(frame_resultados, bg="white")
    frame_grelha.pack(padx=20, pady=10, fill=tk.BOTH, expand=True)

    figures: list[plt.Figure] = []

    # Helper para cada gráfico
    def criar_widget(titulo, agrupador, valor_col, y_label, row, col):
        fig, ax = plt.subplots(figsize=(5, 3))
        if operadores:
            for op in operadores:
                sub = df[df["nome_utilizador"] == op].copy()
                sub.set_index("data_abertura", inplace=True)
                grp = getattr(sub.resample("M"), agrupador)()[valor_col]
                grp = grp[grp != 0]
                ax.plot(grp.index, grp.values, marker="o", label=op)
            ax.legend()
        else:
            temp = df.copy()
            temp.set_index("data_abertura", inplace=True)
            grp = getattr(temp.resample("M"), agrupador)()[valor_col]
            grp = grp[grp != 0]
            ax.plot(grp.index, grp.values, marker="o")

        ax.set_title(titulo, fontsize=12)
        ax.set_xlabel("Data", fontsize=10)
        ax.set_ylabel(y_label, fontsize=10)
        ax.tick_params(axis="x", rotation=30)
        ax.grid(True)

        figures.append(fig)
        f = tk.Frame(frame_grelha, bg="white")
        canvas = FigureCanvasTkAgg(fig, master=f)
        canvas.draw()
        canvas.get_tk_widget().pack(fill=tk.BOTH, expand=True)
        f.grid(row=row, column=col, padx=10, pady=10, sticky="nsew")

    # Gráficos
    criar_widget("Vendas por mês", "sum", "preco", "Total de Vendas (€)", row=0, col=0)
    criar_widget("Margem por mês", "sum", "margem", "Total de Margem (€)", row=0, col=1)

    # Vendas por morada
    fig3, ax3 = plt.subplots(figsize=(5, 3))
    morada_grp = df.groupby("morada")["preco"].sum().sort_values(ascending=False)
    ax3.bar(morada_grp.index, morada_grp.values)
    ax3.set_title("Vendas por país de origem", fontsize=12)
    ax3.set_xlabel("País", fontsize=10)
    ax3.set_ylabel("Vendas (em M€)", fontsize=10)
    ax3.tick_params(axis="x", rotation=45)
    ax3.grid(True)
    figures.append(fig3)
    f3 = tk.Frame(frame_grelha, bg="white")
    c3 = FigureCanvasTkAgg(fig3, master=f3)
    c3.draw(); c3.get_tk_widget().pack(fill=tk.BOTH, expand=True)
    f3.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    # Tabela
    ft = tk.Frame(frame_grelha, bg="white")
    ft.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")
    tabela = ttk.Treeview(ft, show="headings")
    tabela["columns"] = list(df.columns)
    for col in df.columns:
        tabela.heading(col, text=col)
        tabela.column(col, width=100, anchor="center")
    for _, row in df.sort_values("preco", ascending=False).iterrows():
        tabela.insert("", tk.END, values=list(row))
    tabela.pack(fill=tk.BOTH, expand=True)

    # Cards à direita
    fc = tk.Frame(frame_grelha, bg="white")
    fc.grid(row=0, column=2, rowspan=2, padx=10, pady=10, sticky="n")
    totais = df.groupby("nome_utilizador")[["preco", "margem"]].sum()
    for op in (operadores or totais.index):
        if op in totais.index:
            v = totais.loc[op, "preco"]
            m = totais.loc[op, "margem"]
            card = tk.Label(
                fc,
                text=f"{op}\nVendas: {v:.2f} €\nMargem: {m:.2f} €",
                font=("Arial", 11),
                bg="#e0f7fa",
                bd=1,
                relief=tk.SOLID,
                width=28,
                height=6,
                justify=tk.LEFT,
                anchor="w",
                padx=10
            )
            card.pack(pady=5, fill=tk.X)

    # Análise textual
    analise = gerar_analise_textual(df)
    fa = tk.LabelFrame(frame_resultados, text="Análise de Dados", bg="white")
    fa.pack(padx=20, pady=10, fill=tk.BOTH, expand=True)
    text = tk.Text(fa, height=10, wrap="word", bg="white", font=("Arial", 11), relief=tk.FLAT)
    text.insert("1.0", analise)
    text.configure(state="disabled")
    text.pack(padx=10, pady=5, fill=tk.BOTH, expand=True)

    return df, figures, analise
