# 📊 Agência de Viagens – Dashboard Analítico

Projeto desenvolvido em Python com interface gráfica `Tkinter`, ligação a base de dados `MariaDB`, e visualização de dados com `matplotlib`. Permite aos utilizadores analisarem vendas, margem e outros indicadores por operador, destino e morada de cliente.

---

## 🔧 Funcionalidades

- Login por operador
- Análise de vendas por:
  - Vendas mensais por operador
  - Margem mensal por operador
  - Vendas por morada de cliente
- Cards resumo com total de vendas e margem por colaborador
- Tabela interativa com todos os dados filtrados
- Destaque nos gráficos ao selecionar linhas da tabela
- Atualização automática conforme datas e operadores escolhidos

---

## 📁 Estrutura do Projeto

projeto_agencia_viagens/ │ 
├── app/ │ 
    ├── charts.py │ 
    ├── dashboard.py │ 
    ├── dashboard_widgets.py │ 
    ├── database.py │ 
    ├── gui.py │ 
    ├── login.py │ 
├── tests/ 
    │ └── ... testes unitários │ 
└── main.py # ▶️ Ponto de entrada

---

## 💾 Requisitos

- Python 3.8+
- MariaDB ou MySQL
- Pacotes Python:
  - `pymysql`
  - `tkinter`
  - `tkcalendar`
  - `matplotlib`
  - `pandas`
