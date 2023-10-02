-- Criando o Banco de Dados
CREATE DATABASE bancoDeDados02_10_2023;

-- Criando a tabela dos produtos
CREATE TABLE produtos (
id INT(10) primary key auto_increment,
nome VARCHAR(50) not null,
preco DECIMAL(8,2) not null,
estoque INT(10) not null,
perecivel CHAR not null,
marca VARCHAR(50),
nacionalidade VARCHAR(50)
);

-- Inserindo os produtos na tabela
INSERT INTO produtos (nome, preco, estoque, perecivel,marca,nacionalidade) values
 ("Oleo de soja 900ML", 6.99, 120, 'N', "Liza", "Brasileira"),
 ("Alface", 3.49, 50, 'S', null, null),
 ("Macarrão parafuso", 4.49, 200, 'N', "Dona Benta", "Brasileira"),
 ("Contra-File", 59.90, 50, 'S', "Estancia 92", "Brasileira"),
 ("Vinho tinto meio seco 750ML", 39.99, 20, 'N', "Tripantu", "Chilena");
 
 -- Contando a quantidade de produtos
 select count(id) from produtos;
 
 -- Pegando a media dos preços
 select avg(preco) as media_preco from produtos;
 
 -- Pegando a media dos preços porém separado por periciveis ou não
 select perecivel, avg(preco) as media_preco from produtos group by perecivel;
 
 -- Pegando a media dos preços agrupado pelo nome
 select nome, avg(preco) as media_preco from produtos group by nome;
 
 -- Media de preço e o total em estoque 
 select avg(preco) as media_preco, sum(estoque) as total_estoque from produtos;
 
 -- Filtrando o produto mais caro e pegando os dados dele
 select nome, marca, estoque from produtos where preco = (select max(preco) from produtos);
 
 -- Filtrando os produtos com preço acima da media 
 select * from produtos having preco > (select avg(preco) from produtos);
 
 -- Filtrando produtos por naciolidade e somando 
 select nacionalidade, sum(estoque) from produtos group by nacionalidade;