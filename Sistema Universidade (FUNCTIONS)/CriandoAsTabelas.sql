create table cursos (
curso_id int primary key auto_increment,
curso_nome varchar(100),
curso_area varchar(100)
);

create table alunos (
aluno_id int primary key auto_increment,
aluno_nome_completo varchar(100),
aluno_primeiro_nome varchar(100),
aluno_ultimo_nome varchar(100),
aluno_email varchar(100)
);

create table matriculas (
matricula_id int primary key auto_increment,
matricula_status varchar(20),
matricula_aluno_id int,
matricula_curso_id int,
constraint fk_matricula_alunos_id foreign key (matricula_aluno_id) references alunos (aluno_id),
constraint fk_matricula_curso_id foreign key (matricula_curso_id) references cursos (curso_id)
);