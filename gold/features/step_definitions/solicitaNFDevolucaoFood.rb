
Dado("que solicite 1 nota fiscal de devolucao food") do |int|
      @conserto = GerarPedidoGold.new
      File.open('./fixtures/orders_number/numerosNFConserto.txt', 'w') do |f2|
      for i in 0..int  
      @conserto.solicita_nf_remessa_conserto(i)  
      f2.puts $solicitaLeilao   
      end
   end
end

Então("devera retornar a nota fical de devolucao food e status 1 com sucesso") do |int|
  puts $response
  expect($response.to_s).to include "Qtd Conserto do GUID [1] Qtd Lote com sucesso [1]"
end