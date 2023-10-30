create table alunos (
aluno_id int auto_increment primary key,
aluno_nome varchar(100) not null,
aluno_email varchar(100) not null,
primeiro_nome varchar(100),
sobrenome varchar(100)
);

create table cursos (
curso_id int auto_increment primary key,
curso_nome varchar(100)
);

create table professores (
professor_id int auto_increment primary key,
professor_nome varchar(100),
professor_salario decimal (10,2)
);

create table alunos_cursos (
alu_id int references alunos(aluno_id),
cur_id int references cursos(curso_id)
);

create table professores_cursos (
pro_id int references professores(professor_id),
curs_id int references curso(curso_id)
);
