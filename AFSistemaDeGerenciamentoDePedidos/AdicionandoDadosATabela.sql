delimiter $
	create procedure inserirCliente(
		cliente_id int ,
        cliente_nome varchar(50),
        cliente_cpf varchar(100),
        cliente_nascimento date
        )
        begin insert into clientes values (cliente_id, cliente_nome, cliente_cpf, cliente_nascimento);
	end $
delimiter ; 

delimiter $
	create procedure inserirVeiculo(
		veiculo_id int ,
        veiculo_modelo varchar(100),
        veiculo_cor varchar(50),
        veiculo_placa varchar(10),
        veiculo_diaria decimal(10,2)
        )
        begin insert into veiculos values (veiculo_id, veiculo_modelo, veiculo_cor, veiculo_placa, veiculo_diaria);
	end $
delimiter ; 

delimiter $
	create procedure inserirCliente_Veiculo(
		cliente_veiculo_id int,
		cliente_veiculo_dias int,
		cli_vei_veiculo_id int,
		cli_vei_cliente_id int
        )
        begin insert into cliente_veiculo values (cliente_veiculo_id, cliente_veiculo_dias, cli_vei_veiculo_id, cli_vei_cliente_id);
	end $
delimiter ; 

call inserirCliente(1, '123.456.789-01', 'Ariana Susanna', '1022-05-21');
call inserirCliente(2, '543.765.987-23', 'Grace Hopper', '2002-04-29');
call inserirCliente(3, '987.654.231-90', 'Richard Feynman', '2001-10-12');
call inserirCliente(4, '432.765.678-67', 'Edgar Poe', '1998-12-14');
call inserirCliente(5, '927.384.284-44', 'Gordon Freeman', '1984-11-26');

call inserirVeiculo(11 ,'Fusca', 'Preto','WER-3456',30.00);
call inserirVeiculo(12, 'Variante', 'Rosa','FDS-8384', 60.00);
call inserirVeiculo(13, 'Comodoro', 'Preto','CVB-9933', 20.00);
call inserirVeiculo(14, 'Deloriam', 'Azul','FGH-2256', 80.00);
call inserirVeiculo(15, 'Brasilia', 'Amarela','DDI-3948', 45.00);

call inserirCliente_Veiculo(101, 3, 11, 1);
call inserirCliente_Veiculo(102, 7, 12, 2);
call inserirCliente_Veiculo(103, 1, 13, 3);
call inserirCliente_Veiculo(104, 3, 14, 4);
call inserirCliente_Veiculo(105, 7, 15, 5);


