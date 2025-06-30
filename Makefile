# Makefile para projeto de análise de vendas - Agência de Viagens

# Caminhos
PYTHON := py
PIP    := py -m pip

# Variáveis de ambiente
VENV_DIR := .venv

.PHONY: all help venv install run coverage htmlcov pylint test clean pip-upgrade freeze

all: help

help:
	@echo "Comandos disponiveis:"
	@echo "  make venv           - Cria ambiente virtual (.venv/)"
	@echo "  make install        - Instala dependencias do requirements.txt"
	@echo "  make run            - Executa a aplicacao principal"
	@echo "  make coverage       - Mostra cobertura de testes no terminal"
	@echo "  make htmlcov        - Gera relatorio HTML de cobertura"
	@echo "  make pylint         - Verifica qualidade do codigo com pylint"
	@echo "  make test           - Executa os testes unitarios"
	@echo "  make clean          - Limpa ficheiros temporarios e __pycache__"
	@echo "  make pip-upgrade    - Atualiza pip"
	@echo "  make freeze         - Atualiza requirements.txt com pacotes instalados"

venv:
	@if not exist "$(VENV_DIR)" $(PYTHON) -m venv $(VENV_DIR)
	@echo "Ambiente virtual pronto."
	@echo "  No Linux/macOS: source $(VENV_DIR)/bin/activate"
	@echo "  No Windows:     $(VENV_DIR)\Scripts\activate"

install: venv
	$(PIP) install -r requirements.txt

run: install
	@echo "Certifica-te que tens o venv ATIVADO antes de correr este comando!"
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
	# Limpa ficheiros temporários
	@echo "A apagar __pycache__ e ficheiros .pyc..."
	-find . -type d -name "__pycache__" -exec rm -r {} + 2>/dev/null || true
	-find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@if exist "__pycache__" rd /s /q "__pycache__"
	@if exist "*.pyc" del /s /q *.pyc
	@if exist "htmlcov" rd /s /q "htmlcov"
	@echo "Limpeza concluída."

pip-upgrade:
	$(PYTHON) -m pip install --upgrade pip

freeze:
	$(PIP) freeze > requirements.txt
	@echo "requirements.txt atualizado."
