import unittest
import unittest.mock as mock
import tkinter as tk
from tkinter import ttk
import pandas as pd
import matplotlib

# Garante que o Matplotlib use backend 'Agg' (não abre janelas)
matplotlib.use("Agg")

import app.charts as charts


class FakeCursor:
    def __init__(self, rows):
        self._rows = rows

    def execute(self, query, params):
        pass

    def fetchall(self):
        return self._rows


class FakeConnection:
    def __init__(self, rows):
        self._rows = rows

    def cursor(self):
        return FakeCursor(self._rows)

    def close(self):
        pass


def find_widgets_of_type(root_widget, widget_type):
    """
    Busca recursivamente dentro de root_widget todos os widgets que sejam instâncias de widget_type.
    Retorna uma lista com as instâncias encontradas.
    """
    found = []
    for child in root_widget.winfo_children():
        if isinstance(child, widget_type):
            found.append(child)
        found.extend(find_widgets_of_type(child, widget_type))
    return found


class TestCharts(unittest.TestCase):
    def setUp(self):
        # Cria um root invisível para o Tk. 
        # Mesmo em headless, o Tkinter precisa de uma "root" para criar Toplevels.
        self.root = tk.Tk()
        self.root.withdraw()

        # Faz patch em Toplevel.mainloop(), para que chamar mainloop() não bloqueie nada.
        patch_mainloop = mock.patch("tkinter.Toplevel.mainloop", return_value=None)
        self.addCleanup(patch_mainloop.stop)
        patch_mainloop.start()

    def tearDown(self):
        self.root.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_sem_dados_retornam_sem_erros(self, mock_obter_conexao):
        """
        Quando o SELECT retorna lista vazia, o gerar_gráfico deve terminar em
        'if df.empty:' (chama messagebox.showinfo por baixo dos panos) e não deve
        gerar exceção.
        """
        # simula resultado vazio
        mock_obter_conexao.return_value = FakeConnection(rows=[])

        # abre a janela. Ela cria um Toplevel e monta ComboBox + DateEntry + Botão.
        charts.mostrar_grafico_vendas()

        # pega o último Toplevel criado
        janela = self.root.winfo_children()[-1]

        # encontra o combo e as DateEntry para preenchê-los
        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):  # frame_filtros
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        # define datas válidas e tipo de análise (qualquer um — cai no df.empty)
        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-01-31")
        combo.set("Vendas ao Longo do Tempo")

        # encontra o botão “Gerar Gráfico” e invoca, garantindo que não lança erro
        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]
        # não deve levantar exceção, pois df.empty → chame messagebox e retorne
        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Não esperava exceção para df.empty, mas obteve: {e}")

        janela.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_vendas_ao_longo_do_tempo_sem_erro(self, mock_obter_conexao):
        """
        Quando há dados, o branch "Vendas ao Longo do Tempo" deve chegar até criar
        a figura sem levantar exceção.
        """
        # simula três linhas de resultado (data, preço, margem, operador, destino)
        rows = [
            ("2023-01-01", 100.0, 10.0, "user1", "dest1"),
            ("2023-01-15", 150.0, 15.0, "user2", "dest2"),
            ("2023-01-20",  50.0,  5.0, "user1", "dest1"),
        ]
        mock_obter_conexao.return_value = FakeConnection(rows=rows)

        charts.mostrar_grafico_vendas()
        janela = self.root.winfo_children()[-1]

        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-01-31")
        combo.set("Vendas ao Longo do Tempo")

        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]

        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Exceção inesperada ao gerar 'Vendas ao Longo do Tempo': {e}")

        janela.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_vendas_por_operador_sem_erro(self, mock_obter_conexao):
        """
        Quando há dados, o branch "Vendas por Operador" deve chegar até criar
        a figura sem levantar exceção.
        """
        rows = [
            ("2023-01-01", 100.0, 10.0, "userA", "dest1"),
            ("2023-01-02", 200.0, 20.0, "userB", "dest2"),
            ("2023-01-03",  50.0,  5.0, "userA", "dest1"),
        ]
        mock_obter_conexao.return_value = FakeConnection(rows=rows)

        charts.mostrar_grafico_vendas()
        janela = self.root.winfo_children()[-1]

        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-01-31")
        combo.set("Vendas por Operador")

        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]

        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Exceção inesperada ao gerar 'Vendas por Operador': {e}")

        janela.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_vendas_por_destino_sem_erro(self, mock_obter_conexao):
        """
        Quando há dados, o branch "Vendas por Destino" deve chegar até criar
        a figura sem levantar exceção.
        """
        rows = [
            ("2023-01-01", 100.0, 10.0, "userA", "dest1"),
            ("2023-01-02", 200.0, 20.0, "userB", "dest2"),
            ("2023-01-03",  50.0,  5.0, "userA", "dest1"),
        ]
        mock_obter_conexao.return_value = FakeConnection(rows=rows)

        charts.mostrar_grafico_vendas()
        janela = self.root.winfo_children()[-1]

        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-01-31")
        combo.set("Vendas por Destino")

        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]

        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Exceção inesperada ao gerar 'Vendas por Destino': {e}")

        janela.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_margem_total_sem_erro(self, mock_obter_conexao):
        """
        Quando há dados, o branch "Margem Total" deve chegar até criar
        a figura sem levantar exceção.
        """
        rows = [
            ("2023-01-01", 100.0, 10.0, "userA", "dest1"),
            ("2023-01-02", 200.0, 20.0, "userB", "dest2"),
        ]
        mock_obter_conexao.return_value = FakeConnection(rows=rows)

        charts.mostrar_grafico_vendas()
        janela = self.root.winfo_children()[-1]

        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-01-31")
        combo.set("Margem Total")

        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]

        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Exceção inesperada ao gerar 'Margem Total': {e}")

        janela.destroy()

    @mock.patch("app.charts.obter_conexao")
    def test_vendas_mensais_sem_erro(self, mock_obter_conexao):
        """
        Quando há dados, o branch "Vendas Mensais" deve chegar até criar
        a figura sem levantar exceção.
        """
        rows = [
            ("2023-01-01", 100.0, 10.0, "userA", "dest1"),
            ("2023-02-01", 200.0, 20.0, "userB", "dest2"),
            ("2023-02-15",  50.0,  5.0, "userA", "dest1"),
        ]
        mock_obter_conexao.return_value = FakeConnection(rows=rows)

        charts.mostrar_grafico_vendas()
        janela = self.root.winfo_children()[-1]

        combo = None
        date_inicio = None
        date_fim = None
        for child in janela.winfo_children():
            if isinstance(child, tk.Frame):
                for g in child.winfo_children():
                    if isinstance(g, ttk.Combobox):
                        combo = g
                    elif g.__class__.__name__ == "DateEntry":
                        if date_inicio is None:
                            date_inicio = g
                        else:
                            date_fim = g

        date_inicio.set_date("2023-01-01")
        date_fim.set_date("2023-02-28")
        combo.set("Vendas Mensais")

        botoes = find_widgets_of_type(janela, ttk.Button)
        self.assertTrue(botoes, "Esperava encontrar o botão ‘Gerar Gráfico’")
        botao = botoes[0]

        try:
            botao.invoke()
            janela.update_idletasks()
            janela.update()
        except Exception as e:
            self.fail(f"Exceção inesperada ao gerar 'Vendas Mensais': {e}")

        janela.destroy()

    def test_widget_tabela_resumo(self):
        """
        Testa a função widget_tabela_resumo(), garantindo que as colunas e linhas existam.
        """
        pai = tk.Frame(self.root)
        pai.pack()

        dados = [
            {
                "colaborador": "Alice",
                "abertura": "2023-01-01",
                "venda": 100.0,
                "custo":  80.0,
                "margem": 20.0
            },
            {
                "colaborador": "Bob",
                "abertura": "2023-01-02",
                "venda": 200.5,
                "custo":  150.0,
                "margem": 50.5
            }
        ]

        charts.widget_tabela_resumo(pai, dados)

        labelframe = [w for w in pai.winfo_children() if isinstance(w, ttk.LabelFrame)]
        self.assertEqual(len(labelframe), 1)

        tv = None
        for child in labelframe[0].winfo_children():
            if isinstance(child, ttk.Treeview):
                tv = child
        self.assertIsNotNone(tv, "Deveria existir um ttk.Treeview dentro do LabelFrame")

        col_defs = tv["columns"]
        expected_cols = ('Colaborador', 'Abertura', 'Venda', 'Custo', 'Margem')
        self.assertTupleEqual(col_defs, expected_cols)
        self.assertEqual(len(tv.get_children()), 2)

        first_item = tv.get_children()[0]
        values = tv.item(first_item, "values")
        self.assertEqual(values, ("Alice", "2023-01-01", "100.00", "80.00", "20.00"))

        pai.destroy()


if __name__ == "__main__":
    unittest.main()
