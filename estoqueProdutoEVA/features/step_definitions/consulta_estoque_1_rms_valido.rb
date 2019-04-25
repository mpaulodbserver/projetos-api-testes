Quando("acessar a api /estoqueProdutoLoja e informar o rms valido para consulta") do
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_1_RMS_valido
end

Então("devera retornar a mensagem Sucesso e response code deve ser {int}") do |int|
  expect($create.code).to eql(200)
  expect($create['root']).to eql({"codSite"=>"676", "produtos"=>{"produto"=>[{"codRMS"=>"8442525", "codEAN"=>"7891103058387", "qtNormal"=>"-70", "qtBlocked"=>"10", "qtReserved"=>"0"}]}, "codRetorno"=>"0", "msgRetorno"=>"Sucesso"})
  puts $create.code
  puts $create.body
end