#language: pt

@validar_statuscode
Funcionalidade: Validar endpoint da API Films

Cenario: Armazenar valores do endpoint
    Quando fazer uma requisicao GET para a API films
    Entao valido o statuscode da resposta da requisicao
