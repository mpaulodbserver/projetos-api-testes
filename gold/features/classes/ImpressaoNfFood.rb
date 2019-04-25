class ImpressaoNfFood
    
    def imprimirDanfe

        $createbody = Fixtures.instance.load_json('/impressaoNfFood.json')    
        $body = HTTParty.put($api['post_orders_print_nf'],
            :headers => {"Content-Type" => 'application/json'}, :body => $createbody.to_json)
    end   
end