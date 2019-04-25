#encoding: utf-8
#language: pt

Funcionalidade: Criacao de pedidos API Gold

  @criacao_pedidos_ECOM_SP @CH0242446
  Cenário: Gerar varios pedidos na API gold tributados em SP
    Dado que eu informe o payload do pedido com endereco de SP
    Quando realizar 1 chamadas na API Gold 
    Então deve ser retornado os numeros do pedidos gerados
    E response code deve ser 200

  @criacao_pedidos_FOOD @CH0242446
  Cenário: Gerar varios pedidos na API gold para CD FOOD
    Dado que eu informe o payload do pedido FOOD
    Quando realizar 1 chamadas na API
    Então deve ser retornado os numeros do pedidos gerados para CD FOOD







