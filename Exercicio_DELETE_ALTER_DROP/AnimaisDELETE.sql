CREATE DATABASE animaisDELETE09_10_2023;

CREATE TABLE especies (
raca VARCHAR(50) PRIMARY KEY,
decriacao VARCHAR (500)
);

CREATE TABLE animais(
id INT PRIMARY KEY,
nome VARCHAR(50),
nascimento DATE,
peso DECIMAL,
raca VARCHAR(50),
cor VARCHAR (20),



FOREIGN KEY(raca) REFERENCES especies(raca)
);

INSERT INTO especies VALUES ('gato', 'Miau miau'),('cachorro', 'Au au'), ('passaro', 'Piu piu');

/* Para está atividade duplique a base de dados utilizada na ATIVIDADE INDIVIDUAL – TEMA: BASE DE DADOS ANIMAIS;
Após a criação de uma nova base, execute os códigos abaixo: */
INSERT INTO animais VALUES (01, "Agata", '2015-04-09', 13.9, "cachorro",'preto'), (02, "Félix",'2016-06-06',14.3,'gato', 'laranja'),
(03, "Tom", '2013-02-08', 11.2,'gato', 'azul'),(04, 'Garfield', '2015-07-06', 300, 'gato', 'laranja'),(05,'Frajola', '2013-08-01', 13.7, 'cachorro', 'preto'),
(06, "Caio", '2012-02-03', 12.3,'passaro', 'amarelo'),(07,'Snowball','2014-04-06',13.2, 'passaro', 'azul'),(10, 'Pateta', '2015-08-03', 250, 'cachorro', 'cinza');

-- Mostrando a tabela
SELECT * FROM animais;

-- Altere o nome do Pateta para Goofy;
UPDATE animais SET nome = 'Goofy' WHERE nome = 'Pateta';
-- Altere o peso do Garfield para 10 quilogramas;
UPDATE animais SET peso = 10 WHERE nome = 'Garfield';
-- Altere a cor de todos os gatos para laranja;
UPDATE animais SET cor = 'laranja' WHERE raca = 'gato';
-- Crie um campo altura para os animais;
ALTER TABLE animais ADD altura DECIMAL;
-- Crie um campo observação para os animais;
ALTER TABLE animais ADD observacao VARCHAR(300);
-- Remova todos os animais que pesam mais que 200 quilogramas.
DELETE FROM animais WHERE peso > 200;
-- Remova todos os animais que o nome inicie com a letra ‘C’.
DELETE FROM animais WHERE nome LIKE 'C%';

-- Mostrando as primeiras alterações 
SELECT * FROM animais;

-- Remova o campo cor dos animais;
ALTER TABLE animais DROP COLUMN cor;
-- Aumente o tamanho do campo nome dos animais para 80 caracteres;
ALTER TABLE animais MODIFY nome VARCHAR(80);
-- Remova todos os gatos e cachorros
DELETE FROM animais WHERE raca = 'gato' OR raca = 'cachorro';
-- Remova o campo data de nascimento dos animais.
ALTER TABLE animais DROP COLUMN nascimento;

-- Mostrando as alterações 
SELECT * FROM animais;

-- Remova todos os animais.
DELETE FROM animais;

-- Remova a tabela especies.
ALTER TABLE animais DROP FOREIGN KEY animais_ibfk_1;
DROP TABLE especies;



