'''Módulo para criar a Graphical User Interface 
para mostrar a janela de Login e a janela com 
o Dashboard avançado e respetivos widgets'''

import tkinter as tk
from tkinter import messagebox
from app.login import validar_login
from app.dashboard import abrir_avancado as abrir_dashboard


def iniciar_login():
    """Inicia a interface gráfica de login."""
    root = tk.Tk()
    root.title("Login - Agência de Viagens")
    root.geometry("300x180")
    root.configure(bg="#f2f2f2")

    tk.Label(root, text="Username:", bg="#f2f2f2").pack(pady=5)
    entry_user = tk.Entry(root)
    entry_user.pack()

    tk.Label(root, text="Password:", bg="#f2f2f2").pack(pady=5)
    entry_pass = tk.Entry(root, show="*")
    entry_pass.pack()

    def login():
        if validar_login(entry_user.get(), entry_pass.get()):
            root.destroy()
            abrir_dashboard()
        else:
            messagebox.showerror("Erro", "Usuário ou senha inválidos.")

    tk.Button(root, text="Login", command=login).pack(pady=10)
    root.mainloop()
