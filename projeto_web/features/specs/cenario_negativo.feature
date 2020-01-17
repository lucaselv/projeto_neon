#language: pt

@validar_acesso_email
Funcionalidade: Validar acesso de Email
    Eu como automacao quero poder realizar o login
    e poder verificar o incorreto direcionamento

@validar_login_de_email
Cenario: Validacao de Email na pagina de Login
    Quando acesso a pagina de login
    E preenchendo dados incorretos
    Entao verifico se o servico de email esta funcionando corretamente
