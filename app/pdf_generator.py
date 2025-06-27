""""Geração de relatórios PDF a partir dos dados e gráficos do dashboard.
Este módulo permite exportar os resultados e análises para ficheiros PDF.
"""

import tempfile
import os
import datetime
import matplotlib.pyplot as plt
import pandas as pd
from fpdf import FPDF
from matplotlib.figure import Figure


def _exportar_grafico_para_pdf(pdf, figures, temp_files):
    """Exporta cada figura para PNG e adiciona ao PDF, uma por página."""
    for fig in figures:
        with tempfile.NamedTemporaryFile(delete=False, suffix=".png") as tmpfile:
            fig.set_size_inches(7, 5)
            fig.savefig(tmpfile.name, dpi=200, bbox_inches='tight')
            plt.close(fig)
            temp_files.append(tmpfile.name)
            pdf.add_page()
            pdf.image(tmpfile.name, x=10, y=20, w=190)


def _exportar_tabela_para_pdf(pdf, df, temp_files, rows_per_page=35):
    """Exporta a tabela (DataFrame) com paginação, várias páginas se necessário."""
    total_pages = (len(df) // rows_per_page) + int(len(df) % rows_per_page > 0)
    for page in range(total_pages):
        start_row = page * rows_per_page
        end_row = min((page + 1) * rows_per_page, len(df))
        df_chunk = df.iloc[start_row:end_row]

        with tempfile.NamedTemporaryFile(delete=False, suffix=".png") as tmp_table:
            fig, ax = plt.subplots(figsize=(10, 0.5 * len(df_chunk) + 1))
            ax.axis('tight')
            ax.axis('off')
            table = ax.table(
                cellText=df_chunk.values,
                colLabels=df_chunk.columns,
                loc='center',
                cellLoc='center'
            )
            table.auto_set_font_size(False)
            table.set_fontsize(8)
            fig.tight_layout()
            fig.savefig(tmp_table.name, dpi=200, bbox_inches='tight')
            plt.close(fig)
            temp_files.append(tmp_table.name)

            pdf.add_page()
            pdf.image(tmp_table.name, x=10, y=10, w=190)


def _adicionar_analise_textual(pdf, analise_texto):
    """Adiciona uma página com a análise textual ao PDF."""
    pdf.add_page()
    pdf.set_font("Arial", size=12)
    pdf.multi_cell(0, 10, "Análise de Dados", align='L')
    pdf.ln()
    pdf.set_font("Arial", size=11)
    analise_texto = analise_texto.replace("€", "EUR")
    for linha in analise_texto.split("\n"):
        pdf.multi_cell(0, 10, linha)


def gerar_pdf_com_widgets(df: pd.DataFrame, figures: list[Figure], analise_texto: str):
    """
    Gera um PDF com:
    - 1 página por gráfico (figures)
    - Várias páginas com a tabela (paginação automática)
    - 1 página com a análise textual
    """
    pdf = FPDF()
    temp_files = []

    try:
        _exportar_grafico_para_pdf(pdf, figures, temp_files)
        _exportar_tabela_para_pdf(pdf, df, temp_files, rows_per_page=35)
        _adicionar_analise_textual(pdf, analise_texto)

        nome_pdf = (
            f"relatorio_dashboard_{datetime.datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
        )
        pdf.output(nome_pdf)
        print(f"PDF gerado: {nome_pdf}")

    finally:
        for f in temp_files:
            if os.path.exists(f):
                os.remove(f)
