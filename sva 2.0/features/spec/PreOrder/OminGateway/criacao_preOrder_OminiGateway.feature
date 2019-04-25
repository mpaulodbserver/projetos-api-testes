#encoding: utf-8
#language: pt

Funcionalidade: Criacao da PreOrder - OminiGateway 
  
  @gerar_preOrder_Retira_Loja_Dinheiro
  Cenário: Gerar Pre Order Retira Loja Dinheiro - OminiGateway 
  Dado que realize a chamada do wsdl /ProcessaPreOrder.asmx 
  Quando informar o payload com os dados da Pre Order Retira Loja e vendedor OminiGateway
  Entao devera retornar o response code deve ser 201
  
  @gerar_preOrder_Entrega_Loja_Cartao_Credito_2x_Sem_Juros
  Cenário: Gerar PreOrder Entrega Loja Cartao Credito 2x Sem Juros - OminiGateway 
  Dado que realize a chamada do wsdl /ProcessaPreOrder.asmx 
  Quando informar o payload do pedido Entrega Loja Cart Cred 2x e vendedor da loja OminGateway
  Entao devera retornar o response code deve ser 200 com o numero da preOrder Gerada
  
  @gerar_preOrder_Entrega_CD_Cartao_Debito
  Cenário: Gerar PreOrder Entrega CD Cartao Debito - OminiGateway 
  Dado que realize a chamada do wsdl /ProcessaPreOrder.asmx 
  Quando informar o payload do pedido Entrega CD Cartao Debito e vendedor da loja OminGateway
  Entao devera retornar o response code deve ser 200 com o numero da preOrder Gerada
  
  @gerar_preOrder_Retira_Loja_Entrega_Loja_Entrega_CD_Cartao_Credito_2x_sem_juros
  Cenário: Gerar PreOrder Retira Loja Entrega Loja Entrega CD Cartao Credito 2x sem juros - OminiGateway
  Dado que realize a chamada do wsdl /ProcessaPreOrder.asmx 
  Quando informar o payload do pedido Retira Loja Entrega Loja Entrega CD Cartao Credito 2x sem juros e vendedor da loja OminGateway
  Entao devera retornar o response code deve ser 200 com o numero da preOrder Gerada
  