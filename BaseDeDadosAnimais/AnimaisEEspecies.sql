create table animais (
nome varchar(100),
data_de_nascimento date,
peso decimal (10,2)
);

insert into animais values ("Toto", '2018-07-13', 12.00), ("Rex", '2017-04-11', 18.00), ("Nina", '2020-02-01', 8.00), ("Larissa", '2022-12-13', 15.00),
 ("Mordecai", '2021-09-05', 12.00), ("Jujuba", '2019-04-13', 12.00), ("Bolinho", '2023-01-01', 20.00), ("Piquirito", '2021-06-30', 2.00);
 
 create table especies (
 nome varchar(100),
 descricao varchar(500)
 );
 
 insert into especies values ("Cachorro", "Melhor amigo do homem e faz AUAUAUAU"), ("Gato", "Não te ama de verdade, e sim seu lar e comida, faz MIUUUUUUUUUUUUU"), ("Calopsita", "Carisma, fala Piquirito e danca funk");