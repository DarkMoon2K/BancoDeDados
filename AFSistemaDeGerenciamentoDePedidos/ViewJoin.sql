create view PedidoClientes as select cliente.cliente_nome, pedidos.* 
	from clientes as cliente join pedido as pedidos on pedidos.pedido_cliente_id = cliente.cliente_id
		order by cliente.cliente_id, pedidos.pedido_id;
        
call selecionarTudo("PedidoClientes");

select viewPedido.*, cliente.cliente_TotalPedidos 
	from PedidoClientes as viewPedido join clientes as cliente on cliente.cliente_id = viewPedido.pedido_cliente_id;