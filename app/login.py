from app.database import obter_conexao
import hashlib

def validar_login(username, password):
    """Valida o login do operador."""
    conexao = obter_conexao()
    cursor = conexao.cursor()
    query = "SELECT nome_utilizador FROM operadores WHERE nome_utilizador = %s"
    cursor.execute(query, (username,))
    resultado = cursor.fetchone()
    conexao.close()
    return resultado is not None and password == username