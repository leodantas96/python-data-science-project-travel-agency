# Makefile para projeto de análise de vendas - Agência de Viagens

# Caminhos
PYTHON := py
PIP    := py -m pip

# Variáveis de ambiente
VENV_DIR := .venv

.PHONY: all help venv install run coverage htmlcov pylint test clean

# Regras
all: help

help:
	@echo "Comandos disponiveis:"
	@echo "  make venv           - Cria ambiente virtual"
	@echo "  make install        - Instala dependencias do requirements.txt"
	@echo "  make run            - Executa a aplicacao"
	@echo "  make coverage       - Verifica a cobertura do codigo (no terminal)"
	@echo "  make htmlcov        - Gera relatório HTML de cobertura"
	@echo "  make pylint         - Verifica a qualidade do codigo"
	@echo "  make test           - Executa os testes unitarios"
	@echo "  make clean          - Remove arquivos temporarios e pycache"

venv:
	$(PYTHON) -m venv $(VENV_DIR)
	@echo "Ambiente virtual criado."
	@echo "  No Linux/macOS: source $(VENV_DIR)/bin/activate"
	@echo "  No Windows:     $(VENV_DIR)/Scripts/activate"

install: venv
	$(PIP) install -r requirements.txt

run: install
	$(PYTHON) main.py

coverage:
	coverage run -m unittest discover -s tests
	coverage report -m

htmlcov:
	coverage run -m unittest discover -s tests
	coverage html
	@echo "Relatório HTML gerado em htmlcov/index.html"

pylint:
	$(PYTHON) -m pylint app

test:
	$(PYTHON) -m unittest discover -s tests

clean:
	# Linux/macOS
	find . -type d -name "__pycache__" -exec rm -r {} + || true
	find . -type f -name "*.pyc" -delete || true
	# Windows (PowerShell ou CMD)
	@if exist "__pycache__" rd /s /q "__pycache__"
	@if exist "*.pyc" del /s /q *.pyc
