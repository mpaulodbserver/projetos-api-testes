#encoding: utf-8
#language: pt

Dado("que realize a chamada do wsdl /ProcessaPreOrder.asmx") do
 # binding.pry
  
  end
  
Quando("informar o payload com os dados da Pre Order Retira Loja e vendedor OminiGateway") do
  @PreOrder_OminGateway = PreOrder_OminGateway.new
  @PreOrder_OminGateway.post_preorders
  end
  
Entao("devera retornar o response code deve ser {int}") do |int|
  expect($create.code).to eq(401)
  puts $create.to_json, $create.message
  puts "200 Sucesso #{$create.code}"
  end