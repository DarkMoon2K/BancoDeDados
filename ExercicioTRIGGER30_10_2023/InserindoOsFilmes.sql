insert into Filmes (titulo, minutos) values ("The terrible tigger", 120), ("O alto da compadecida", 135),
("Faroeste caboclo", 240), ("The matrix", 90), ("Blade Runner", -88), ("O labirinto do fauno", 110),
("Metropole", 0), ("A lista", 120);

delimiter $
create trigger chk_minutos before insert on Filmes
for each row
begin
	if new.minutos < 0 then
    
    signal SQLSTATE  "45000"
    set message_text = "Valor invalido para minutos",
    MYSQL_ERRNO = 2022;
    
    end if;
    end$
    
    delimiter ;

