require 'csv'

class CadastroEudoraPage < SitePrism::Page
      set_url ''

    # ------- Home cadastro eudora -------#

      element :nome,'input#nameInput'
      element :botaoContinuar, 'button[class="btn btn--primary"]'
      element :celular,'input#cellphoneInput'
      element :numeroCPF,'input#cpfInput'
      element :dataNascimento,'input#birthdateInput'
      element :email, 'input#emailInput'
      element :numeroRG,'input#rgInput'
      element :estadoExpedicaoRG, '#rgStateInput'
      element :outroNumeroTel, 'input#phoneNumberInput'
      element :digiteCEP, 'input#zipcodeInput'
      element :numeroEnd, 'input#numberInput'
      element :selecioneExpedicao, :xpath, '//*[@id="rgStateInput"]/option[26]'
      element :marcarGenero, 'label[for="gender1"]'
      element :marcarEstCivil, 'label[for="maritalStatus1"]' 
      element :definirSenha, 'input[id="passwordInput"]'
      element :mostrarSenha, 'span[class="input-ic input-ic--action is-visible btn-link text-uppercase ng-star-inserted"]'
      element :termoCondicao, 'label[for="termsAndConditionsInput"]'


    def dadosRepresentante
        $dados = Roo::Spreadsheet.open('C:\marcos_paulo\workspace\Eudora.Cadastro.Web.Automation\features\data\csv\arquivo.xlsx')
        
        $nomePessoa = $dados.sheet('arquivo').cell('A',1).to_s
        nome.set("#{$nomePessoa}")
        click_on 'Continuar'

        $celularPessoa = $dados.sheet('arquivo').cell('B',1).to_s
        celular.set("#{$celularPessoa}")
        click_on 'Continuar'
        $numeroCPFPessoa = $dados.sheet('arquivo').cell('C',1).to_s
        numeroCPF.set("#{$numeroCPFPessoa}")
        click_on 'Continuar'

        $DNPessoa = $dados.sheet('arquivo').cell('D',1).to_s
        dataNascimento.set("#{$DNPessoa}")
        click_on 'Continuar'
        sleep 9
    end

    def dadosEmailRepresentante
        $emailPessoa = $dados.sheet('arquivo').cell('E',1).to_s
        email.set("#{$emailPessoa}")
        click_on 'Continuar'

        $RGPessoa = $dados.sheet('arquivo').cell('F',1).to_s
        numeroRG.set("#{$RGPessoa}")
        selecioneExpedicao.click
        click_on 'Continuar'
        sleep 5
        $outroNumeroTel = $dados.sheet('arquivo').cell('H',1).to_s
        outroNumeroTel.set("#{$outroNumeroTel}")
        click_on 'Continuar'
    end

    def dadosEnderecoRepresentante
        $CEPPessoa = $dados.sheet('arquivo').cell('I',1).to_s
        digiteCEP.set("#{$CEPPessoa}")
        click_on 'Continuar'
        sleep 5

        $NEndPessoa = $dados.sheet('arquivo').cell('J',1).to_s
        numeroEnd.set("#{$NEndPessoa}")
        click_on 'Continuar'
    end
    
    def selecionarGenero

        marcarGenero.click
        click_on 'Continuar'
        
    end
    
    def selecionarEstCivil

        marcarEstCivil.click
        sleep 7
        click_on 'Continuar'
    end

    def gerarSenhaRandomica

        $gerarFaker = "Eud"+Faker::Number.number(14)
        definirSenha.click
        definirSenha.set("#{$gerar}")
        mostrarSenha.click
        puts "gerou senha #{$gerarFaker}"
        sleep 7
        
        
    end
    
    def selecionarAceiteTermos
        
        termoCondicao.click
        
    end
    

end

