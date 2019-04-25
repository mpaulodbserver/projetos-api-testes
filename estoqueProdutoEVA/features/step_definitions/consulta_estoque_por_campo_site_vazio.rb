Quando("acessar a api /estoqueProdutoLoja e informar o campo codSite vazio para consulta") do                               
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_por_campo_site_vazio                                               
end                                                                                                                         
                                                                                                                            
Então("devera retornar a mensagem Site nao informado") do                                                                   
  expect($create.code).to eql(200)
  expect($create['root']).to eql({"codSite"=>nil, "produtos"=>nil, "codRetorno"=>"4", "msgRetorno"=>"Site não informado."})
  puts $create.body
  puts $create.code                                               
end                                                                                                                         