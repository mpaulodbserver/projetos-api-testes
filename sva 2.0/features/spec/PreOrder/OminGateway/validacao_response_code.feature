#encoding: utf-8
#language: pt

Funcionalidade: Criacao da PreOrder - OminiGateway

@PreOrder_response_code_400
Cenário: Validar response da API Preorders - OminiGateway 
Dado o acesso a API Preorders
Quando informar valores invalidos no body
Entao devera retornar o response code 400

@PreOrder_response_code_404
Cenário: Validar response da API Preorders - OminiGateway 
Dado o acesso a API Preorders
Quando informar parametros invalidos no endereco da API 
Entao devera retornar o response code 404

@PreOrder_response_code_401
Cenário: Validar response da API Preorders - OminiGateway 
Dado o acesso a API Preorders
Quando informar usuario de acesso invalidos 
Entao devera retornar o response code 401

@PreOrder_response_code_405
Cenário: Validar response da API Preorders - OminiGateway 
Dado o acesso a API Preorders
Quando informar valores validos no body com o metodo GET 
Entao devera retornar o response code 405