import tkinter as tk
from tkinter import ttk, messagebox
from tkcalendar import DateEntry
import pandas as pd

from app.dashboard_widgets import abrir_dashboard_widgets
from app.pdf_generator import gerar_pdf_com_widgets
from app.database import obter_conexao


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
    root = tk.Tk()
    root.title("Dashboard Avançado")
    root.geometry("1000x700")

    # Usa tema ttk
    style = ttk.Style(root)
    style.theme_use("clam")

    # ─── Frame de filtros ──────────────────────────────────────────────
    filtros_frame = ttk.Frame(root, padding=(10, 10))
    filtros_frame.pack(fill=tk.X)

    ttk.Label(filtros_frame, text="Data Inicial:") \
        .grid(row=0, column=0, sticky=tk.W, padx=5, pady=2)
    date_inicio = DateEntry(filtros_frame, date_pattern="yyyy-MM-dd")
    date_inicio.grid(row=0, column=1, sticky=tk.W, padx=5, pady=2)

    ttk.Label(filtros_frame, text="Data Final:") \
        .grid(row=0, column=2, sticky=tk.W, padx=5, pady=2)
    date_fim = DateEntry(filtros_frame, date_pattern="yyyy-MM-dd")
    date_fim.grid(row=0, column=3, sticky=tk.W, padx=5, pady=2)

    ttk.Label(filtros_frame, text="Operadores:") \
        .grid(row=1, column=0, sticky=tk.NW, padx=5, pady=2)
    operadores_box = tk.Listbox(filtros_frame, selectmode=tk.MULTIPLE, height=6, exportselection=0)
    operadores_box.grid(row=1, column=1, columnspan=3, sticky=tk.EW, padx=5, pady=2)

    # Popula os operadores
    conn = obter_conexao()
    operadores_df = pd.read_sql("SELECT nome_utilizador FROM operadores", conn)
    conn.close()
    for nome in operadores_df["nome_utilizador"]:
        operadores_box.insert(tk.END, nome)

    # Frame de conteúdo dos widgets
    conteudo_frame = ttk.Frame(root, padding=(10, 10))
    conteudo_frame.pack(fill=tk.BOTH, expand=True)

    def atualizar_dashboard():
        data_ini = date_inicio.get_date().strftime("%Y-%m-%d")
        data_fim = date_fim.get_date().strftime("%Y-%m-%d")
        sel = operadores_box.curselection()
        operadores = [operadores_box.get(i) for i in sel]

        # limpa conteúdo anterior
        for w in conteudo_frame.winfo_children():
            w.destroy()

        # monta widgets e obtém resultados
        df, figures, analise = abrir_dashboard_widgets(
            data_ini, data_fim, operadores, conteudo_frame
        )
        if df is None:
            estado_atual.update(df=None, figures=[], analise="")
            botao_pdf.config(state=tk.DISABLED)
            return

        # guarda estado
        estado_atual.update({
            "data_ini": data_ini,
            "data_fim": data_fim,
            "operadores": operadores,
            "df": df,
            "figures": figures,
            "analise": analise
        })

        botao_pdf.config(state=tk.NORMAL)

    def exportar_pdf():
        df = estado_atual["df"]
        figs = estado_atual["figures"]
        if df is None or df.empty or not figs:
            messagebox.showwarning("Aviso", "Ainda não há dados para exportar.")
            return
        gerar_pdf_com_widgets(df=df, figures=figs, analise_texto=estado_atual["analise"])

    # ─── Botões ───────────────────────────────────────────────────────
    botao_pdf = ttk.Button(filtros_frame, text="Exportar PDF", command=exportar_pdf, state=tk.DISABLED)
    botao_pdf.grid(row=2, column=0, columnspan=2, pady=10, padx=5, sticky=tk.W)

    botao_carregar = ttk.Button(filtros_frame, text="Aplicar filtros", command=atualizar_dashboard)
    botao_carregar.grid(row=2, column=2, columnspan=2, pady=10, padx=5, sticky=tk.E)

    root.mainloop()
