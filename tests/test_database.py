""""Testes para o módulo de base de dados."""
import unittest
from unittest.mock import patch, MagicMock
from app.database import obter_conexao

class TestDatabase(unittest.TestCase):
    """Testes de conexão à base de dados usando mocks."""

    @patch("app.database.pymysql.connect")
    def test_conexao_valida(self, mock_connect):
        """Testa se a conexão é estabelecida com sucesso (usando mock)."""
        # Simula o objeto de conexão
        mock_con = MagicMock()
        mock_connect.return_value = mock_con

        conexao = obter_conexao()
        self.assertIsNotNone(conexao)
        # Verifica se o método connect foi chamado
        mock_connect.assert_called_once()
        conexao.close()
        # Agora verifica se mock_con.close foi chamado!
        mock_con.close.assert_called_once_with()

if __name__ == "__main__":
    unittest.main()
