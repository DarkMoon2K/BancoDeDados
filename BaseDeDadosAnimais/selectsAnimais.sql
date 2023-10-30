select * from animais;

select * from animais where peso < 13.1;

select * from animais where data_de_nascimento between '2015-02-01' and '2015-12-31';

select * from animais where cor = 'branco'and peso < 15;

select nome, cor, peso from animais where nome like 'B%';

select nome, cor, peso from animais where cor in ('vermelho', 'amarelo', 'marrom', 'laranja');

select nome, cor, data_de_nascimento from animais order by data_de_nascimento desc;

select * from animais where nome like 'C%' and cor <> 'branco';

select * from animais where nome like "%ba%";

select * from animais where peso between 13 and 15;

select * from animais where peso <= 30 and cor in ("amarelo", "roxo") and data_de_nascimento > year(2012);

select * from animais where (month(data_de_nascimento) = 12 and day(data_de_nascimento) >= 22) or (month(data_de_nascimento) = 1 and day(data_de_nascimento) <= 19);

select * from animais where nome like "%%"