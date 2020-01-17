#language: pt

@setando_valores
Funcionalidade: Validar endpoint da API Planets

Cenario: Setar valores aleatorios do endpoint
    Quando enviar um novo GET para a API Planets
    E passo um valor aleatorio
    Entao valido o statuscode e a mensagem exibida da resposta da requisicao
