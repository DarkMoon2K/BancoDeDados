delimiter $
	create procedure InserirPedido (pedido_valor decimal(10,2), pedido_data date, pedido_cliente_id int)
		begin insert into pedido values (null,pedido_valor,pedido_data,pedido_cliente_id);
	end $
delimiter ;


delimiter $
	create procedure InserirCliente (cliente_nome varchar(100), cliente_telefone varchar(100), 
									cliente_email varchar(100), cliente_TotalPedidos decimal(10,2))
		begin insert into clientes values (null, cliente_nome, cliente_telefone, cliente_email, cliente_TotalPedidos);
	end $
delimiter ;

delimiter $
	create trigger atualizarTotalPedidos
		before insert on pedido 
			for each row 
				begin 
					select cliente_TotalPedidos
			into @salvaValor 
				from clientes 
					where cliente_id = new.pedido_cliente_id;
            set @newValor = new.pedido_valor + @salvaValor;
		update clientes set cliente_TotalPedidos = @newValor where cliente_id = new.pedido_cliente_id;
        
	end $
delimiter ;


call InserirCliente("João", "123456789", "joao@gmail.com", 0.00);
call InserirCliente("Maria", "123", "maria@gmail.com", 10.00);
call InserirCliente("Mario", "542719", "mariobross@gmail.com", 40.00);
call InserirCliente("Lucia", "91427384", "Lulu@gmail.com", 0.00);
call InserirCliente("Felipe", "7832419", "massa@gmail.com", 2.00);
call InserirCliente("Matheus", "98764168", "matheus@gmail.com", 120.00);
call InserirCliente("Pedro", "567894", "pisca@gmail.com", 320.00);
call InserirCliente("Bianca", "187253437", "rbiana@gmail.com", 24.00);
call InserirCliente("Kaua", "996030", "kauahenrique7@gmail.com", 1000.00);
call InserirCliente("Gabriel", "6666666", "gabriel@gmail.com", 40.00);

call selecionarTudo("clientes");

call InserirPedido(190.00, '2023-01-01', 1);
call InserirPedido(290.00, '2023-02-02', 2);
call InserirPedido(390.00, '2023-03-03', 3);
call InserirPedido(490.00, '2023-04-04', 4);
call InserirPedido(590.00, '2023-05-05', 5);
call InserirPedido(690.00, '2023-06-06', 6);
call InserirPedido(790.00, '2023-07-07', 7);
call InserirPedido(890.00, '2023-08-08', 8);
call InserirPedido(990.00, '2023-09-09', 9);
call InserirPedido(1000.00, '2023-10-10', 10);

call selecionarTudo("clientes");