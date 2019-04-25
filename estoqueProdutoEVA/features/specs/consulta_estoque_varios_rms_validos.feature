#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_varios_rms_validos @CH0248740
Cenário: Consultar o estoque com varios rms validos
Quando acessar a api /estoqueProdutoLoja e informar lista de rms valido para consulta
Então devera retornar a lista de rms com estoque validos e response code 200