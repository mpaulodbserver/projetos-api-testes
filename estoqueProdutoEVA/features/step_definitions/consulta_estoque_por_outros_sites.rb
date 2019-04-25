Quando("acessar a api /estoqueProdutoLoja e informar site diferente para consulta") do                                                     
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_por_outros_sites                                                              
end                                                                                                                                        
                                                                                                                                           
Então("devera retornar a mensagem Sucesso") do                                                                                             
  expect($create.code).to eql(200)
  expect($create['root']).to eql( {"codSite"=>"992", "produtos"=>{"produto"=>[{"codRMS"=>"378470", "codEAN"=>"8076800195057", "qtNormal"=>"100", "qtBlocked"=>"0", "qtReserved"=>"30"}]}, "codRetorno"=>"0", "msgRetorno"=>"Sucesso"})
  puts $create.body
  puts $create.code                                                              
end                                                                                                                                        