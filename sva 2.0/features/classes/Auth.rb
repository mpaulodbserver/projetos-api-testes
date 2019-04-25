class Auth

    def create_token

        $request = HTTParty.post($api['preOrder_login'] + '/login',
            :headers => {'Content-Type' => "Application/json"},
            :body =>    {"client": {
                         "name": "thiago",
                         "password": "passwd"
                }
              }
         )
         return $token = $request["token"]
         #puts $request.code
         
    end
end