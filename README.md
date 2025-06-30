# 📊 Agência de Viagens – Dashboard Analítico

Dashboard interativo desenvolvido em Python para análise de vendas, margens e performance de operadores de uma agência de viagens. Permite filtrar por datas e operadores, analisar vendas por morada e exportar relatórios em PDF.

---

## 🚀 Como começar

* **Clone o repositório**
    * `git clone https://github.com/leodantas96/python-data-science-project-travel-agency.git`
* **Crie e ative o ambiente virtual**
    * `make venv`
    * *Ativar no Windows:* `.venv\Scripts\activate`
    * *Ou no Linux/macOS:* `source .venv/bin/activate`
* **Instale as dependências**
    * `make install`
* **Configure a base de dados**
    * Certifique-se que o MariaDB está instalado e em execução.
    * Importe os dados de exemplo: `mysql -u root -p < data/setup.sql`
* **Execute a aplicação**
    * `make run`

---

## 🔧 Funcionalidades

* **Login por operador**
* **Análise de vendas:**
    * Vendas mensais por operador
    * Margem mensal por operador
    * Vendas por morada de cliente
* **Cards resumo** com total de vendas e margem por colaborador
* **Tabela interativa** com todos os dados filtrados
* **Destaque nos gráficos** ao selecionar linhas da tabela
* **Atualização automática** conforme datas e operadores escolhidos
* **Download de ficheiro PDF** (inclui gráficos, tabela e análise textual)
* **Comparação com período homólogo**

---

## 📁 Estrutura do Projeto

* **projeto_agencia_viagens/**
    * **app/**
        * `__init__.py`
        * `dashboard_widgets.py`
        * `dashboard.py`
        * `database.py`
        * `gui.py`
        * `login.py`
        * `pdf_generator.py`
    * **data/**
        * `setup.sql`
    * **tests/**
        * `__init__.py`
        * `test_dashboard_widgets.py`
        * `test_database.py`
        * `test_login.py`
    * `.gitignore`
    * `config.ini`
    * `main.py`
    * `Makefile`
    * `README.md`
    * `requirements.txt`

---

## 🗂️ Descrição dos principais ficheiros

* **main.py** – Ponto de entrada da aplicação
* **app/gui.py** – Interface gráfica e navegação principal
* **app/dashboard.py** – Lógica do dashboard avançado e filtros
* **app/dashboard_widgets.py** – Geração dos widgets analíticos, gráficos e tabelas
* **app/database.py** – Funções de ligação à base de dados
* **app/login.py** – Validação do login dos operadores
* **app/pdf_generator.py** – Exportação dos relatórios PDF
* **tests/** – Testes unitários de cada módulo

---

## 💾 Requisitos

* **Python 3.8+**
* **MariaDB**
* **Pacotes Python:**
    * `pymysql`
    * `tkinter`
    * `tkcalendar`
    * `matplotlib`
    * `pandas`
    * `scipy`
    * `fpdf`
* Para instalar todas as dependências:  
    * `make install`

---

## 🧪 Testes

* Para executar todos os testes unitários:  
    * `make test`
* Para ver a cobertura de testes:  
    * `make coverage`
* Para gerar relatório HTML da cobertura:  
    * `make htmlcov`
    * Depois abre o ficheiro `htmlcov/index.html` no browser.
* **Nota:**  
    * Todos os testes usam mocks para garantir isolamento da base de dados real.

---

## ℹ️ Notas importantes

* O projeto inclui dados fictícios em `data/setup.sql` para facilitar o arranque.
* O login dos operadores está simplificado para efeito de demonstração (nome de utilizador igual à password).
* A exportação em PDF cria ficheiros no diretório do projeto.
* O projeto foi testado no Windows, mas pode ser adaptado para Linux/macOS.

---

## 📫 Contacto

* Projeto académico desenvolvido para a unidade curricular de Programação IV, no ISTEC.
* Dúvidas ou sugestões: [leonardo.rodrigues@my.istec.pt]

---

## 📝 Licença

* Projeto académico – Uso livre para fins didáticos.
