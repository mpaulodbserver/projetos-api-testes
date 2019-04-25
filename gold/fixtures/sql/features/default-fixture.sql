SELECT P.Msg_Erro, P.Cod_Pedido, P.* FROM REFCENT.BRITFPEDIDO P 
WHERE P.COD_PEDIDO like '%FOODC%'
order by p.cod_pedido desc