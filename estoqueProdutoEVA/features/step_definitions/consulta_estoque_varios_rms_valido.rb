Quando("acessar a api /estoqueProdutoLoja e informar lista de rms valido para consulta") do                                      
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_varios_rms_validos                                                    
end                                                                                                                              
                                                                                                                                 
Então("devera retornar a lista de rms com estoque validos e response code {int}") do |int|                                       
  expect($create['root']).to eql(nil)
  puts $create.body
  puts $create.code                                                    
end                                                                                                                              