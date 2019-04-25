Quando("acessar a api /estoqueProdutoLoja e informar lista de rms invalido para consulta") do                           
    $consulta = ConsultaEstoque.new
    $consulta.consulta_estoque_varios_rms_invalido                                           
  end                                                                                                                     
                                                                                                                          
  Então("devera retornar a mensagem nenhum resultado encontrado para a lista de produtos informada") do                   
    expect($create['root']).to eql(nil)
    puts $create.body
    puts $create.code                                           
  end                                                                                                                     