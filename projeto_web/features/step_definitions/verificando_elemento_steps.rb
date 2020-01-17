Quando('clico no botao de perguntas no menu superior') do
  visit 'https://www.neon.com.br'
  @app.vereficando.click_menu
end

Entao('verifico se o texto apareceu na tela com sucesso') do
  @app.vereficando.click_extended
  @app.vereficando.check_answer
end
