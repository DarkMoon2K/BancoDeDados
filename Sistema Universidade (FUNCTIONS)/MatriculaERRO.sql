delimiter $
	create procedure novaMatricula(matricula_aluno_id int, matricula_curso_id int)
		begin
			select COUNT(matricula_aluno_id) into @matricula_ativa
              from matriculas as m
		     where m.matricula_aluno_id = matricula_aluno_id
               and m.matricula_status = "Ativa";
							if @matriculas_ativas_do_aluno = 0 then
							insert into matriculas
							values (null, "Ativa", matricula_aluno_id, matricula_curso_id);
						else
						signal sqlstate '45000'
                    set MESSAGE_TEXT = "Aluno ja matriculado! selecione outro", 
                    MYSQL_ERRNO = 2022;
				end if;
		end $
delimiter ;

call novaMatricula(1,3);