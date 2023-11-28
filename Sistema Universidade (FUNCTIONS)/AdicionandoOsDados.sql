delimiter $
	create procedure inserirCurso(
	curso_nome varchar(100),
    curso_area varchar(100)
   )
	begin insert into cursos values (null,curso_nome, curso_area);
end $
delimiter ;

delimiter $
	create procedure inserirAluno(aluno_nome varchar(400))
		begin
			set @primeiroNome = LOWER(SUBSTRING_INDEX(aluno_nome, ' ', 1));
            set @ultimoSobrenome = LOWER(REVERSE(SUBSTRING_INDEX(REVERSE(aluno_nome), ' ', 1)));
            select COUNT(*) into @emailCount from alunos
			 where @primeiroNome = aluno_primeiro_nome 
               and @ultimoSobrenome = aluno_ultimo_nome;
            set @alu_email = 
				case
					when @emailCount > 0 
                    then CONCAT(@primeiroNome, '.', @ultimoSobrenome, @emailCount, '@facens.com')
					else CONCAT(@primeiroNome, '.', @ultimoSobrenome, '@facens.com')
				end;
			insert into alunos
			  	 values (NULL, aluno_nome, @primeiroNome , @ultimoSobrenome, @alu_email);
		end $
delimiter ;

delimiter $
	create procedure inserirMatricula(
		matricula_status varchar(20),
		matricula_aluno_id int,
        matricula_curso_id int)
        begin insert into matriculas values (null, matricula_status, matricula_aluno_id, matricula_curso_id);
	end $
delimiter ;

call inserirCurso("Analise e Desenvolvimento de Sistemas", "Tecnologia");
call inserirCurso("Engenharia Civil", "Exatas");
call inserirCurso("Historia", "Humanas");

call inserirAluno('Kauã Henrique Seraphim');
call inserirAluno("Tatiane Rodrigues");
call inserirAluno("Kleber Roberto");
call inserirAluno("Cristiana Santana");
call inserirAluno("Lucas Matheus");
call inserirAluno("João Silva");
call inserirAluno("Mario Amaral");
call inserirAluno("João Silva");
call inserirAluno("Giovanna Pereira");

call inserirMatricula("Ativa",1,1);
call inserirMatricula("Inativa",2,3);
call inserirMatricula("Inativa",3,2);
call inserirMatricula("Inativa",4,3);
call inserirMatricula("Ativa",5,1);
call inserirMatricula("Ativa",6,2);
call inserirMatricula("Ativa",7,2);
call inserirMatricula("Ativa",8,3);
call inserirMatricula("Inativa",9,3);
