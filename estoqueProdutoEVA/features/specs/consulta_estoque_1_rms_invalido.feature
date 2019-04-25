#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_1_RMS_invalido @CH0248740
Cenário: Consultar o estoque de 1 RMS invalido valido no GOLD
Quando acessar a api /estoqueProdutoLoja e informar o rms invalido para consulta
Então devera retornar a mensagem "Nenhum resultado encontrado para o produto informado"