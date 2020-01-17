Quando("fazer uma requisicao GET para a API films") do                       
    @response = @app.validar.get_films
end                                                                          
                                                                            
Entao("valido o statuscode da resposta da requisicao") do                    
    expect(@response.code).to eq 200

    $i = 0
    $total = @response['results'].size

    while $i < $total do
        $results = @response['results'][$i]['title'] 
        $i +=1
        puts $results
    end

end                                                                          