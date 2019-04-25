#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_por_campo_RMS_vazio @CH0248740
Cenário: Consultar estoque com o campo codRMS vazio
Quando acessar a api /estoqueProdutoLoja e informar o campo codRMS vazio para consulta
Então devera retornar a mensagem Nenhum produto informado para consulta e response code 400