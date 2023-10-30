delimiter $
	create procedure selecionarTudo(tabela varchar(100))
		begin set @query = concat("select * from ", tabela);
        prepare str from @query;
        execute str;
        deallocate prepare str;
        end $
delimiter ;

delimiter $
	create procedure novo_aluno(aluno_nome varchar(100))
		begin set @primeiro_nome = lower(substring_index(aluno_nome, " ", 1));
        set @sobrenome = lower(reverse(substring_index(reverse(aluno_nome), " ", 1)));
        
        select count(*)
        into @contador
        from alunos where @primeiro_nome = primeiro_nome and @sobrenome = sobrenome;
        
        set @aluno_email = case when @contador > 0
			then concat (@primeiro_nome, ".", @sobrenome, @contador, "@facens.com")
            else concat(@primeiro_nome, ".", @sobrenome, "@facens.com")
            end;
            
		insert into alunos values (null, aluno_nome, @aluno_email, @primeiro_nome, @sobrenome);
        end $
delimiter ;


call novo_aluno("Kauã Henrique Seraphim");
call novo_aluno("João Mario");
call novo_aluno("João Mario");
call novo_aluno("Maria Eduarda");
call novo_aluno("Matheus Henrique");
call novo_aluno("Bruno Henrique");


delimiter $
	create procedure novo_curso(curso_nome varchar(100))
    begin insert into cursos values (null, curso_nome);
    end $
delimiter ;


call novo_curso("Java");
call novo_curso("Python");
call novo_curso("MySQL");
call novo_curso("Swift");


delimiter $
	create procedure novo_professor(professor_nome varchar(100), professor_salario decimal(10,2))
    begin insert into professores values (null, professor_nome, professor_salario);
    end $
delimiter ;


call novo_professor("Nelio Oliveira", 5000);
call novo_professor("Lucas Moreira", 7000);
call novo_professor("Luiza Machado", 6500);


delimiter $
	create procedure novo_aluno_curso(aluno_id int, curso_id int)
    begin insert into alunos_cursos values (aluno_id, curso_id);
    end $
delimiter ;


call novo_aluno_curso(1,1);
call novo_aluno_curso(1,2);
call novo_aluno_curso(1,4);
call novo_aluno_curso(2,3);
call novo_aluno_curso(2,2);
call novo_aluno_curso(3,4);
call novo_aluno_curso(4,1);
call novo_aluno_curso(5,1);
call novo_aluno_curso(5,2);
call novo_aluno_curso(6,4);


delimiter $
	create procedure novo_professor_curso(professor_id int, curso_id int)
    begin insert into professores_cursos values (professor_id, curso_id);
    end $
delimiter ;

call novo_professor_curso(1,1);
call novo_professor_curso(1,2);
call novo_professor_curso(2,4);
call novo_professor_curso(2,3);
call novo_professor_curso(3,3);
call novo_professor_curso(3,4);


call selecionarTudo("alunos");
call selecionarTudo("cursos");
call selecionarTudo("professores");
call selecionarTudo("alunos_cursos");
call selecionarTudo("professores_cursos");