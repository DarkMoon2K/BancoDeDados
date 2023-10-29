create table Pedidos (
IDPedido int auto_increment primary key,
DataPedido datetime,
NomeCliente varchar(100)
);

insert into Pedidos(DataPedido, NomeCliente) values 
(NOW(), "Cliente 1"),
(NOW(), "Cliente 2"),
(NOW(), "Cliente 3");

DELIMITER $
create trigger RegistroDataCriacaoPedido
before insert on Pedidos
for each row
begin
	set NEW.DataPedido = NOW();
end;
$
DELIMITER ;

insert into Pedidos(NomeCliente) values("Novo cliente");

select * from Pedidos;