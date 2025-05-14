"""Testes para o módulo de base de dados."""
import unittest
from app.database import obter_conexao

class TestDatabase(unittest.TestCase):
    """Testes de conexão à base de dados."""

    def test_conexao_valida(self):
        """Testa se a conexão é estabelecida com sucesso."""
        conexao = obter_conexao()
        self.assertIsNotNone(conexao)
        conexao.close()
