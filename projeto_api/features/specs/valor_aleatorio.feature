#language: pt

@validar_endpoint_planets
Funcionalidade: Validar endpoint da API Planets
  Eu como automacao quero realizar uma requisicao
  para obter uma resposta com sucesso do servico de Planetas

  @setar_valores_aleatorios
  Cenario: Setar valores aleatorios do endpoint
      Dado enviar um GET para a API Planets
      Quando passo um valor aleatorio
      Entao valido o statuscode e a mensagem exibida da resposta da requisicao
