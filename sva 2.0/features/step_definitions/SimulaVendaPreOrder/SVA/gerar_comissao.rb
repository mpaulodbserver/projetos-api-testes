Dado(/^que realize a chamada do wsdl \/BackOffice\/Comercial\/Venda\/comissaoVendedores$/) do
    $comissionamento = ComissaoVendedores.new
   # $comissionamento.gerarcomissaotibco
    $comissionamento.gerarcomissaosva
  end
  
  Quando("informar o payload com os dados da Pre Order e informe o vendedor SVA") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("devera retornar o response code deve ser {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end