Quando('enviar um GET para a API Planets') do
  @response = @app.valor.get_planets
end

Quando('passo um valor aleatorio') do
  count = @app.commons.random_count(@response['count'])
  puts count
end

Entao('valido o statuscode e a mensagem exibida da resposta da requisicao') do
  expect(@response.code).to eq 200
  expect(@response['count']).not_to be_nil
end
