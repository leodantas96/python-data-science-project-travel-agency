"""Geração de relatórios PDF a partir dos dados e gráficos do dashboard.
Este módulo permite exportar os resultados e análises para ficheiros PDF.
"""

from fpdf import FPDF
from matplotlib.figure import Figure
import pandas as pd
from PIL import Image
import matplotlib.pyplot as plt
import tempfile
import os
import datetime


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
        # 1. Exportar e inserir gráficos (1 por página)
        for i, fig in enumerate(figures):
            with tempfile.NamedTemporaryFile(delete=False, suffix=".png") as tmpfile:
                fig.set_size_inches(7, 5)  # Aumentar dimensão
                fig.savefig(tmpfile.name, dpi=200, bbox_inches='tight')
                plt.close(fig)  # Limpar para evitar sobreposição
                temp_files.append(tmpfile.name)

                pdf.add_page()
                pdf.image(tmpfile.name, x=10, y=20, w=190)

        # 2. Exportar tabela com paginação (35 linhas por página)
        rows_per_page = 35
        total_pages = (len(df) // rows_per_page) + int(len(df) % rows_per_page > 0)

        for page in range(total_pages):
            start_row = page * rows_per_page
            end_row = min((page + 1) * rows_per_page, len(df))
            df_chunk = df.iloc[start_row:end_row]

            with tempfile.NamedTemporaryFile(delete=False, suffix=".png") as tmp_table:
                fig, ax = plt.subplots(figsize=(10, 0.5 * len(df_chunk) + 1))
                ax.axis('tight')
                ax.axis('off')
                table = ax.table(cellText=df_chunk.values,
                                 colLabels=df_chunk.columns,
                                 loc='center',
                                 cellLoc='center')
                table.auto_set_font_size(False)
                table.set_fontsize(8)
                fig.tight_layout()
                fig.savefig(tmp_table.name, dpi=200, bbox_inches='tight')
                plt.close(fig)
                temp_files.append(tmp_table.name)

                pdf.add_page()
                pdf.image(tmp_table.name, x=10, y=10, w=190)

        # 3. Página com análise textual
        pdf.add_page()
        pdf.set_font("Arial", size=12)
        pdf.multi_cell(0, 10, "Análise de Dados", align='L')
        pdf.ln()
        pdf.set_font("Arial", size=11)
        analise_texto = analise_texto.replace("€", "EUR")
        for linha in analise_texto.split("\n"):
            pdf.multi_cell(0, 10, linha)

        # 4. Guardar PDF
        nome_pdf = f"relatorio_dashboard_{datetime.datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
        pdf.output(nome_pdf)
        print(f"PDF gerado: {nome_pdf}")

    finally:
        # Limpar ficheiros temporários
        for f in temp_files:
            if os.path.exists(f):
                os.remove(f)
