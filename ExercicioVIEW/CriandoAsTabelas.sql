create table marcas (
marca_id int auto_increment primary key,
marca_nome varchar(50) not null,
marca_nacionalidade varchar(50)
);

insert into marcas (marca_nome, marca_nacionalidade) values ("Italac", "Brasil"),
("Nestle", "Suiça"), ("Ajinomoto", "Japão"), ("Quero", "Brasil");

create table produtos (
produto_id int auto_increment primary key,
produto_nome varchar(50) not null,
produto_qnt_estoque int not null,
produto_qnt_minimo int not null,
produto_data_fabricacao timestamp,
produto_perecivel boolean,
produto_preco decimal(10,2),
produto_marca_id int,
constraint fk_marcas foreign key(produto_marca_id) references marcas(marca_id)
);

insert into produtos (produto_nome,produto_qnt_estoque,produto_qnt_minimo,
produto_data_fabricacao,produto_perecivel,produto_preco,produto_marca_id) values ("Leite condensado", 50, 10, "2023-01-01 23:59:00", true, 5.99, 1),
("Creme de leite", 100, 10, "2023-01-01 23:59:00", true, 4.49, 1), ("Leite integral 1L", 12, 20, "2023-01-01 23:59:00", true, 4.99, 1),
("Molho de tomate", 70, 25, "2023-06-01 12:00:00", true, 1.99, 4), ("Milho em lata", 50, 5, "2023-03-10 09:00:00", true, 5.99, 4),
("Ketchup 400g", 5, 10, "2022-12-30 23:59:00", true, 6.99, 4), ("Caixa de bombom", 60, 10, "2023-01-01 23:59:00", true, 12.99, 2),
("Nescau 400g", 40, 5, "2023-06-23 21:00:00", true, 7.99, 2), ("Barra de chocolate", 20, 3, "2023-03-23 17:27:00", true, 6.49, 2),
("Sazon tradicional", 15, 30, "2023-07-15 20:12:00", true, 5.49, 3), ("Ajisal refinado", 30, 9, "2023-05-18 16:21:00", true, 11.99, 3),
("Realçador de sabor", 13, 7, "2023-01-01 23:59:00", true, 6.99, 3);

create table fornecedores (
forn_id int auto_increment primary key,
forn_nome varchar(100) not null,
forn_email varchar(100)
);

insert into fornecedores (forn_nome, forn_email) values ("CompreFacil", "comprefacil@gmail.com"),
("Comercial Esperança", "esperança12@gmail.com"), ("Fotomix", "mix@gmail.com");

create table produtos_fornecedores (
prod_id int references produtos(produto_id),
fnc_id int references fornecedores(forn_id)
);

insert into produtos_fornecedores (prod_id, fnc_id) values 
(1,1),(1,2),
(2,1),(2,2),
(3,1),(3,2),
(4,1),(5,1),
(5,2),(6,3),
(6,1),(7,1),
(8,3),(8,2),
(9,1),(9,3),
(10,2),(11,1),
(11,2),(12,3);

