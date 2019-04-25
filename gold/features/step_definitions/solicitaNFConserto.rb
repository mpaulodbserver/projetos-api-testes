
Dado("que solicite {int} nota fiscal de remessa para conserto") do |int|
      @conserto = GerarPedidoGold.new
      File.open('./fixtures/orders_number/numerosNFConserto.txt', 'w') do |f2|
      for i in 0..int  
      @conserto.solicita_nf_remessa_conserto(i)  
      f2.puts $remessa_conserto
      end
   end
end

Então("deve ser retornado os dados da NF conserto e status {int} com sucesso") do |int|
  puts $response
  expect($response.to_s).to include "Qtd Conserto do GUID [1] Qtd Lote com sucesso [1]"
end