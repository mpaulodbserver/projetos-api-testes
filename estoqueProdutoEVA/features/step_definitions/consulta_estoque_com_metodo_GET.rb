Quando("acessar a api /estoqueProdutoLoja com o metodo GET") do
  $consulta = ConsultaEstoque.new
  $consulta.consulta_estoque_com_metodo_GET  
end

Então("devera retornar a mensagem metodo invalido e response code deve ser {int}") do |int|
  expect($create.code).to eql(404)
  expect($create['root']).to eql(nil)
  puts $create.body
  puts $create.code
end