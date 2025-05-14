"""Testes para o módulo charts."""
import unittest
import tkinter as tk
from app.charts import widget_tabela_resumo

class TestCharts(unittest.TestCase):
    """Testes dos componentes gráficos."""

    def test_widget_tabela_resumo_cria_sem_erro(self):
        """Verifica se o widget de tabela é criado sem lançar exceções."""
        root = tk.Tk()
        root.withdraw()
        try:
            widget_tabela_resumo(root, [
                {"colaborador": "afonso.m", "abertura": "2024-05-01", "venda": 1000, "custo": 700, "margem": 300}
            ])
        except Exception as error:
            self.fail(f"Erro inesperado: {error}")
        finally:
            root.destroy()
