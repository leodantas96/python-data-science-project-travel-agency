""""Testes para o módulo de login."""
import unittest
from unittest.mock import patch, MagicMock
from app.login import validar_login

class TestLogin(unittest.TestCase):
    """Testes da função de validação de login."""

    @patch("app.login.obter_conexao")
    def test_login_valido(self, mock_conexao):
        """Teste com utilizador válido usando mock."""
        # Simula o cursor da base de dados a devolver um utilizador válido
        mock_cursor = MagicMock()
        mock_cursor.fetchone.return_value = ("afonso.m",)
        mock_conn = MagicMock()
        mock_conn.cursor.return_value = mock_cursor
        mock_conexao.return_value = mock_conn

        self.assertTrue(validar_login("afonso.m", "afonso.m"))
        mock_conexao.assert_called_once()
        mock_conn.cursor.assert_called_once()
        mock_cursor.execute.assert_called()  # Depende da tua função

    @patch("app.login.obter_conexao")
    def test_login_invalido(self, mock_conexao):
        """Teste com utilizador inválido usando mock."""
        mock_cursor = MagicMock()
        mock_cursor.fetchone.return_value = None  # Não encontra utilizador
        mock_conn = MagicMock()
        mock_conn.cursor.return_value = mock_cursor
        mock_conexao.return_value = mock_conn

        self.assertFalse(validar_login("dummy", "wrong"))
        mock_conexao.assert_called_once()
        mock_conn.cursor.assert_called_once()
        mock_cursor.execute.assert_called()

if __name__ == "__main__":
    unittest.main()
