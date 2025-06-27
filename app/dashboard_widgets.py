""""Widgets e componentes analíticos para o dashboard principal da aplicação.
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


def obter_dados(data_ini, data_fim, operadores):
    """Consulta dados principais e período homólogo da BD."""
    conn = obter_conexao()
    placeholders = ", ".join(["%s"] * len(operadores))
    cond_op = f"AND o.nome_utilizador IN ({placeholders})" if operadores else ""
    params = [data_ini, data_fim] + operadores if operadores else [data_ini, data_fim]
    sql_main = (
        "SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador "
        "FROM reservas r "
        "JOIN operadores o ON r.id_operador = o.id_operador "
        "JOIN clientes c  ON r.id_cliente  = c.id_cliente "
        "WHERE r.data_abertura BETWEEN %s AND %s "
        f"{cond_op}"
    )
    df = pd.read_sql(sql_main, conn, params=params)

    dt_ini = pd.to_datetime(data_ini)
    dt_fim = pd.to_datetime(data_fim)
    periodo = dt_fim - dt_ini
    prev_ini = (dt_ini - periodo).strftime("%Y-%m-%d")
    prev_fim = (dt_fim - periodo).strftime("%Y-%m-%d")
    params_prev = [prev_ini, prev_fim] + operadores if operadores else [prev_ini, prev_fim]
    sql_prev = (
        "SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador "
        "FROM reservas r "
        "JOIN operadores o ON r.id_operador = o.id_operador "
        "JOIN clientes c  ON r.id_cliente  = c.id_cliente "
        "WHERE r.data_abertura BETWEEN %s AND %s "
        f"{cond_op}"
    )
    df_prev = pd.read_sql(sql_prev, conn, params=params_prev)
    conn.close()
    return df, df_prev


def mostrar_msg_sem_dados(frame_resultados):
    """Mostra mensagem de ausência de dados."""
    tk.Label(
        frame_resultados,
        text="Sem dados para este intervalo.",
        font=("Arial", 12),
        background="white"
    ).pack(pady=20, fill=tk.X)


def criar_grelha(frame_resultados):
    """Cria frame de grelha para os widgets."""
    frame_grelha = ttk.Frame(frame_resultados)
    frame_grelha.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
    for _ in range(3):
        frame_grelha.rowconfigure(_, weight=1)
    for _ in range(2):
        frame_grelha.columnconfigure(_, weight=1)
    return frame_grelha

# pylint: disable=too-many-arguments, too-many-positional-arguments
def criar_widget_grafico(
    df, operadores, titulo, valor_col, row, col, frame_grelha, figures, agg
):
    """Cria um widget de gráfico para o dashboard."""
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
    FigureCanvasTkAgg(fig, master=cont).get_tk_widget().pack(
        fill=tk.BOTH, expand=True
    )
    cont.grid(row=row, column=col, padx=10, pady=10, sticky="nsew")
# pylint: enable=too-many-arguments, too-many-positional-arguments


def criar_grafico_morada(df, frame_grelha, figures):
    """Cria gráfico de vendas por morada."""
    fig, ax = plt.subplots(figsize=(5, 3))
    grp = df.groupby("morada")["preco"].sum().sort_values(ascending=False)
    ax.bar(grp.index, grp.values)
    ax.set_title("Vendas por morada de cliente", fontsize=12)
    ax.set_xlabel("Morada", fontsize=10)
    ax.set_ylabel("Vendas (€)", fontsize=10)
    ax.tick_params(axis="x", rotation=45)
    ax.grid(True)
    figures.append(fig)
    c = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig, master=c).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

# pylint: disable=too-many-locals
def criar_grafico_mm3(df, frame_grelha, figures):
    """Cria gráfico de média móvel 3 meses."""
    fig, ax = plt.subplots(figsize=(5, 3))
    vm = df.set_index("data_abertura")["preco"].resample("ME").sum()
    mm3 = vm.rolling(3).mean()
    ax.plot(vm.index, vm.values, marker="o", label="Vendas")
    ax.plot(mm3.index, mm3.values, linestyle="--", marker="o", label="MM 3M")
    ax.set_title("Média Móvel 3M de Vendas", fontsize=12)
    ax.set_xlabel("Data", fontsize=10)
    ax.set_ylabel("Vendas (€)", fontsize=10)
    ax.grid(True)
    ax.legend()
    figures.append(fig)
    c = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig, master=c).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c.grid(row=2, column=0, padx=10, pady=10, sticky="nsew")
# pylint: enable=too-many-locals

def criar_grafico_preco_tendencia(df, frame_grelha, figures):
    """Cria gráfico de preço médio mensal e tendência."""
    fig, ax = plt.subplots(figsize=(5, 3))
    pm = df.set_index("data_abertura")["preco"].resample("ME").mean()
    ax.plot(pm.index, pm.values, marker="o", label="Preço Médio")
    x = pm.index.map(pd.Timestamp.timestamp)
    slope, intercept, *_ = linregress(x, pm.values)
    ax.plot(
        pm.index,
        intercept + slope * x,
        linestyle="--",
        label="Tendência"
    )
    ax.set_title("Preço Médio Mensal e Tendência", fontsize=12)
    ax.set_xlabel("Data", fontsize=10)
    ax.set_ylabel("Preço Médio (€)", fontsize=10)
    ax.grid(True)
    ax.legend()
    figures.append(fig)
    c = ttk.Frame(frame_grelha)
    FigureCanvasTkAgg(fig, master=c).get_tk_widget().pack(fill=tk.BOTH, expand=True)
    c.grid(row=2, column=1, padx=10, pady=10, sticky="nsew")


def criar_tabela(df, frame_grelha):
    """Cria tabela de dados ordenada por vendas decrescentes."""
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


def criar_cards_resumo(df, operadores, frame_grelha):
    """Cria cards de resumo de vendas e margem por colaborador."""
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


def criar_widget_analise(frame_resultados, analise):
    """Cria widget textual de análise de dados."""
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


def gerar_analise_textual(df, df_prev, operadores):
    """Gera texto de análise estatística e comparação com período homólogo."""
    total_v = df["preco"].sum()
    total_m = df["margem"].sum()
    med_m = df["margem"].mean()
    melhor_d = (
        df.groupby("data_abertura")["preco"].sum().idxmax().strftime("%Y-%m-%d")
    )
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

# pylint: disable=too-many-locals
def abrir_dashboard_widgets(data_ini: str, data_fim: str, operadores: list[str], frame_resultados):
    """
    Cria os widgets analíticos a partir de dados da BD, retorna (df, figures, analise_texto).
    """
    for w in frame_resultados.winfo_children():
        w.destroy()
    if not operadores:
        return None, [], ""
    df, df_prev = obter_dados(data_ini, data_fim, operadores)
    if df.empty:
        mostrar_msg_sem_dados(frame_resultados)
        return None, [], ""
    df["data_abertura"] = pd.to_datetime(df["data_abertura"])
    df_prev["data_abertura"] = pd.to_datetime(df_prev["data_abertura"])
    frame_grelha = criar_grelha(frame_resultados)
    figures: list[plt.Figure] = []
    criar_widget_grafico(
        df, operadores, "Vendas por mês", "preco", 0, 0, frame_grelha, figures, agg=lambda x: x.sum()
    )
    criar_widget_grafico(
        df, operadores, "Margem por mês", "margem", 0, 1, frame_grelha, figures, agg=lambda x: x.sum()
    )
    criar_grafico_morada(df, frame_grelha, figures)
    criar_grafico_mm3(df, frame_grelha, figures)
    criar_grafico_preco_tendencia(df, frame_grelha, figures)
    criar_tabela(df, frame_grelha)
    criar_cards_resumo(df, operadores, frame_grelha)
    analise = gerar_analise_textual(df, df_prev, operadores)
    criar_widget_analise(frame_resultados, analise)
    return df, figures, analise
# pylint: enable=too-many-locals
