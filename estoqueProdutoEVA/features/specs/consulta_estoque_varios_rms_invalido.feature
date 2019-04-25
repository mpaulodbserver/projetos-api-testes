#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_varios_rms_invalidos @CH0248740
Cenário: Consultar o estoque do RMS invalido no GOLD
Quando acessar a api /estoqueProdutoLoja e informar lista de rms invalido para consulta
Então devera retornar a mensagem nenhum resultado encontrado para a lista de produtos informada
