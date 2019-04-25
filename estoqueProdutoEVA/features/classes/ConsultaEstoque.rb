class ConsultaEstoque

    def consulta_estoque_1_RMS_valido
        $createbody = Fixtures.instance.load_json('consulta_estoque_1_rms_valido.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )          
    end

    def consulta_estoque_varios_rms_validos
        $createbody = Fixtures.instance.load_json('consulta_estoque_varios_rms.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
        
    end

    def consulta_estoque_1_RMS_invalido
        $createbody = Fixtures.instance.load_json('consulta_estoque_1_rms_invalido.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end

    def consulta_estoque_varios_rms_invalido
        $createbody = Fixtures.instance.load_json('consulta_estoque_varios_rms_invalidos.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end

    def consulta_estoque_por_site_invalido
        $createbody = Fixtures.instance.load_json('consulta_estoque_por_site_invalido.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end

    def consulta_estoque_por_campo_site_vazio
        $createbody = Fixtures.instance.load_json('consulta_estoque_por_campo_site_vazio.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end

    def consulta_estoque_por_campo_RMS_vazio
        $createbody = Fixtures.instance.load_json('consulta_estoque_por_campo_rms_vazio.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end

    def consulta_estoque_com_metodo_GET
        $createbody = Fixtures.instance.load_json('consulta_estoque_com_metodo_GET.json')
        $create = HTTParty.get($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
        
    end

    def consulta_estoque_por_outros_sites
        $createbody = Fixtures.instance.load_json('consulta_estoque_por_outros_sites.json')
        $create = HTTParty.post($api['post_estoqueProdutoEVA'],
        :body => $createbody.to_json,
        :headers => { "Content-Type" => 'application/json' } 
        )
    end
end