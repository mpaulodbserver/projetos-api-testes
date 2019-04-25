#encoding: utf-8
#language: pt

Funcionalidade: Solicitar NF de Conserto

@nf_conserto @CH0242446
Cenário: Emitir NF Conserto
Dado que solicite 1 nota fiscal de remessa para conserto
Então deve ser retornado os dados da NF conserto e status 1 com sucesso