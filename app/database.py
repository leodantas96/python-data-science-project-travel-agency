"""Módulo para criar a conexão à base de dados"""

import configparser
import pymysql

def obter_conexao():
    config = configparser.ConfigParser()
    config.read("config.ini")

    return pymysql.connect(
        host=config["database"]["host"],
        user=config["database"]["user"],
        password=config["database"]["password"],
        database=config["database"]["database"],
    )
