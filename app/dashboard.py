"""Módulo para criar a interface do Dashboard Avançado com filtros de data e operadores"""

import tkinter as tk
import pandas as pd
from tkinter import messagebox
from tkcalendar import DateEntry

from app.dashboard_widgets import abrir_dashboard_widgets
from app.pdf_generator    import gerar_pdf_com_widgets

# Estado atual do dashboard
estado_atual = {
    "data_ini": None,
    "data_fim": None,
    "operadores": [],
    "df": None,
    "figures": [],
    "analise": ""
}


def abrir_avancado():
    win = tk.Tk()
    win.title("Dashboard Avançado")
    win.geometry("1000x700")
    win.configure(bg="#f2f2f2")

    filtros_frame = tk.Frame(win, bg="#f2f2f2")
    filtros_frame.pack(pady=10)

    # Data Inicial
    tk.Label(filtros_frame, text="Data Inicial:", bg="#f2f2f2")\
        .grid(row=0, column=0)
    date_inicio = DateEntry(filtros_frame, date_pattern="yyyy-mm-dd")
    date_inicio.grid(row=0, column=1, padx=5)

    # Data Final
    tk.Label(filtros_frame, text="Data Final:", bg="#f2f2f2")\
        .grid(row=0, column=2)
    date_fim = DateEntry(filtros_frame, date_pattern="yyyy-mm-dd")
    date_fim.grid(row=0, column=3, padx=5)

    # Operadores
    tk.Label(filtros_frame, text="Operadores:", bg="#f2f2f2")\
        .grid(row=1, column=0, sticky="nw")
    operadores_box = tk.Listbox(
        filtros_frame, selectmode=tk.MULTIPLE, height=6, exportselection=0
    )
    operadores_box.grid(row=1, column=1, columnspan=3,
                        sticky="we", padx=5, pady=5)

    # Carregar nomes dos operadores
    from app.database import obter_conexao
    con = obter_conexao()
    operadores_df = pd.read_sql("SELECT nome_utilizador FROM operadores", con)
    con.close()
    for nome in operadores_df["nome_utilizador"]:
        operadores_box.insert(tk.END, nome)

    # Frame de conteúdo
    conteudo_frame = tk.Frame(win, bg="#f2f2f2")
    conteudo_frame.pack(fill=tk.BOTH, expand=True)

    def atualizar_dashboard():
        data_ini = date_inicio.get_date().strftime("%Y-%m-%d")
        data_fim = date_fim.get_date().strftime("%Y-%m-%d")
        selecionados = operadores_box.curselection()
        operadores = [operadores_box.get(i) for i in selecionados]

        # Limpa e renderiza
        for w in conteudo_frame.winfo_children():
            w.destroy()

        df, figures, analise = abrir_dashboard_widgets(
            data_ini, data_fim, operadores, conteudo_frame
        )
        if df is None:
            estado_atual["df"] = None
            estado_atual["figures"] = []
            estado_atual["analise"] = ""
            botao_pdf.config(state=tk.DISABLED)
            return

        # Guarda estado
        estado_atual.update({
            "data_ini": data_ini,
            "data_fim": data_fim,
            "operadores": operadores,
            "df": df,
            "figures": figures,
            "analise": analise
        })

        # Ativa exportação
        botao_pdf.config(state=tk.NORMAL)

    def exportar_pdf():
        """Gera o PDF com base nos dados atuais."""
        df = estado_atual["df"]
        figs = estado_atual["figures"]

        # testa se há DataFrame válido e figuras
        if df is None or df.empty or not figs:
            messagebox.showwarning(
                "Aviso",
                "Ainda não há dados carregados para exportar."
            )
            return

        gerar_pdf_com_widgets(
            df=df,
            figures=figs,
            analise_texto=estado_atual["analise"]
        )

    # Botões
    botao_pdf = tk.Button(
        filtros_frame,
        text="Exportar PDF",
        bg="#2196f3", fg="white",
        font=("Arial", 10, "bold"),
        command=exportar_pdf,
        state=tk.DISABLED
    )
    botao_pdf.grid(row=2, column=0, columnspan=2, pady=10)

    botao_carregar = tk.Button(
        filtros_frame,
        text="Aplicar filtros",
        bg="#4caf50", fg="white",
        font=("Arial", 10, "bold"),
        command=atualizar_dashboard
    )
    botao_carregar.grid(row=2, column=2, columnspan=2, pady=10)

    # O utilizador escolhe filtros e clica em “Aplicar filtros”
