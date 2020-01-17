Quando("enviar um novo GET para a API Planets") do                            
    @response = @app.valor.get_planets
end                                                                           
                                                                                
Quando("passo um valor aleatorio") do
    @count = @response['count']
    $get_count = @app.commons.random_count(@count)
    $set_valor = @response['count'] = $get_count
    puts $set_valor
end                                                                           
                                                                                
Entao("valido o statuscode e a mensagem exibida da resposta da requisicao") do
    expect(@response.code).to eq 200
end                                                                           