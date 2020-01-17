Quando('fazer uma requisicao GET para a API films') do
  @response = @app.validar.get_films
end

Entao('valido o status code da requisicao') do
  expect(@response.code).to eq 200
  expect(@response['count']).not_to be_nil

  account = 0
  puts 'LISTA DE FILMES'
  while account < @response['results'].size do
    results = @response['results'][account]['title']
    account += 1
    puts "- #{results}"
  end
end
