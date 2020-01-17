#language: pt

@validar_endpoint_films
Funcionalidade: Validar endpoint da API Films
  Eu como automacao quero realizar uma requisicao
  para obter uma resposta com sucesso do servico de filmes

  @armazenar_valores_endpoint
  Cenario: Armazenar valores do endpoint
      Quando fazer uma requisicao GET para a API films
      Entao valido o status code da requisicao
