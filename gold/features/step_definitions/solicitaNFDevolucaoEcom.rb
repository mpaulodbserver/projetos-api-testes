Dado("que solicite {int} nota fiscal de devolucao") do |int|
  @dev = GerarPedidoGold.new
      File.open('./fixtures/orders_number/numerosNFDevolucaoEcom.txt', 'w') do |f2|
      file = File.open('./fixtures/orders_number/pedidoOrigem.txt', 'r')
      #fazendo um For Linha a Linha
      file.each_line do |line|
      
       @dev.solicita_nf_devolucao(line.to_s)  
       #f2.puts $devolucao
       #puts line.to_s 
       puts $response
       
      end 
     end
   end
Então("devera retornar a nota fical de devolucao e status {int} com sucesso") do |int|

 # expect($response.to_s).to include "Qtd Conserto do GUID [1] Qtd Lote com sucesso [1]"
end
