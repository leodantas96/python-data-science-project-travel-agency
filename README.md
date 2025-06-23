# 📊 Agência de Viagens – Dashboard Analítico

Projeto desenvolvido em Python com interface gráfica `Tkinter`, ligação a base de dados `MariaDB`, e visualização de dados com `matplotlib`.
 Permite aos utilizadores analisarem vendas, margem e outros indicadores por operador, destino e morada de cliente.

---

## 🔧 Funcionalidades

* Login por operador
* Análise de vendas por:
  * Vendas mensais por operador
  * Margem mensal por operador
  * Vendas por morada de cliente
* Cards resumo com total de vendas e margem por colaborador
* Tabela interativa com todos os dados filtrados
* Destaque nos gráficos ao selecionar linhas da tabela
* Atualização automática conforme datas e operadores escolhidos

---

## 📁 Estrutura do Projeto

* projeto_agencia_viagens
  * app
    * __init__.py
    * charts.py
    * dashboard_widgets.py
    * dashboard.py
    * database.py
    * gui.py
    * login.py
    * pdf_generator.py
  * data
    * setup.sql
  * tests
    * __init__.py
    * test_charts.py
    * test_dashboard_widgets.py
    * test_database.py
    * test_login.py
  * .gitignore
  * config.ini
  * main.py
  * Makefile
  * README.md
  * requirements.txt


## 💾 Requisitos
* Python 3.8+
* MariaDB
 - # Intruções de instalação de MariaDB
* Pacotes Python:
  * `pymysql`
  * `tkinter`
  * `tkcalendar`
  * `matplotlib`
  * `pandas`
