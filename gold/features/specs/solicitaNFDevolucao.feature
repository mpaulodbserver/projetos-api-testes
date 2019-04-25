#encoding: utf-8
#language: pt


Funcionalidade: Solicita Nota Fiscal Devolucao

@nf_devolucao @nf_devolucao_ecom @CH0242446
Cenário: Emitir NF Devolucao Ecom
Dado que solicite 1 nota fiscal de devolucao
Então devera retornar a nota fical de devolucao e status 1 com sucesso

@nf_devolucao_food @CH0242446
Cenário: Emitir NF Devolucao Food
Dado que solicite 1 nota fiscal de devolucao food
Então devera retornar a nota fical de devolucao food e status 1 com sucesso