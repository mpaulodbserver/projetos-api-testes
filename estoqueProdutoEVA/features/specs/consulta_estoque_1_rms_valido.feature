#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD


@consulta_estoque_1_rms_valido @CH0248740
Cenário: Consultar o estoque do RMS valido no GOLD
Quando acessar a api /estoqueProdutoLoja e informar o rms valido para consulta
Então devera retornar a mensagem Sucesso e response code deve ser 200