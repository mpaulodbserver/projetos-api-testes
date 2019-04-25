#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_por_outro_site @CH0248740
Cenário: Consultar o estoque do outro site valido no GOLD
Quando acessar a api /estoqueProdutoLoja e informar site diferente para consulta
Então devera retornar a mensagem Sucesso