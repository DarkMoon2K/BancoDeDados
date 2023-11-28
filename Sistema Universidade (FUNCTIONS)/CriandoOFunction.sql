delimiter $
	create function buscarCurso(
		curso_nome varchar(100), 
        curso_area varchar(100)
        )
        
		returns int deterministic
        begin
			select c.curso_id 
              into @curso_id from cursos as c
			 where LOWER(c.curso_nome) = LOWER(curso_nome)
               and LOWER(c.curso_area) = LOWER(curso_area);

			return @curso_id;
        end$
			
delimiter ;

select buscarCurso("Analise e Desenvolvimento de Sistemas", "Tecnologia");