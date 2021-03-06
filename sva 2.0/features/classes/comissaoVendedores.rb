class ComissaoVendedores

    def gerarcomissaotibco
           
        client = Savon.client do
            wsdl "http://10.113.146.11:4030/BackOffice/Comercial/Venda/comissaoVendedores?wsdl"
            endpoint "http://10.113.146.11:4030/BackOffice/Comercial/Venda/comissaoVendedores"
            namespace "http://tempuri.org/"
        end            
        $response = client.call(:simular_venda, xml: 
        "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:tem='http://tempuri.org/'>
        <soapenv:Header/>
        <soapenv:Body>
           <tem:SimularVenda>
              <!--Optional:-->
               <tem:xml>&lt;?xml version='1.0' encoding='UTF-8'?>
     &lt;order>
         &lt;order.hybriscode>PTFS06678801&lt;/order.hybriscode>
         &lt;order.salesusercode>6421&lt;/order.salesusercode>
         &lt;order.storecode>1031&lt;/order.storecode>
         &lt;order.description>teste&lt;/order.description>
         &lt;order.salesman>bruno.sallum&lt;/order.salesman>
         &lt;order.fiscalnumber>&lt;/order.fiscalnumber>
             &lt;order.producttype>SVA&lt;/order.producttype>
         &lt;order.products>
             &lt;order.products.product>
                 &lt;order.products.product.code>8937842&lt;/order.products.product.code>
                 &lt;order.products.product.address>
                     &lt;order.products.product.address.sequencenumber>1&lt;/order.products.product.address.sequencenumber>
                     &lt;order.products.product.address.streetname>Rua Branco&lt;/order.products.product.address.streetname>
                     &lt;order.products.product.address.streetnumber>411&lt;/order.products.product.address.streetnumber>                            
                     &lt;order.products.product.address.district>Chacara Santo Antônio&lt;/order.products.product.address.district>
                     &lt;order.products.product.address.postalcode>04718010&lt;/order.products.product.address.postalcode>                           
                     &lt;order.products.product.address.country>Brasil&lt;/order.products.product.address.country>                                   
                     &lt;order.products.product.address.town>SP&lt;/order.products.product.address.town>                                             
                     &lt;order.products.product.address.region>São Paulo&lt;/order.products.product.address.region>                          
                     &lt;order.products.product.address.addresstype>R&lt;/order.products.product.address.addresstype>                                        
                     &lt;order.products.product.address.phoneregionnumber>11&lt;/order.products.product.address.phoneregionnumber>                                           
                     &lt;order.products.product.address.phonenumber>56666666&lt;/order.products.product.address.phonenumber>                         
                     &lt;order.products.product.address.cellphoneregionnumber />
                     &lt;order.products.product.address.cellphonenumber />
                 &lt;/order.products.product.address>
                 &lt;order.products.product.parent.code />
                 &lt;order.products.product.deliverymethod>2&lt;/order.products.product.deliverymethod>
                 &lt;order.products.product.discountvalue>0&lt;/order.products.product.discountvalue>
                 &lt;order.products.product.deliverydate>&lt;/order.products.product.deliverydate>
                 &lt;order.products.product.quantity>1&lt;/order.products.product.quantity>
                 &lt;order.products.product.installationdate />
                 &lt;order.products.product.value>579,00&lt;/order.products.product.value>
                 &lt;order.products.product.deliveryperiod>&lt;/order.products.product.deliveryperiod>
                 &lt;order.products.product.promotionlistcode />
                 &lt;order.products.product.bundlecode />
                 &lt;order.products.product.promotionfired>N&lt;/order.products.product.promotionfired>
                 &lt;order.products.product.managementcode />
             &lt;/order.products.product>
             &lt;/order.products>
         &lt;order.services>
             &lt;order.services.service>
                 &lt;order.services.service.address>
                     &lt;order.services.service.address.sequencenumber>1&lt;/order.services.service.address.sequencenumber>
                     &lt;order.services.service.address.streetname>Rua Branco&lt;/order.services.service.address.streetname>
                     &lt;order.services.service.address.streetnumber>411&lt;/order.services.service.address.streetnumber>                            
                     &lt;order.products.product.address.district>Chacara Santo Antônio&lt;/order.products.product.address.district>
                     &lt;order.services.service.address.postalcode>04718010&lt;/order.services.service.address.postalcode>                           
                     &lt;order.services.service.address.country>Brasil&lt;/order.services.service.address.country>                                   
                     &lt;order.services.service.address.town>SP&lt;/order.services.service.address.town>                                             
                     &lt;order.services.service.address.region>São Paulo&lt;/order.services.service.address.region>                          
                     &lt;order.services.service.address.addresstype>R&lt;/order.services.service.address.addresstype>                                        
                     &lt;order.services.service.address.phoneregionnumber>11&lt;/order.services.service.address.phoneregionnumber>                                           
                     &lt;order.services.service.address.phonenumber>56666666&lt;/order.services.service.address.phonenumber>                         
                     &lt;order.services.service.address.cellphoneregionnumber />
                     &lt;order.services.service.address.cellphonenumber />
                 &lt;/order.services.service.address>
                 &lt;order.services.service.code>1210&lt;/order.services.service.code>
                 &lt;order.services.service.relatedproduct>8937842&lt;/order.services.service.relatedproduct>
                 &lt;order.services.service.servicetype>1&lt;/order.services.service.servicetype>
                 &lt;order.services.service.deliverymethod>2&lt;/order.services.service.deliverymethod>
                 &lt;order.services.service.discountvalue>0&lt;/order.services.service.discountvalue>
                 &lt;order.services.service.deliverydate>&lt;/order.services.service.deliverydate>
                 &lt;order.services.service.quantity>1&lt;/order.services.service.quantity>
                 &lt;order.services.service.installationdate />
                 &lt;order.services.service.value>95,00&lt;/order.services.service.value>
                 &lt;order.services.service.promotioncode />
                 &lt;order.services.service.promotionlistcode />
                 &lt;order.services.service.bundlecode />
                 &lt;order.services.service.promotionfired>N&lt;/order.services.service.promotionfired>
                 &lt;order.services.service.managementcode />
             &lt;/order.services.service>
         &lt;/order.services>
         &lt;order.payments>
             &lt;order.payments.payment>
             &lt;order.payments.payment.paymentplan.code>1&lt;/order.payments.payment.paymentplan.code>
             &lt;order.payments.payment.paymentplan.value>274,00&lt;/order.payments.payment.paymentplan.value>
             &lt;order.payments.payment.paymentplan.discountvalue>0&lt;/order.payments.payment.paymentplan.discountvalue>
             &lt;order.payments.payment.managercode />
             &lt;order.payments.payment.initialvalue>0&lt;/order.payments.payment.initialvalue>
             &lt;order.payments.payment.installmentnumber>1&lt;/order.payments.payment.installmentnumber>
             &lt;order.payments.payment.installmentvalue>274,00&lt;/order.payments.payment.installmentvalue>
             &lt;order.payments.payment.code>1&lt;/order.payments.payment.code>
         &lt;/order.payments.payment>
             &lt;order.payments.payment>
             &lt;order.payments.payment.paymentplan.code>5&lt;/order.payments.payment.paymentplan.code>
             &lt;order.payments.payment.paymentplan.value>400,00&lt;/order.payments.payment.paymentplan.value>
             &lt;order.payments.payment.paymentplan.discountvalue>0&lt;/order.payments.payment.paymentplan.discountvalue>
             &lt;order.payments.payment.managercode />
             &lt;order.payments.payment.initialvalue>0&lt;/order.payments.payment.initialvalue>
             &lt;order.payments.payment.installmentnumber>1&lt;/order.payments.payment.installmentnumber>
             &lt;order.payments.payment.installmentvalue>400,00&lt;/order.payments.payment.installmentvalue>
             &lt;order.payments.payment.code>5&lt;/order.payments.payment.code>
         &lt;/order.payments.payment>
         &lt;/order.payments>
             &lt;order.customer>
             &lt;order.customer.customername>Jose Pontes&lt;/order.customer.customername>
             &lt;order.customer.nationality>BRASILEIRO&lt;/order.customer.nationality>
             &lt;order.customer.personcode>35572716847&lt;/order.customer.personcode>
             &lt;order.customer.passportcode>&lt;/order.customer.passportcode>
             &lt;order.customer.birthday>01/03/1989&lt;/order.customer.birthday>
             &lt;order.customer.email>&lt;/order.customer.email>
             &lt;order.customer.maritalstatus>1&lt;/order.customer.maritalstatus>
             &lt;order.customer.gender>M&lt;/order.customer.gender>
             &lt;order.customer.addresses>
                 &lt;order.customer.addresses.address>
                     &lt;order.customer.addresses.address.sequencenumber>            1                                               &lt;/order.customer.addresses.address.sequencenumber>
                     &lt;order.customer.addresses.address.streetname>                        Rua Branco de Morais    &lt;/order.customer.addresses.address.streetname>
                     &lt;order.customer.addresses.address.streetnumber>                      411                                             &lt;/order.customer.addresses.address.streetnumber>
                     &lt;order.customer.addresses.address.district>                          Chacara Santo Antônio   &lt;/order.customer.addresses.address.district>
                     &lt;order.customer.addresses.address.postalcode>                        04718010                                &lt;/order.customer.addresses.address.postalcode>
                     &lt;order.customer.addresses.address.country>                           Brasil                                  &lt;/order.customer.addresses.address.country>
                     &lt;order.customer.addresses.address.town>                                      SP                                              &lt;/order.customer.addresses.address.town>
                     &lt;order.customer.addresses.address.region>                            São Paulo                               &lt;/order.customer.addresses.address.region>
                     &lt;order.customer.addresses.address.addresstype>                       R                                               &lt;/order.customer.addresses.address.addresstype>
                     &lt;order.customer.addresses.address.phoneregionnumber> 11                                              &lt;/order.customer.addresses.address.phoneregionnumber>
                                     &lt;order.customer.addresses.address.phonenumber>                       56666666                                &lt;/order.customer.addresses.address.phonenumber>
                     &lt;order.customer.addresses.address.cellphoneregionnumber>&lt;/order.customer.addresses.address.cellphoneregionnumber>
                     &lt;order.customer.addresses.address.cellphonenumber>&lt;/order.customer.addresses.address.cellphonenumber>
                 &lt;/order.customer.addresses.address>
             &lt;/order.customer.addresses>
         &lt;/order.customer>
     &lt;/order></tem:xml>
           </tem:SimularVenda>
        </soapenv:Body>
     </soapenv:Envelope>")

     puts $response
        
    end
    
    def gerarcomissaosva
           
        client = Savon.client do
            wsdl "http://10.113.148.96/svaws/processapreorder.asmx?wsdl"
            endpoint "http://10.113.148.96/svaws/processapreorder.asmx"
            namespace "http://tempuri.org/"
        end            
        $response = client.call( :simular_venda, xml: 
        "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:tem='http://tempuri.org/'>
        <soapenv:Header/>
        <soapenv:Body>
           <tem:SimularVenda>
              <!--Optional:-->
               <tem:xml>&lt;?xml version='1.0' encoding='UTF-8'?>
     &lt;order>
         &lt;order.hybriscode>999992&lt;/order.hybriscode>
         &lt;order.salesusercode>6421&lt;/order.salesusercode>
         &lt;order.storecode>1031&lt;/order.storecode>
         &lt;order.description>teste&lt;/order.description>
         &lt;order.salesman>bruno.sallum&lt;/order.salesman>
         &lt;order.fiscalnumber>&lt;/order.fiscalnumber>
             &lt;order.producttype>SVA&lt;/order.producttype>
         &lt;order.products>
             &lt;order.products.product>
                 &lt;order.products.product.code>8937842&lt;/order.products.product.code>
                 &lt;order.products.product.address>
                     &lt;order.products.product.address.sequencenumber>1&lt;/order.products.product.address.sequencenumber>
                     &lt;order.products.product.address.streetname>Rua Branco&lt;/order.products.product.address.streetname>
                     &lt;order.products.product.address.streetnumber>411&lt;/order.products.product.address.streetnumber>                            
                     &lt;order.products.product.address.district>Chacara Santo Antônio&lt;/order.products.product.address.district>
                     &lt;order.products.product.address.postalcode>04718010&lt;/order.products.product.address.postalcode>                           
                     &lt;order.products.product.address.country>Brasil&lt;/order.products.product.address.country>                                   
                     &lt;order.products.product.address.town>SP&lt;/order.products.product.address.town>                                             
                     &lt;order.products.product.address.region>São Paulo&lt;/order.products.product.address.region>                          
                     &lt;order.products.product.address.addresstype>R&lt;/order.products.product.address.addresstype>                                        
                     &lt;order.products.product.address.phoneregionnumber>11&lt;/order.products.product.address.phoneregionnumber>                                           
                     &lt;order.products.product.address.phonenumber>56666666&lt;/order.products.product.address.phonenumber>                         
                     &lt;order.products.product.address.cellphoneregionnumber />
                     &lt;order.products.product.address.cellphonenumber />
                 &lt;/order.products.product.address>
                 &lt;order.products.product.parent.code />
                 &lt;order.products.product.deliverymethod>2&lt;/order.products.product.deliverymethod>
                 &lt;order.products.product.discountvalue>0&lt;/order.products.product.discountvalue>
                 &lt;order.products.product.deliverydate>&lt;/order.products.product.deliverydate>
                 &lt;order.products.product.quantity>1&lt;/order.products.product.quantity>
                 &lt;order.products.product.installationdate />
                 &lt;order.products.product.value>579,00&lt;/order.products.product.value>
                 &lt;order.products.product.deliveryperiod>&lt;/order.products.product.deliveryperiod>
                 &lt;order.products.product.promotionlistcode />
                 &lt;order.products.product.bundlecode />
                 &lt;order.products.product.promotionfired>N&lt;/order.products.product.promotionfired>
                 &lt;order.products.product.managementcode />
             &lt;/order.products.product>
             &lt;/order.products>
         &lt;order.services>
             &lt;order.services.service>
                 &lt;order.services.service.address>
                     &lt;order.services.service.address.sequencenumber>1&lt;/order.services.service.address.sequencenumber>
                     &lt;order.services.service.address.streetname>Rua Branco&lt;/order.services.service.address.streetname>
                     &lt;order.services.service.address.streetnumber>411&lt;/order.services.service.address.streetnumber>                            
                     &lt;order.products.product.address.district>Chacara Santo Antônio&lt;/order.products.product.address.district>
                     &lt;order.services.service.address.postalcode>04718010&lt;/order.services.service.address.postalcode>                           
                     &lt;order.services.service.address.country>Brasil&lt;/order.services.service.address.country>                                   
                     &lt;order.services.service.address.town>SP&lt;/order.services.service.address.town>                                             
                     &lt;order.services.service.address.region>São Paulo&lt;/order.services.service.address.region>                          
                     &lt;order.services.service.address.addresstype>R&lt;/order.services.service.address.addresstype>                                        
                     &lt;order.services.service.address.phoneregionnumber>11&lt;/order.services.service.address.phoneregionnumber>                                           
                     &lt;order.services.service.address.phonenumber>56666666&lt;/order.services.service.address.phonenumber>                         
                     &lt;order.services.service.address.cellphoneregionnumber />
                     &lt;order.services.service.address.cellphonenumber />
                 &lt;/order.services.service.address>
                 &lt;order.services.service.code>1210&lt;/order.services.service.code>
                 &lt;order.services.service.relatedproduct>8937842&lt;/order.services.service.relatedproduct>
                 &lt;order.services.service.servicetype>1&lt;/order.services.service.servicetype>
                 &lt;order.services.service.deliverymethod>2&lt;/order.services.service.deliverymethod>
                 &lt;order.services.service.discountvalue>0&lt;/order.services.service.discountvalue>
                 &lt;order.services.service.deliverydate>&lt;/order.services.service.deliverydate>
                 &lt;order.services.service.quantity>1&lt;/order.services.service.quantity>
                 &lt;order.services.service.installationdate />
                 &lt;order.services.service.value>95,00&lt;/order.services.service.value>
                 &lt;order.services.service.promotioncode />
                 &lt;order.services.service.promotionlistcode />
                 &lt;order.services.service.bundlecode />
                 &lt;order.services.service.promotionfired>N&lt;/order.services.service.promotionfired>
                 &lt;order.services.service.managementcode />
             &lt;/order.services.service>
         &lt;/order.services>
         &lt;order.payments>
             &lt;order.payments.payment>
             &lt;order.payments.payment.paymentplan.code>1&lt;/order.payments.payment.paymentplan.code>
             &lt;order.payments.payment.paymentplan.value>274,00&lt;/order.payments.payment.paymentplan.value>
             &lt;order.payments.payment.paymentplan.discountvalue>0&lt;/order.payments.payment.paymentplan.discountvalue>
             &lt;order.payments.payment.managercode />
             &lt;order.payments.payment.initialvalue>0&lt;/order.payments.payment.initialvalue>
             &lt;order.payments.payment.installmentnumber>1&lt;/order.payments.payment.installmentnumber>
             &lt;order.payments.payment.installmentvalue>274,00&lt;/order.payments.payment.installmentvalue>
             &lt;order.payments.payment.code>1&lt;/order.payments.payment.code>
         &lt;/order.payments.payment>
             &lt;order.payments.payment>
             &lt;order.payments.payment.paymentplan.code>5&lt;/order.payments.payment.paymentplan.code>
             &lt;order.payments.payment.paymentplan.value>400,00&lt;/order.payments.payment.paymentplan.value>
             &lt;order.payments.payment.paymentplan.discountvalue>0&lt;/order.payments.payment.paymentplan.discountvalue>
             &lt;order.payments.payment.managercode />
             &lt;order.payments.payment.initialvalue>0&lt;/order.payments.payment.initialvalue>
             &lt;order.payments.payment.installmentnumber>1&lt;/order.payments.payment.installmentnumber>
             &lt;order.payments.payment.installmentvalue>400,00&lt;/order.payments.payment.installmentvalue>
             &lt;order.payments.payment.code>5&lt;/order.payments.payment.code>
         &lt;/order.payments.payment>
         &lt;/order.payments>
             &lt;order.customer>
             &lt;order.customer.customername>Jose Pontes&lt;/order.customer.customername>
             &lt;order.customer.nationality>BRASILEIRO&lt;/order.customer.nationality>
             &lt;order.customer.personcode>35572716847&lt;/order.customer.personcode>
             &lt;order.customer.passportcode>&lt;/order.customer.passportcode>
             &lt;order.customer.birthday>01/03/1989&lt;/order.customer.birthday>
             &lt;order.customer.email>&lt;/order.customer.email>
             &lt;order.customer.maritalstatus>1&lt;/order.customer.maritalstatus>
             &lt;order.customer.gender>M&lt;/order.customer.gender>
             &lt;order.customer.addresses>
                 &lt;order.customer.addresses.address>
                     &lt;order.customer.addresses.address.sequencenumber>            1                                               &lt;/order.customer.addresses.address.sequencenumber>
                     &lt;order.customer.addresses.address.streetname>                        Rua Branco de Morais    &lt;/order.customer.addresses.address.streetname>
                     &lt;order.customer.addresses.address.streetnumber>                      411                                             &lt;/order.customer.addresses.address.streetnumber>
                     &lt;order.customer.addresses.address.district>                          Chacara Santo Antônio   &lt;/order.customer.addresses.address.district>
                     &lt;order.customer.addresses.address.postalcode>                        04718010                                &lt;/order.customer.addresses.address.postalcode>
                     &lt;order.customer.addresses.address.country>                           Brasil                                  &lt;/order.customer.addresses.address.country>
                     &lt;order.customer.addresses.address.town>                                      SP                                              &lt;/order.customer.addresses.address.town>
                     &lt;order.customer.addresses.address.region>                            São Paulo                               &lt;/order.customer.addresses.address.region>
                     &lt;order.customer.addresses.address.addresstype>                       R                                               &lt;/order.customer.addresses.address.addresstype>
                     &lt;order.customer.addresses.address.phoneregionnumber> 11                                              &lt;/order.customer.addresses.address.phoneregionnumber>
                                     &lt;order.customer.addresses.address.phonenumber>                       56666666                                &lt;/order.customer.addresses.address.phonenumber>
                     &lt;order.customer.addresses.address.cellphoneregionnumber>&lt;/order.customer.addresses.address.cellphoneregionnumber>
                     &lt;order.customer.addresses.address.cellphonenumber>&lt;/order.customer.addresses.address.cellphonenumber>
                 &lt;/order.customer.addresses.address>
             &lt;/order.customer.addresses>
         &lt;/order.customer>
     &lt;/order></tem:xml>
           </tem:SimularVenda>
        </soapenv:Body>
     </soapenv:Envelope>")
    
     puts $response
        
    end
end

