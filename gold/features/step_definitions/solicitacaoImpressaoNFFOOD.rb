Quando("que realize a chamada na API de impressao FOOD") do
    $impressao = ImpressaoNfFood.new
    $impressao.imprimirDanfe
  end
  
  Então("devera imprimir a NF com sucesso") do
    puts $body
    puts $body.code
  end