Dado("que eu informe o payload do pedido com endereco de SP") do
end

Quando("realizar {int} chamadas na API Gold") do |int|
  
  @gerarPedidoGold = GerarPedidoGold.new
  File.open('./fixtures/orders_number/numerosPedidos.txt', 'w') do |f2|
    for i in 0..int  
        @gerarPedidoGold.pedido_tributado_SP(i)
      puts $response
      f2.puts $pedido
      
    end
  end
end

Então("deve ser retornado os numeros do pedidos gerados") do
  puts $response
end

Então("response code deve ser {int}") do |int|
  puts 
end