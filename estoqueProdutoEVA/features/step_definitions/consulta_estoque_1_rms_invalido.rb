Quando("acessar a api /estoqueProdutoLoja e informar o rms invalido para consulta") do
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_1_RMS_invalido         
end                                                                                   
                                                                                      
Então("devera retornar a mensagem {string}") do |string|                              
  expect($create.code).to eql(200)
  expect($create['root']).to eql({"codSite"=>"676", "produtos"=>nil, "codRetorno"=>"1", "msgRetorno"=>"Nenhum resultado encontrado para o produto informado"})
  puts $create.body
  puts $create.code         
end                                                                                   