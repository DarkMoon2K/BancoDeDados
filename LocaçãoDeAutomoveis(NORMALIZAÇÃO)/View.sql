create view tabelaCompleta as select l.cliente_veiculo_id,
			v.veiculo_modelo,
            v.veiculo_cor,
            v.veiculo_placa,
            v.veiculo_diaria,
            c.cliente_nome,
            c.cliente_cpf,
            c.cliente_nascimento,
            l.cliente_veiculo_dias
				from cliente_veiculo as l join veiculos as v
					on v.veiculo_id = l.cliente_veiculo_id
				join clientes as c on c.cliente_id = l.cliente_veiculo_id;
				
select * from tabelaCompleta;