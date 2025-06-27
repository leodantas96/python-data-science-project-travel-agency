"""Widgets e componentes analíticos para o dashboard principal da aplicação.
Inclui funções para gerar gráficos, tabelas e análises baseadas nos dados de 
vendas, margens, clientes e operadores.
"""

import tkinter as tk
from tkinter import ttk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import matplotlib.pyplot as plt
import pandas as pd
from scipy.stats import linregress
from app.database import obter_conexao


def abrir_dashboard_widgets(data_ini: str, data_fim: str, operadores: list[str], frame_resultados):
    """
    Cria os widgets analíticos a partir de dados da BD, retorna (df, figures, analise_texto).
    Inclui:
      1) Gráficos de vendas, margem e vendas por morada
      2) Período homólogo na Análise de Dados (feito com consulta separada)
      3) Média móvel 3M de vendas
      4) Evolução do preço médio mensal + linha de tendência
      5) Widget de Análise de Dados
    """

    # limpa todos os widgets anteriores
    for w in frame_resultados.winfo_children():
        w.destroy()

    # ------------------------------------------------------------
    # 1) Se não houver operadores, NÃO cria nenhum widget
    # ------------------------------------------------------------
    if not operadores:
        return None, [], ""

    # ---- abre conexão UMA vez ----
    conn = obter_conexao()

    # monta parâmetros e placeholder para operadores
    if operadores:
        placeholders = ", ".join(["%s"] * len(operadores))
        cond_op     = f"AND o.nome_utilizador IN ({placeholders})"
        params      = [data_ini, data_fim] + operadores
    else:
        cond_op     = ""
        params      = [data_ini, data_fim]

    # 1) consulta principal
    sql_main = f"""
        SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador
        FROM reservas r
        JOIN operadores o ON r.id_operador = o.id_operador
        JOIN clientes c  ON r.id_cliente  = c.id_cliente
        WHERE r.data_abertura BETWEEN %s AND %s
        {cond_op}
    """
    df = pd.read_sql(sql_main, conn, params=params)

    # 2) datas do período homólogo
    dt_ini = pd.to_datetime(data_ini)
    dt_fim = pd.to_datetime(data_fim)
    periodo = dt_fim - dt_ini
    prev_ini = (dt_ini - periodo).strftime("%Y-%m-%d")
    prev_fim = (dt_fim - periodo).strftime("%Y-%m-%d")

    # monta os parâmetros para a query homóloga
    if operadores:
        params_prev = [prev_ini, prev_fim] + operadores
    else:
        params_prev = [prev_ini, prev_fim]

    # 3) consulta o período homólogo
    sql_prev = f"""
        SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador
        FROM reservas r
        JOIN operadores o ON r.id_operador = o.id_operador
        JOIN clientes c  ON r.id_cliente  = c.id_cliente
        WHERE r.data_abertura BETWEEN %s AND %s
        {cond_op}
    """
    df_prev = pd.read_sql(sql_prev, conn, params=params_prev)

    # fecha conexão APÓS as duas queries
    conn.close()

    # ------------------------------------------------------------
    # 2) Se não vier nenhum dado (DataFrame vazio), exibe mensagem
    # ------------------------------------------------------------
    if df.empty:
        tk.Label(
            frame_resultados,
            text="Sem dados para este intervalo.",
            font=("Arial", 12),
            background="white"
        ).pack(pady=20, fill=tk.X)
        return None, [], ""

    # converte coluna de data
    df["data_abertura"] = pd.to_datetime(df["data_abertura"])
    df_prev["data_abertura"] = pd.to_datetime(df_prev["data_abertura"])

    # === 2.1 Análise textual com período homólogo ===
    def gerar_analise_textual():
        total_v = df["preco"].sum()
        total_m = df["margem"].sum()
        med_m   = df["margem"].mean()
        melhor_d = df.groupby("data_abertura")["preco"].sum().idxmax().strftime("%Y-%m-%d")
        melhor_o = df.groupby("nome_utilizador")["preco"].sum().idxmax()

        texto = (
            f"- Total de vendas: {total_v:.2f} EUR\n"
            f"- Total de margem: {total_m:.2f} EUR\n"
            f"- Margem média: {med_m:.2f} EUR\n"
            f"- Melhor dia: {melhor_d}\n"
            f"- Melhor operador: {melhor_o}\n"
        )

        texto += "\nPeríodo homólogo:\n"
        for op in (operadores or df["nome_utilizador"].unique()):
            cv = df.loc[df["nome_utilizador"] == op, "preco"].sum()
            pv = df_prev.loc[df_prev["nome_utilizador"] == op, "preco"].sum()
            cm = df.loc[df["nome_utilizador"] == op, "margem"].sum()
            pm = df_prev.loc[df_prev["nome_utilizador"] == op, "margem"].sum()
            pv_pct = (cv / pv - 1) * 100 if pv else 0
            pm_pct = (cm / pm - 1) * 100 if pm else 0
            texto += (
                f" · {op}: Vendas {cv:.2f} vs {pv:.2f} ({pv_pct:+.1f}%); "
                f"Margem {cm:.2f} vs {pm:.2f} ({pm_pct:+.1f}%)\n"
            )
        return texto

    # container de grid
    frame_grelha = ttk.Frame(frame_resultados)
    frame_grelha.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
    for r in range(3):
        frame_grelha.rowconfigure(r, weight=1)
    for c in range(2):
        frame_grelha.columnconfigure(c, weight=1)

    figures: list[plt.Figure] = []

    # === gráficos helper ===
    def criar_widget(titulo, valor_col, row, col, agg):
        fig, ax = plt.subplots(figsize=(5, 3))
        if operadores:
            for op in operadores:
                s = (
                    df[df["nome_utilizador"] == op]
                    .set_index("data_abertura")[valor_col]
                    .resample("ME")
                    .apply(agg)
                )
                ax.plot(s.index, s.values, marker="o", label=op)
            ax.legend()
        else:
            s = df.set_index("data_abertura")[valor_col].resample("ME").apply(agg)
            ax.plot(s.index, s.values, marker="o")

        ax.set_title(titulo, fontsize=12)
        ax.set_xlabel("Data", fontsize=10)
        ax.set_ylabel(valor_col.capitalize(), fontsize=10)
        ax.tick_params(axis="x", rotation=30)
        ax.grid(True)

        figures.append(fig)
        cont = ttk.Frame(frame_grelha)
        FigureCanvasTkAgg(fig, master=cont).get_tk_widget().pack(fill=tk.BOTH, expand=True)
        cont.grid(row=row, column=col, padx=10, pady=10, sticky="nsew")

    # Gráficos principais
    criar_widget("Vendas por mês", "preco", 0, 0, agg=lambda x: x.sum())
    criar_widget("Margem por mês", "margem", 0, 1, agg=lambda x: x.sum())

    # Vendas por morada
    fig3, ax3 = plt.subplots(figsize=(5, 3))
    grp3 = df.groupby("morada")["preco"].sum().sort_values(ascending=False)
    ax3.bar(grp3.index, grp3.values)
    ax3.set_title("Vendas por morada de cliente", fontsize=12)
    ax3.set_xlabel("Morada", fontsize=10)
    ax3.set_ylabel("Vendas (€)", fontsize=10)
    ax3.tick_params(axis="x", rotation=45)
    ax3.grid(True)
    figures.append(fig3)
    c3 = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig3, master=c3).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c3.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    # Média móvel 3M
    fig4, ax4 = plt.subplots(figsize=(5, 3))
    vm = df.set_index("data_abertura")["preco"].resample("ME").sum()
    mm3 = vm.rolling(3).mean()
    ax4.plot(vm.index, vm.values, marker="o", label="Vendas")
    ax4.plot(mm3.index, mm3.values, linestyle="--", marker="o", label="MM 3M")
    ax4.set_title("Média Móvel 3M de Vendas", fontsize=12)
    ax4.set_xlabel("Data", fontsize=10)
    ax4.set_ylabel("Vendas (€)", fontsize=10)
    ax4.grid(True)
    ax4.legend()
    figures.append(fig4)
    c4 = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig4, master=c4).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c4.grid(row=2, column=0, padx=10, pady=10, sticky="nsew")

    # Preço médio + tendência
    fig5, ax5 = plt.subplots(figsize=(5, 3))
    pm = df.set_index("data_abertura")["preco"].resample("ME").mean()
    ax5.plot(pm.index, pm.values, marker="o", label="Preço Médio")
    x = pm.index.map(pd.Timestamp.timestamp)
    slope, intercept, *_ = linregress(x, pm.values)
    ax5.plot(pm.index, intercept + slope * x, linestyle="--", label="Tendência")
    ax5.set_title("Preço Médio Mensal e Tendência", fontsize=12)
    ax5.set_xlabel("Data", fontsize=10)
    ax5.set_ylabel("Preço Médio (€)", fontsize=10)
    ax5.grid(True)
    ax5.legend()
    figures.append(fig5)
    c5 = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig5, master=c5).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c5.grid(row=2, column=1, padx=10, pady=10, sticky="nsew")

    # Tabela de dados
    ft = ttk.Frame(frame_grelha)
    ft.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")
    tabela = ttk.Treeview(ft, show="headings")
    tabela["columns"] = list(df.columns)
    for col in df.columns:
        tabela.heading(col, text=col)
        tabela.column(col, width=100, anchor="center")
    for _, row in df.sort_values("preco", ascending=False).iterrows():
        tabela.insert("", tk.END, values=list(row))
    tabela.pack(fill=tk.BOTH, expand=True)

    # Cards de resumo
    fc = ttk.Frame(frame_grelha)
    fc.grid(row=0, column=2, rowspan=3, padx=10, pady=10, sticky="n")
    totais = df.groupby("nome_utilizador")[["preco", "margem"]].sum()
    for op in (operadores or totais.index):
        v, m = totais.loc[op]
        tk.Label(
            fc,
            text=f"{op}\nVendas: {v:.2f} €\nMargem: {m:.2f} €",
            background="#e0f7fa",
            font=("Arial", 11),
            anchor="w"
        ).pack(pady=5, fill=tk.X)

    # === widget de Análise de Dados ===
    analise = gerar_analise_textual()
    fa = ttk.LabelFrame(frame_resultados, text="Análise de Dados", padding=10)
    fa.pack(padx=20, pady=10, fill=tk.BOTH, expand=True)
    txt = tk.Text(
        fa,
        height=10,
        wrap="word",
        bg="white",
        font=("Arial", 11),
        relief=tk.FLAT
    )
    txt.insert("1.0", analise)
    txt.configure(state="disabled")
    txt.pack(padx=10, pady=5, fill=tk.BOTH, expand=True)

    return df, figures, analise
