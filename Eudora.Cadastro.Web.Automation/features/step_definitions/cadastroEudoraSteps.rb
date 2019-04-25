Dado("que acesse o site de cadastro eudora") do
    @home = CadastroEudoraPage.new
    @home.load
  end
  
  Quando("informar os dados da IR") do
    click_on 'Fazer meu cadastro'
    @home.dadosRepresentante
    @home.dadosEmailRepresentante
    binding.pry
    @home.dadosEnderecoRepresentante
    @home.selecionarGenero
    @home.selecionarEstCivil
    @home.gerarSenhaRandomica
    
  
  end
  
  Então("devera o cadastro realizado com sucesso e numero CPF cadastrado") do
    pending # Write code here that turns the phrase above into concrete actions
  end