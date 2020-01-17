class ValorAleatorio
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri 'https://swapi.co'

  def get_planets
    self.class.get('/api/planets/')
  end
end
