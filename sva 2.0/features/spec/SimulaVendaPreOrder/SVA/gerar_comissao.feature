#encoding: utf-8
#language: pt

Funcionalidade: Comissao Vendedores - SVA 
  
  @gerar_comissao
  Cenário: Gerar Comissao

  Dado que realize a chamada do wsdl /BackOffice/Comercial/Venda/comissaoVendedores
  Quando informar o payload com os dados da Pre Order e informe o vendedor SVA
  Entao devera retornar o response code deve ser "200"