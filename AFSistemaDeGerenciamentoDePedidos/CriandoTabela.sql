create table clientes (
cliente_id int auto_increment primary key,
cliente_nome varchar(100) not null,
cliente_telefone varchar(100),
cliente_email varchar(100),
cliente_TotalPedidos  decimal (10,2)
);

create table pedido (
pedido_id int auto_increment primary key,
pedido_valor decimal (10,2),
pedido_data date,
pedido_cliente_id int,
constraint fk_pedido_cliente_id foreign key(pedido_cliente_id) references clientes(cliente_id)
);
