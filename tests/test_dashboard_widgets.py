import unittest
from unittest.mock import patch, MagicMock
import tkinter as tk
from tkinter import ttk
import pandas as pd
from app.dashboard_widgets import abrir_dashboard_widgets


def encontrar_widget_por_tipo(widget, tipo):
    """Procura recursivamente widgets de determinado tipo dentro do widget dado."""
    encontrados = []
    for filho in widget.winfo_children():
        if isinstance(filho, tipo):
            encontrados.append(filho)
        encontrados.extend(encontrar_widget_por_tipo(filho, tipo))
    return encontrados


class TestDashboardWidgets(unittest.TestCase):
    """Testes para o módulo dashboard_widgets."""

    def setUp(self):
        self.root = tk.Tk()
        self.frame = tk.Frame(self.root)
        self.frame.pack()
        self.data_ini = "2025-01-01"
        self.data_fim = "2025-12-31"
        self.operadores = ["afonso.m"]

    def tearDown(self):
        self.root.destroy()

    @patch("app.dashboard_widgets.obter_conexao")
    @patch("pandas.read_sql")
    def test_widgets_gerados_com_dados(self, mock_read_sql, mock_conexao):
        """Verifica se os widgets são criados corretamente com dados válidos."""
        dados = {
            "data_abertura": pd.date_range("2024-01-01", periods=4, freq="MS"),
            "preco": [300.0, 200.0, 100.0, 50.0],
            "margem": [50.0, 30.0, 20.0, 10.0],
            "morada": ["Rua A", "Rua B", "Rua C", "Rua D"],
            "nome_utilizador": ["afonso.m"] * 4
        }
        df_mock = pd.DataFrame(dados)
        mock_read_sql.return_value = df_mock
        mock_conexao.return_value = MagicMock()

        abrir_dashboard_widgets(self.data_ini, self.data_fim, self.operadores, self.frame)

        # Verifica existência dos widgets esperados
        trees = encontrar_widget_por_tipo(self.frame, ttk.Treeview)
        self.assertGreaterEqual(len(trees), 1, "Deve existir uma tabela Treeview")

        # Verifica ordenação decrescente da tabela pela coluna "preco"
        tree = trees[0]
        valores = [float(tree.item(iid)["values"][2]) for iid in tree.get_children()]
        self.assertEqual(valores, sorted(valores, reverse=True), "A tabela deve estar ordenada por vendas (preco) decrescente")

    @patch("app.dashboard_widgets.obter_conexao")
    @patch("pandas.read_sql")
    def test_sem_dados_exibe_mensagem(self, mock_read_sql, mock_conexao):
        """Verifica se a mensagem 'Sem dados' aparece quando não há dados."""
        mock_read_sql.return_value = pd.DataFrame()
        mock_conexao.return_value = MagicMock()

        abrir_dashboard_widgets(self.data_ini, self.data_fim, self.operadores, self.frame)

        mensagens = encontrar_widget_por_tipo(self.frame, tk.Label)
        textos = [m.cget("text") for m in mensagens]
        self.assertIn("Sem dados para este intervalo.", textos)

    def test_sem_operadores_nao_executa(self):
        """Verifica se não são gerados widgets quando não há operadores."""
        abrir_dashboard_widgets(self.data_ini, self.data_fim, [], self.frame)
        self.assertEqual(len(self.frame.winfo_children()), 0)


if __name__ == "__main__":
    unittest.main()
