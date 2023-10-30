create table produtos (
nome varchar(100),
preco_custo decimal (10,2),
preco_venda decimal (10,2),
validade date,
marca varchar(100)
);

insert into produtos values ("Leite Integral", 4.09, 5.49, "2023-12-12", "Italac"),("Leite Desnatado", 4.49, 5.99, "2023-11-18", "Italac"),("Leite Condensado", 4.99, 6.75, "2023-12-27", "Italac"),
("Chocolate em po", 9.99, 13.69, "2024-01-01", "Nestle"),("Molho de Tomate", 0.89,1.89, "2023-12-30", "Quero"),("Lata de milho", 4.49, 5.99, "2023-12-12", "Quero"),("Barra de chocolate", 4.09, 6.49, "2024-02-12", "Nestle"),
("Mostarda", "4.09", "5.49", "2023-12-12", "Quero");

create table marcas (
nome varchar(100),
email varchar(100),
telefone varchar(100)
);

insert into marcas values ("Italac", "italac@gmail.com", "(11)99999999"),("Quero", "queroltda@gmail.com", "(11)99876999"), ("Nestle", "nestle10@gmail.com", "(11)98888888")