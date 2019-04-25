Quando("acessar a api /estoqueProdutoLoja e informar o campo codRMS vazio para consulta") do                
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_por_campo_RMS_vazio                             
end                                                                                                      
                                                                                                         
Então("devera retornar a mensagem Nenhum produto informado para consulta e response code {int}") do |int|
  expect($create.code).to eql(200)
  expect($create['root']).to eql({"codSite"=>"676", "produtos"=>nil, "codRetorno"=>"1", "msgRetorno"=>"Nenhum resultado encontrado para o produto informado"})
  puts $create.body
  puts $create.code                            
end                                                                                                      