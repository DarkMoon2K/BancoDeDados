create table Filmes (
id int auto_increment primary key,
titulo varchar(100),
minutos int
);

delimiter $
create trigger chk_minutos before insert on Filmes
for each row
begin
	if new.minutos < 0 then 
		set new.minutos = null;
	end if;
	end$
delimiter ;