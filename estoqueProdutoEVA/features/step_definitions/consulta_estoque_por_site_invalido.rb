Quando("acessar a api /estoqueProdutoLoja e informar o site invalido para consulta") do
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_por_site_invalido          
end                                                                                    
                                                                                       
Então("devera retornar a mensagem não existem produtos para o Site informado") do      
  expect($create['root']).to eql({"codSite"=>"9999999999", "produtos"=>nil, "codRetorno"=>"3", "msgRetorno"=>"Não existem produtos para o Site informado."})
  puts $create.body
  puts $create.code          
end                                                                                    