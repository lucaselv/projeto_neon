Quando("acesso a pagina de login") do
    visit 'https://pejota.neon.com.br/login'
end

E('preenchendo dados incorretos')do
    @app.neagtivo.fill_email
end
  
Entao("verifico se o servico esta funcionando corretamente") do
    @app.neagtivo.visible_bullet
end