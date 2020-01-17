#language: pt

@validar_status_servico
Funcionalidade: Validar servico na Tela de Status
  Eu como automacao quero consultar o site
  podendo chegar a disponibilidade do servico

  @validar_servico_ativacao
  Cenario: Validar servico Ativacao de Cartao
      Quando acesso a pagina de status
      Entao verifico se o servico esta funcionando corretamente
