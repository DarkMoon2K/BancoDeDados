create table clientes (
cliente_id int primary key,
cliente_nome varchar (100),
cliente_cpf varchar (50),
cliente_nascimento date
);

create table veiculos (
veiculo_id int primary key,
veiculo_modelo varchar (100),
veiculo_cor varchar (50),
veiculo_placa varchar (10),
veiculo_diaria decimal (10,2)
);

create table cliente_veiculo (
cliente_veiculo_id int primary key,
cliente_veiculo_dias int,
cli_vei_veiculo_id int,
cli_vei_cliente_id int,
constraint fk_cli_vei_veiculo_id foreign key (cli_vei_veiculo_id) references veiculos(veiculo_id),
constraint fk_cli_vei_cliente_id foreign key (cli_vei_cliente_id) references clientes(cliente_id)
);