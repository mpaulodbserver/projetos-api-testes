#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_com_metodo_GET @CH0248740
Cenário: Consultar o estoque com metodo GET
Quando acessar a api /estoqueProdutoLoja com o metodo GET
Então devera retornar a mensagem metodo invalido e response code deve ser 405  