"""Módulo para criar a conexão à base de dados"""

import configparser
import pymysql

def obter_conexao():
    """Abre a ligação à base de dados e devolve o objeto de conexão."""
    config = configparser.ConfigParser()
    config.read("data/config.ini")

    return pymysql.connect(
        host=config["database"]["host"],
        user=config["database"]["user"],
        password=config["database"]["password"],
        database=config["database"]["database"],
    )
