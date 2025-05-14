import tkinter as tk
from tkinter import ttk, messagebox
from tkcalendar import DateEntry
from app.database import obter_conexao
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg


def mostrar_grafico_vendas():
    """Abre uma janela para seleção de análise de vendas."""

    def gerar_grafico():
        tipo_analise = combo_analise.get()
        data_inicio = date_inicial.get_date().strftime('%Y-%m-%d')
        data_fim = date_final.get_date().strftime('%Y-%m-%d')

        conexao = obter_conexao()
        cursor = conexao.cursor()
        query = (
            "SELECT r.data_abertura, r.preco, r.margem, o.nome_utilizador, d.codigo "
            "FROM reservas r "
            "INNER JOIN operadores o ON r.id_operador = o.id_operador "
            "INNER JOIN destinos d ON r.id_destino = d.id_destino "
            "WHERE r.data_abertura BETWEEN %s AND %s"
        )
        cursor.execute(query, (data_inicio, data_fim))
        resultados = cursor.fetchall()
        conexao.close()

        df = pd.DataFrame(resultados, columns=[
            "data_abertura", "preco", "margem", "nome_utilizador", "codigo"
        ])

        if df.empty:
            messagebox.showinfo("Sem dados", "Não existem vendas neste intervalo.")
            return

        df["data_abertura"] = pd.to_datetime(df["data_abertura"])

        fig, ax = plt.subplots(figsize=(10, 6))

        if tipo_analise == "Vendas ao Longo do Tempo":
            agrupado = df.groupby("data_abertura")["preco"].sum()
            ax.plot(agrupado.index, agrupado.values, marker="o")
            ax.set_title("Vendas ao Longo do Tempo")
            ax.set_ylabel("Total de Vendas (€)")
            ax.set_xlabel("Data")

        elif tipo_analise == "Vendas por Operador":
            agrupado = df.groupby("nome_utilizador")["preco"].sum()
            ax.bar(agrupado.index, agrupado.values)
            ax.set_title("Vendas por Operador")
            ax.set_ylabel("Total de Vendas (€)")
            ax.set_xlabel("Operador")
            plt.xticks(rotation=45, ha="right")

        elif tipo_analise == "Vendas por Destino":
            agrupado = df.groupby("codigo")["preco"].sum()
            ax.bar(agrupado.index, agrupado.values)
            ax.set_title("Vendas por Destino")
            ax.set_ylabel("Total de Vendas (€)")
            ax.set_xlabel("Destino")

        elif tipo_analise == "Margem Total":
            agrupado = df.groupby("data_abertura")["margem"].sum()
            ax.plot(agrupado.index, agrupado.values, marker="o", color="green")
            ax.set_title("Margem Total ao Longo do Tempo")
            ax.set_ylabel("Margem (€)")
            ax.set_xlabel("Data")

        elif tipo_analise == "Vendas Mensais":
            df.set_index("data_abertura", inplace=True)
            agrupado = df["preco"].resample("M").sum()
            ax.plot(agrupado.index, agrupado.values, marker="o")
            ax.set_title("Vendas Mensais")
            ax.set_ylabel("Total de Vendas (€)")
            ax.set_xlabel("Mês")

        else:
            messagebox.showwarning("Selecione", "Escolha um tipo de análise.")
            return

        canvas = FigureCanvasTkAgg(fig, master=janela)
        canvas.draw()
        canvas.get_tk_widget().pack(fill=tk.BOTH, expand=True)

    janela = tk.Toplevel()
    janela.title("Análise de Vendas")
    janela.geometry("950x750")
    janela.configure(bg="#f2f2f2")

    frame_filtros = tk.Frame(janela, bg="#f2f2f2")
    frame_filtros.pack(pady=10)

    tk.Label(frame_filtros, text="Data Inicial:", bg="#f2f2f2").grid(row=0, column=0, padx=5)
    date_inicial = DateEntry(frame_filtros, date_pattern='yyyy-mm-dd')
    date_inicial.grid(row=0, column=1, padx=5)

    tk.Label(frame_filtros, text="Data Final:", bg="#f2f2f2").grid(row=1, column=0, padx=5)
    date_final = DateEntry(frame_filtros, date_pattern='yyyy-mm-dd')
    date_final.grid(row=1, column=1, padx=5)

    tk.Label(frame_filtros, text="Tipo de Análise:", bg="#f2f2f2").grid(row=2, column=0, padx=5)
    combo_analise = ttk.Combobox(frame_filtros, values=[
        "Vendas ao Longo do Tempo",
        "Vendas por Operador",
        "Vendas por Destino",
        "Margem Total",
        "Vendas Mensais"
    ], state="readonly", width=30)
    combo_analise.grid(row=2, column=1, padx=5)

    botao_gerar = ttk.Button(frame_filtros, text="Gerar Gráfico", command=gerar_grafico)
    botao_gerar.grid(row=3, column=0, columnspan=2, pady=10)

    janela.mainloop()

def widget_tabela_resumo(painel, dados):
    """Adiciona um widget tipo tabela com os dados de vendas."""
    frame = ttk.LabelFrame(painel, text="Resumo em Tabela")
    frame.pack(fill='both', expand=True, padx=10, pady=10)

    colunas = ['Colaborador', 'Abertura', 'Venda', 'Custo', 'Margem']
    tabela = ttk.Treeview(frame, columns=colunas, show='headings')

    for col in colunas:
        tabela.heading(col, text=col)
        tabela.column(col, anchor='center', width=100)

    for linha in dados:
        tabela.insert('', tk.END, values=(
            linha['colaborador'],
            linha['abertura'],
            f"{linha['venda']:.2f}",
            f"{linha['custo']:.2f}",
            f"{linha['margem']:.2f}"
        ))

    tabela.pack(fill='both', expand=True)
