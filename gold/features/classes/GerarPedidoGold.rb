
class GerarPedidoGold
    def pedido_tributado_SP(id)
        $pedido = "XML400" + Faker::Number.number(3)
        $pedidoEntrega = $pedido + "0001"
        puts $pedido
            
        client = Savon.client do
            wsdl "http://10.113.146.13:3101/WS/Pedido?wsdl"
            endpoint "http://10.113.146.13:3101/WS/Pedido"
            namespace "http://www.carrefour.com.br/WS/Pedido"
        end            
        $response = client.call( :inserir_pedido, xml: 
        "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:ped='http://www.carrefour.com.br/WS/Pedido'>
            <soapenv:Header/>
                <soapenv:Body>
            <InserirPedido
            xmlns='http://www.carrefour.com.br/WS/Pedido'
            xmlns:ns2='http://www.carrefour.com.br/WS/PedidoISY'>
            <ListaDePedidos>
                <DadosPedidos>
                    <CodigoPedido>#{$pedido}</CodigoPedido>
                    <CodigoEntrega>#{$pedidoEntrega}</CodigoEntrega>
                    <EMail>testeinventti@teste.com.br</EMail>
                    <CPFouCNPJ>21427979898</CPFouCNPJ>
                    <CodigoCliente>testeinventti@teste.com.br</CodigoCliente>
                    <CondicaoPagamento>Credit Card</CondicaoPagamento>
                    <ValorPedido>489.80</ValorPedido>
                    <ValorFrete>22.36</ValorFrete>
                    <ValorEncargos>0.00</ValorEncargos>
                    <ValorDesconto>0</ValorDesconto>
                    <DataVenda>10/04/2018 00:00:00</DataVenda>
                    <Transportadora>10520136000186</Transportadora>
                    <EmitirNotaSimbolica>false</EmitirNotaSimbolica>
                    <FormaPagamento>VISTA</FormaPagamento>
                    <DestNome>Marcos Paulo</DestNome>
                    <DestSexo>M</DestSexo>
                    <DestEmail>testeinventti@teste.com.br</DestEmail>
                    <DestTelefone>11983701580</DestTelefone>
                    <DestLogradouro>Avenida Guilherme </DestLogradouro>
                    <DestNumeroLogradouro>1515</DestNumeroLogradouro>
                    <DestComplementoEndereco>apt 92 C</DestComplementoEndereco>
                    <DestBairro>Das Candongas</DestBairro>
                    <DestMunicipio>Rio de Janeiro</DestMunicipio>
                    <DestEstado>RJ</DestEstado>
                    <DestCep>20040006</DestCep>
                    <DestPais>Brasil</DestPais>
                    <DestTipoPessoa>F</DestTipoPessoa>
                    <DestInscricaoEstadual/>
                    <DestInscricaoMunicipal/>
                    <DestReferencia>condominio collection</DestReferencia>
                    <PedidoJaPago>true</PedidoJaPago>
                    <Itens>
                        <DadosPedidosItem>
                            <CodigoProduto>1016598</CodigoProduto>
                            <QuantidadeProduto>1.00</QuantidadeProduto>
                            <PrecoUnitario>100</PrecoUnitario>
                            <EmbalagemPresente>false</EmbalagemPresente>
                            <MensagemPresente/>
                            <PrecoUnitarioBruto>100</PrecoUnitarioBruto>
                            <ValorReferencia>100</ValorReferencia>
                            <ValorDesconto>0</ValorDesconto>
                            <ValorFrete>13.19</ValorFrete>
                            <InformAdicionaisNF>Pedido :1000002230001Telefone: 11983701580Ponto de referencia: condominio collection</InformAdicionaisNF>
                        </DadosPedidosItem>
                        </Itens>
                        <DataPrazoEntregaInicial>06/05/2018 00:00:00</DataPrazoEntregaInicial>
                        <DataPrazoEntregaFinal>06/05/2018 00:00:00</DataPrazoEntregaFinal>
                        <TipoEntrega>0</TipoEntrega>
                        <ValorFretePagar>22.36</ValorFretePagar>
                        <InformAdicionaisNF>Pedido :1000002230001Telefone: 11983701580Ponto de referencia: condominio collection</InformAdicionaisNF>
                        <CodigoEntregaPedidoAlterado/>
                        <PrioridadeEntrega>false</PrioridadeEntrega>
                        <EndCodigoIBGE>3304557</EndCodigoIBGE>
                        <WareHouse>992</WareHouse>
                        <CodigoTipoServico>1</CodigoTipoServico>
                        <EndFaturamento>
                        <NomeCliente>Luis Rosar</NomeCliente>
                        <Logradouro>Rua dona zeferina</Logradouro>
                        <NumeroLogradouro>123</NumeroLogradouro>
                        <ComplementoEndereco>Casa</ComplementoEndereco>
                        <Bairro>Nova Iguaçu</Bairro>
                        <Municipio>Rio de Janeiro</Municipio>
                        <Estado>RJ</Estado>
                        <Cep>20040006</Cep>
                        <ReferenciaEndereco/>
                        <Pais>Brasil</Pais>
                        <EndCodigoIBGE>3304557</EndCodigoIBGE>
                     </EndFaturamento>
                    </DadosPedidos>
                </ListaDePedidos>
            </InserirPedido>
        </soapenv:Body>
        </soapenv:Envelope>")
    end

    def pedidos_food(id)

       $pedidoFood = "FOODC"+Faker::Number.number(5)
       $request = HTTParty.post("http://10.113.146.14:3778/inserirPedido/",
            :body => $body.to_json,
            :headers =>  {'Content-Type' => "Application/json"
            })

        $body = {
            "DadosPedidos":[
              {
                "CodigoPedido": "#{$pedidoFood}",
                "CodigoEntrega": "#{$pedidoFood}",
                "EMail": "marcos_carvalho@carrefour.com",
                "CPFouCNPJ": "28124546878",
                "CodigoCliente": "marcos_carvalho@carrefour.com",
                "CondicaoPagamento": "CARTAO VISA",
                "ValorPedido": 289.90,
                "ValorFrete": 9.86,
                "ValorEncargos": 0,
                "ValorDesconto": 0,
                "DataVenda": "04/11/2016 11:11:07",
                "Transportadora": "10520136000186",
                "EmitirNotaSimbolica": false,
                "FormaPagamento": "VISTA",
                "DestNome": "Marcos Paulo",
                "DestSexo": "M",
                "DestEmail": "marcos_carvalho@carrefour.com",
                "DestTelefone": "11940397199",
                "DestLogradouro": "Avenida Guilherme",
                "DestNumeroLogradouro": "1691",
                "DestComplementoEndereco": "apt 92 1",
                "DestBairro": "Das Candongas",
                "DestMunicipio": "São Paulo",
                "DestEstado": "SP",
                "DestCep": "02053003",
                "DestPais": "Brasil",
                "DestTipoPessoa": "F",
                "DestInscricaoEstadual": nil,
                "DestInscricaoMunicipal": nil,
                "DestReferencia": "condominio collection",
                "PedidoJaPago": true,
                "Itens":{
                  "DadosPedidosItem":[
                    {
                      "CodigoProduto": "9434461",
                      "QuantidadeProduto": 1.00,
                      "PrecoUnitario": 289.9,
                      "EmbalagemPresente": false,
                      "MensagemPresente": "",
                      "PrecoUnitarioBruto": 289.9,
                      "ValorReferencia": 289.9,
                      "ValorDesconto": 10.00,
                      "ValorFrete": 9.86,
                      "InformAdicionaisNF": "Pedido :PTFS004890050001/nTelefone: 11981814136/nPonto de referencia: null"
                    },
                     {
                      "CodigoProduto": "9367586",
                      "QuantidadeProduto": 1.00,
                      "PrecoUnitario": 289.9,
                      "EmbalagemPresente": false,
                      "MensagemPresente": "",
                      "PrecoUnitarioBruto": 289.9,
                      "ValorReferencia": 289.9,
                      "ValorDesconto": 10.00,
                      "ValorFrete": 9.86,
                      "InformAdicionaisNF": "Pedido :PTFS004890050001\nTelefone: 11981814136\nPonto de referencia: null"
                    }
                  ]
                },
                "DataPrazoEntregaInicial": "24/04/2018 00:00:00",
                "DataPrazoEntregaFinal": "24/04/2018 00:00:00",
                "TipoEntrega": "0",
                "ValorFretePagar": 9.86,
                "InformAdicionaisNF": "Pedido :PTFS004890050001/nTelefone: 11981814136/nPonto de referencia: null",
                "PrioridadeEntrega": false,
                "EndCodigoIBGE": "3548708",
                "WareHouse": "676",
                "QuantidadePacote": 1,
                "EndFaturamento":{
                  "NomeCliente": "Marcos Paulo",
                  "Logradouro": "Avenida Guilherme",
                  "NumeroLogradouro": "1691",
                  "ComplementoEndereco": "apt 92 01",
                  "Bairro": "Das Candongas",
                  "Municipio": "São Paulo",
                  "Estado": "SP",
                  "Cep": "02053003",
                  "ReferenciaEndereco": "condominio collection",
                  "Pais": "Brasil",
                  "EndCodigoIBGE": "3548708"
                }
              }
            ]
        } 
           
        
    end

    def solicita_nf_leilao(id)

        $solicitaLeilao = "LL"+Faker::Number.number(9)
        puts $solicitaLeilao
        client = Savon.client do
            wsdl "http://10.113.146.13:3101/WS/Pedido?wsdl"
            endpoint "http://10.113.146.13:3101/WS/Pedido"
            namespace "http://www.carrefour.com.br/WS/PedidoISY"
        end            
        $response = client.call( :solicitar_nota_fiscal_leilao, xml: 
            "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' 
            xmlns:ped='http://www.carrefour.com.br/WS/PedidoISY'>
            <soapenv:Header/>
            <soapenv:Body>
               <ns1:NotaFiscalLeilao xmlns:ns1='http://www.carrefour.com.br/WS/PedidoISY'
                                     xmlns:SOAP-ENV='http://schemas.xmlsoap.org/soap/envelope/'>
                     <ns1:CodigoPedido>#{$solicitaLeilao}</ns1:CodigoPedido>
                     <ns1:DadosPedido>
                         <ns1:CPFouCNPJ>66292646572</ns1:CPFouCNPJ>
                         <ns1:TipoPedido>2</ns1:TipoPedido>
                         <ns1:InformAdicionaisNF>#{$solicitaLeilao}</ns1:InformAdicionaisNF>
                         <ns1:CodigoSiteGOLD>992</ns1:CodigoSiteGOLD>
                         <ns1:DadosPedidoItens>
                             <ns1:DadosPedidoItem>
                                 <ns1:CodigoProdutoRMS>9658459</ns1:CodigoProdutoRMS>
                                 <ns1:QuantidadeProduto>1</ns1:QuantidadeProduto>
                                 <ns1:PrecoUnitario>1.0E0</ns1:PrecoUnitario>
                                 <ns1:InformAdicionaisNF/>
                             </ns1:DadosPedidoItem>
                         </ns1:DadosPedidoItens>
                     </ns1:DadosPedido>
                 </ns1:NotaFiscalLeilao>
            </soapenv:Body>
         </soapenv:Envelope>")
    end

    def solicita_nf_remessa_conserto(id)

        $remessa_conserto = "LC"+Faker::Number.number(9)
        puts $remessa_conserto
        client = Savon.client do
        wsdl "./fixtures/wsdl/conserto.wsdl"
        #"http://10.113.146.13:3456/GoldService/SolicitaNotaFiscalRemessaConserto?wsdl"
        endpoint "http://10.113.146.13:3456/GoldService/SolicitaNotaFiscalRemessaConserto"
        namespace "http://xmlns.example.com/1456928158620"

        end            
        $response = client.call( :process_orders, xml: 
            "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:gol='http://www.carrefour.com.br/GoldService'>
            <soapenv:Header/>
            <soapenv:Body>
         <gol:RequestGoldService>
                  <gol:Pedido>
                     <!--Optional:-->
                     <gol:CodigoPedido>#{$remessa_conserto}</gol:CodigoPedido>
                     <!--Optional:-->
                     <gol:CPFouCNPJ>04301024000484</gol:CPFouCNPJ>
                     <!--Optional:-->
                     <gol:InformAdicionaisNF>#{$remessa_conserto}</gol:InformAdicionaisNF>
                     <!--Optional:-->
                     <gol:codSiteGOLD>992</gol:codSiteGOLD>
                     <!--Zero or more repetitions:-->
                     <gol:PedidoItem>
                        <!--Optional:-->
                        <gol:CodigoProdutoRMS>9658459</gol:CodigoProdutoRMS>
                        <!--Optional:-->
                        <gol:QuantidadeProduto>1</gol:QuantidadeProduto>
                        <!--Optional:-->
                        <gol:PrecoUnitario>799</gol:PrecoUnitario>
                        <!--Optional:-->
                        <gol:InformAdicionaisNF>null</gol:InformAdicionaisNF>
                     </gol:PedidoItem>
                  </gol:Pedido>
               </gol:RequestGoldService>
            </soapenv:Body>
         </soapenv:Envelope>")
    end

    def solicita_nf_devolucao(pedidoOrigem )
        
      #  $pedidoOrigem = 
       # $pedidoDev =  pedidoOrigem + '002'
      #  
        $devolucao = pedidoOrigem.gsub(/\n\z/,"") + "0002"
        puts $devolucao
        puts pedidoOrigem

        client = Savon.client do
            wsdl "http://10.113.146.13:3101/WS/Pedido?wsdl"
            endpoint "http://10.113.146.13:3101/WS/Pedido"
            namespace "http://www.carrefour.com.br/WS/PedidoISY"
        end            
        $response = client.call( :solicitar_nota_fiscal_retorno_cliente, xml: 
            "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:ped='http://www.carrefour.com.br/WS/PedidoISY'>
               <soapenv:Header/>
               <soapenv:Body>
                  <ped:NotaFiscalRetornoCliente>
                     <ped:CodigoEntrega>#{pedidoOrigem}</ped:CodigoEntrega>
                     <ped:CodigoDevolucao>#{$devolucao}</ped:CodigoDevolucao>
                     <ped:MercadoriaEmTransito>true</ped:MercadoriaEmTransito>
                     <ped:DadosPedidoItensRetorno>
                        <!--Zero or more repetitions:-->
                        <ped:DadosPedidoItemRetorno>
                           <ped:CodigoProdutoRMS>9658459</ped:CodigoProdutoRMS>
                           <ped:QuantidadeProduto>1</ped:QuantidadeProduto>
                           <ped:MotivoDevolucao>6</ped:MotivoDevolucao>
                        </ped:DadosPedidoItemRetorno>
                        <ped:DadosPedidoItemRetorno>
                           <ped:CodigoProdutoRMS>9532030</ped:CodigoProdutoRMS>
                           <ped:QuantidadeProduto>1</ped:QuantidadeProduto>
                           <ped:MotivoDevolucao>6</ped:MotivoDevolucao>
                        </ped:DadosPedidoItemRetorno>
                        <ped:DadosPedidoItemRetorno>
                           <ped:CodigoProdutoRMS>9658505</ped:CodigoProdutoRMS>
                           <ped:QuantidadeProduto>1</ped:QuantidadeProduto>
                           <ped:MotivoDevolucao>6</ped:MotivoDevolucao>
                        </ped:DadosPedidoItemRetorno>
                     </ped:DadosPedidoItensRetorno>
                  </ped:NotaFiscalRetornoCliente>
               </soapenv:Body>
            </soapenv:Envelope>")
    end
end