Quando('acesso a pagina de login') do
  visit 'https://pejota.neon.com.br/login'
end

E('preenchendo dados incorretos') do
  @app.negativo.fill_email
end

Entao('verifico se o servico de email esta funcionando corretamente') do
  @app.negativo.visible_bullet
end
