#language: pt

@cenario_negativo
Funcionalidade: Validar acesso de Email

Cenario: Validacao de Email na pagina de Login
    Quando acesso a pagina de login
    E preenchendo dados incorretos
    Entao verifico se o servico esta funcionando corretamente
