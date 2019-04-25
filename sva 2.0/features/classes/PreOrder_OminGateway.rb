class PreOrder_OminGateway
   
    def post_preorders
        
        @createbody = YAML.load_file('./fixtures/payloads/body/post_preorders.yml')
        $create = HTTParty.post($api['post_preorders'],
        :body => @createbody.to_json,
        :headers => { "Content-Type" => 'application/json',
                      "Autorization" => "#{$token}"}
        
        )
         puts ($api['post_preorders'])
        
    end
    
end