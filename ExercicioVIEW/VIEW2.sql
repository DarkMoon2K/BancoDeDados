create or replace view view_estoque_baixo as
	select * from produtos as PROD
    where PROD.produto_qnt_estoque < PROD.produto_qnt_minimo;
    
alter table produtos add produto_validade DATE;

update produtos set produto_validade = "2024-01-01"
 where produto_id = 1;
 
 update produtos set produto_validade = "2024-02-02"
 where produto_id = 2;
 
 update produtos set produto_validade = "2024-03-03"
 where produto_id = 3;
 
 update produtos set produto_validade = "2024-04-04"
 where produto_id = 4;
 
 update produtos set produto_validade = "2023-09-01"
 where produto_id = 5;
 
 update produtos set produto_validade = "2023-10-01"
 where produto_id = 6;
 
 update produtos set produto_validade = "2024-07-07"
 where produto_id = 7;
 
 update produtos set produto_validade = "2023-08-01"
 where produto_id = 8;
 
 update produtos set produto_validade = "2024-09-09"
 where produto_id = 9;

 update produtos set produto_validade = "2024-10-10"
 where produto_id = 10;
 
 update produtos set produto_validade = "2024-01-01"
 where produto_id = 11;

 update produtos set produto_validade = "2024-12-12"
 where produto_id = 12;
 
 insert into produtos (produto_nome,produto_qnt_estoque,produto_qnt_minimo,
produto_data_fabricacao,produto_perecivel,produto_preco,produto_marca_id,produto_validade) values ("Mostarda 200g", 30, 5, "2023-01-10 12:00:00", true, 4.59, 4, "2024-12-12"),
("Sazon legumes", 50, 10, "2023-06-06 12:00:00", true, 5.49, 3, "2023-03-01");

create or replace view view_produtos_vencidos as
	select * from produtos as PROD
    left join marcas as MARC
    on MARC.marca_id = PROD.produto_marca_id
    where PROD.produto_validade <= NOW();
    
select * from view_estoque_baixo;
select * from view_produtos_vencidos;
select * from produtos having produto_preco > (select avg(produto_preco) from produtos);