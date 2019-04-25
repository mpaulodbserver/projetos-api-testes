Dado("que solicite {int} nota fiscal de leilao") do |int|
    
    @leilao = GerarPedidoGold.new
      File.open('./fixtures/orders_number/numerosNFLeilao.txt', 'w') do |f2|
      for i in 0..int  
      @leilao.solicita_nf_leilao(i)  
      f2.puts $solicitaLeilao   
      end
   end
end
  
Então("deve ser retornado os dados da NF emitido") do
   puts $response
end