#encoding: utf-8
#language: pt

Funcionalidade: Interface de consulta estoque EVA

Eu como analista quero consultar o estoque dos produtos disponiveis para separacao no sistema EVA 
ja atualizados pelo sistema GOLD

@consulta_estoque_por_campo_site_vazio @CH0248740
Cenário: Consultar estoque com o campo codSite vazio
Quando acessar a api /estoqueProdutoLoja e informar o campo codSite vazio para consulta
Então devera retornar a mensagem Site nao informado
