Dado("que eu informe o payload do pedido FOOD") do
    
  end
  
  Quando("realizar {int} chamadas na API") do |int|
    @food = GerarPedidoGold.new    
     File.open('./fixtures/orders_number/numerosPedidosFood.txt', 'w') do |f2|
      for i in 0..int  
        @food.pedidos_food(i)  
        f2.puts $pedidoFood      
      end
    end
  end
  
  Então("deve ser retornado os numeros do pedidos gerados para CD FOOD") do
    puts $request.body  
  end