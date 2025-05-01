import tkinter as tk
from tkinter import ttk
import pandas as pd
from tkcalendar import DateEntry
from app.database import obter_conexao
from app.dashboard_widgets import abrir_dashboard_widgets

def abrir_avancado():
    """Abre o dashboard avançado com seleção de datas e operadores."""
    from app.charts import mostrar_grafico_vendas

    win = tk.Tk()
    win.title("Dashboard Avançado")
    win.geometry("1000x700")
    win.configure(bg="#f2f2f2")

    filtros_frame = tk.Frame(win, bg="#f2f2f2")
    filtros_frame.pack(pady=10)

    # Calendários
    tk.Label(filtros_frame, text="Data Inicial:", bg="#f2f2f2").grid(row=0, column=0)
    date_inicio = DateEntry(filtros_frame, date_pattern='yyyy-mm-dd')
    date_inicio.grid(row=0, column=1, padx=5)

    tk.Label(filtros_frame, text="Data Final:", bg="#f2f2f2").grid(row=0, column=2)
    date_fim = DateEntry(filtros_frame, date_pattern='yyyy-mm-dd')
    date_fim.grid(row=0, column=3, padx=5)

    # Lista de operadores
    tk.Label(filtros_frame, text="Operadores:", bg="#f2f2f2").grid(row=1, column=0, sticky='nw')
    operadores_box = tk.Listbox(filtros_frame, selectmode=tk.MULTIPLE, height=6, exportselection=0)
    operadores_box.grid(row=1, column=1, columnspan=3, sticky='we', padx=5, pady=5)

    # Carregar nomes dos operadores
    con = obter_conexao()
    operadores_df = pd.read_sql("SELECT nome_utilizador FROM operadores", con)
    con.close()
    for nome in operadores_df["nome_utilizador"]:
        operadores_box.insert(tk.END, nome)

    # Frame dos widgets
    conteudo_frame = tk.Frame(win, bg="#f2f2f2")
    conteudo_frame.pack(fill=tk.BOTH, expand=True)

    def atualizar_dashboard(*args):
        """Atualiza os widgets conforme seleção."""
        operadores_selecionados = [operadores_box.get(i) for i in operadores_box.curselection()]
        if not operadores_selecionados:
            return
        data_ini = date_inicio.get_date().strftime("%Y-%m-%d")
        data_fim = date_fim.get_date().strftime("%Y-%m-%d")

        # Limpar widgets antigos
        for widget in conteudo_frame.winfo_children():
            widget.destroy()

        abrir_dashboard_widgets(data_ini, data_fim, operadores_selecionados, conteudo_frame)

    # Eventos automáticos
    date_inicio.bind("<<DateEntrySelected>>", lambda e: atualizar_dashboard())
    date_fim.bind("<<DateEntrySelected>>", lambda e: atualizar_dashboard())
    operadores_box.bind("<<ListboxSelect>>", lambda e: atualizar_dashboard())

    # Primeira atualização automática
    atualizar_dashboard()
