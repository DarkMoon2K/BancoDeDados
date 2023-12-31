-- Criando o Banco de Dados
CREATE DATABASE cidadesAlunos09_10_2023;

-- Criando a tabela cidades
CREATE TABLE cidades (
id INT primary key,
nome VARCHAR (100) not null,
populacao INT
);

-- Criando a tabela alunos
CREATE TABLE alunos (
id INT primary key,
nome VARCHAR (100) not null,
data_nasc DATE,
cidade_id INT,
foreign key (cidade_id) references cidades(id)
);

-- Inserindo os valores das cidades
INSERT INTO cidades VALUES (1, "Arraial dos Tucanos" , 42632),(2, "Springfield", 13820), 
(3, "Hill Valley", 27383), (4, "Coruscant", 19138), (5,"Minas Tirith", 31394);

-- Inserindo os valores dos alunos
INSERT INTO alunos VALUES (1, "Immanuel Kant", '1724-04-22',4),(2, "Alan Turing", '1912-06-23',3),
(3,"George Boole", '2002-01-01',1),(4,"Lynn Margulis", '1991-08-12',3),(5,"Nicola Tesla", '2090-01-08', null),
(6, "Ada Lovelace", '1978-05-28',4),(7, "Claude Shannon", '1982-10-15',3),(8, "Charles Darwin", '2010-02-06',null),(
9, "Marie Curie", '2007-07-12', 3),(10, "Carl Sagan", '2000-11-20', 1), (11, "Tim Berners-Lee", '1973-12-05', 4), 
(12, "Richard Feynman", '1982-09-12',1);

-- Fazendo o JOIN das duas tabelas
SELECT * FROM alunos JOIN cidades on cidades.id = alunos.cidade_id