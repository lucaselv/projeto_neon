#language: pt

@verificar_elemento_tela_perguntas
Funcionalidade: Verificando elementos na tela de Perguntas
  Eu como automacao quero ir ate a tela de perguntas
  podendo chegar a disponibilidade dos elementos

  @verificar_elementos
  Cenario: Verificar elementos
      Quando clico no botao de perguntas no menu superior
      Entao verifico se o texto apareceu na tela com sucesso
