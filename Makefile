# Makefile para projeto de análise de vendas - Agência de Viagens

# Caminhos
PYTHON=python
PIP=pip

# Variáveis de ambiente
VENV_DIR=.venv

# Regras
all: help

help:
	@echo "Comandos disponíveis:"
	@echo "  make venv           - Cria ambiente virtual"
	@echo "  make install        - Instala dependências do requirements.txt"
	@echo "  make run            - Executa a aplicação"
	@echo "  make test           - Executa os testes unitários"
	@echo "  make clean          - Remove arquivos temporários e pycache"

venv:
	$(PYTHON) -m venv $(VENV_DIR)
	@echo "Ambiente virtual criado. Ativa com: source $(VENV_DIR)/Scripts/activate"

install:
	$(PIP) install -r requirements.txt

run:
	$(PYTHON) main.py

test:
	$(PYTHON) -m unittest discover -s tests

clean:
	find . -type d -name "__pycache__" -exec rm -r {} +
	find . -type f -name "*.pyc" -delete
