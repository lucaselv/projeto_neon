Quando('acesso a pagina de status') do
  visit 'https://www.neon.com.br'
  @app.validacao.click_btn
end

Entao('verifico se o servico esta funcionando corretamente') do
  @app.validacao.hover_element
end
