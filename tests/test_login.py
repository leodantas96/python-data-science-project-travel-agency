"""Testes para o módulo de login."""
import unittest
from app.login import validar_login

class TestLogin(unittest.TestCase):
    """Testes da função de validação de login."""

    def test_login_valido(self):
        """Teste com utilizador válido."""
        self.assertTrue(validar_login("afonso.m", "afonso.m"))

    def test_login_invalido(self):
        """Teste com utilizador inválido."""
        self.assertFalse(validar_login("utilizador_inexistente", "senha_errada"))
