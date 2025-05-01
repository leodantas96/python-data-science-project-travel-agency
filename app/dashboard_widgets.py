import tkinter as tk
from tkinter import ttk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import matplotlib.pyplot as plt
import pandas as pd
from app.database import obter_conexao


def abrir_dashboard_widgets(data_ini, data_fim, operadores, frame_resultados):
    """Cria os widgets analíticos com base nas datas e operadores selecionados."""

    # Limpa widgets anteriores
    for widget in frame_resultados.winfo_children():
        widget.destroy()

    if not operadores:
        return

    operadores_str = "', '".join(operadores)
    query = f"""
        SELECT r.data_abertura, r.preco, r.margem, c.morada, o.nome_utilizador
        FROM reservas r
        INNER JOIN operadores o ON r.id_operador = o.id_operador
        INNER JOIN clientes c ON r.id_cliente = c.id_cliente
        WHERE r.data_abertura BETWEEN %s AND %s
        AND o.nome_utilizador IN ('{operadores_str}')
    """

    conexao = obter_conexao()
    df = pd.read_sql(query, conexao, params=(data_ini, data_fim))
    conexao.close()

    if df.empty:
        tk.Label(frame_resultados, text="Sem dados para este intervalo.", bg="white").pack()
        return

    df["data_abertura"] = pd.to_datetime(df["data_abertura"])

    def criar_widget(titulo, agrupador, valor_col, y_label, parent, tipo='line'):
        fig, ax = plt.subplots(figsize=(5, 3.5))

        if len(operadores) > 1:
            for op in operadores:
                sub_df = df[df["nome_utilizador"] == op].copy()
                sub_df.set_index("data_abertura", inplace=True)
                agrupado = getattr(sub_df.resample("D"), agrupador)()[valor_col]
                agrupado = agrupado[agrupado != 0]  # Filtra valores zero

                ax.plot(agrupado.index, agrupado.values, marker='o', label=op)
            ax.legend()
        else:
            df_temp = df.copy()
            df_temp.set_index("data_abertura", inplace=True)
            agrupado = getattr(df_temp.resample("D"), agrupador)()[valor_col]
            agrupado = agrupado[agrupado != 0]
            ax.plot(agrupado.index, agrupado.values, marker='o')

        ax.set_title(titulo)
        ax.set_xlabel("Data")
        ax.set_ylabel(y_label)
        ax.grid(True)

        canvas = FigureCanvasTkAgg(fig, master=parent)
        canvas.draw()
        canvas.get_tk_widget().pack(padx=10, pady=10, fill=tk.BOTH, expand=True)

    # Criar frame com 2 colunas
    linha = tk.Frame(frame_resultados, bg="white")
    linha.pack(fill=tk.BOTH, expand=True)

    col1 = tk.Frame(linha, bg="white")
    col1.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    col2 = tk.Frame(linha, bg="white")
    col2.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    # Widget 1: Vendas ao longo do tempo (coluna 1)
    criar_widget("Vendas ao longo do tempo", "sum", "preco", "Total de Vendas (€)", col1)

    # Widget 2: Margem ao longo do tempo (coluna 2)
    criar_widget("Margem ao longo do tempo", "sum", "margem", "Total de Margem (€)", col2)

    # Widget 3: Vendas por morada de cliente (gráfico de barras, coluna 1)
    fig2, ax2 = plt.subplots(figsize=(5, 3.5))
    df_grouped = df.groupby("morada")["preco"].sum().sort_values(ascending=False)
    ax2.bar(df_grouped.index, df_grouped.values)
    ax2.set_title("Vendas por morada de cliente")
    ax2.set_xlabel("Morada")
    ax2.set_ylabel("Total de Vendas (€)")
    plt.xticks(rotation=45, ha="right")
    ax2.grid(True)
    canvas2 = FigureCanvasTkAgg(fig2, master=col1)
    canvas2.draw()
    canvas2.get_tk_widget().pack(padx=10, pady=10, fill=tk.BOTH, expand=True)

    # Widget 4: Cards de resumo por colaborador (abaixo dos gráficos)
    frame_cards = tk.Frame(frame_resultados, bg="white")
    frame_cards.pack(fill=tk.BOTH, padx=10, pady=10)

    totais = df.groupby("nome_utilizador")[["preco", "margem"]].sum()

    for operador in operadores:
        if operador in totais.index:
            vendas = totais.loc[operador, "preco"]
            margem = totais.loc[operador, "margem"]
            card = tk.Label(
                frame_cards,
                text=f"{operador}\nVendas: {vendas:.2f} €\nMargem: {margem:.2f} €",
                font=("Arial", 12),
                bg="#e0f7fa",
                bd=1,
                relief=tk.SOLID,
                width=30,
                height=4,
                justify=tk.LEFT,
                anchor="w",
                padx=10
            )
            card.pack(side=tk.LEFT, padx=10)

    # Widget 5: Tabela com os dados agregados
    frame_tabela = tk.Frame(col2, bg="white")
    frame_tabela.pack(fill=tk.BOTH, padx=10, pady=10, expand=True)

    tabela = ttk.Treeview(frame_tabela)
    tabela["columns"] = list(df.columns)
    tabela["show"] = "headings"

    # Define os cabeçalhos
    for col in df.columns:
        tabela.heading(col, text=col)
        tabela.column(col, width=100, anchor="center")

    # Ordena por vendas (preco) em ordem decrescente
    df_ordenado = df.sort_values(by="preco", ascending=False)

    # Insere os dados ordenados
    for _, row in df_ordenado.iterrows():
        tabela.insert("", tk.END, values=list(row))

    tabela.pack(side=tk.TOP, fill=tk.BOTH, expand=True)
