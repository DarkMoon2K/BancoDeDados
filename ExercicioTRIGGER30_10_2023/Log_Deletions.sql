create table Log_deletions (
id int primary key auto_increment,
titulo varchar(60),
quando datetime,
quem varchar(40)
);

delimiter $
create trigger Log_deletions after delete on Filmes
	for each row
    begin
    insert into Log_deletions values (null, old.titulo, sysdate(), user());
    end $
    delimiter ;
    
    delete from Filmes where id = 2;
    delete from Filmes where id = 4;

	select * from Log_deletions;