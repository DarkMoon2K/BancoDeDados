create table filmes (
titulo varchar(100),
sinopse varchar(200),
estudio varchar(100),
categoria varchar(100)
);

insert into filmes values ("Homem de Ferro", "Gênio, bilinario, playboy e filantropo","Marvel","Ação"),
("Toy Story", "Sim você vai chorar num filme de brinquedo falante","Pixar","Aventura"), ("Velozes e Furisosos 35", "Alguem ainda assiste isso?", "Universal", "Ação"),
("Panico", "Ai medo, quem é o assasino?","Universal","Terror"), ("Guardioes da galaxia", "O guaxinim fala como assim???","Marvel","Ação"),
 ("Toy Story 2", "Sim você vai chorar num filme de brinquedo falante part 2 o inimigo agora é outro","Pixar","Aventura"),("Tropa de Elite", "Gringo em choque com a relidade do Brasil KKKK","Generico","Ação"),
 ("Hereditario", "Era so nào usar dorga moleque","Generico","Terror");
 
 
 create table categorias(
 nome varchar(100),
 publico_alvo varchar(100)
 );
 
 insert into categorias values ("Ação", "Adultos"), ("Aventura", "Crianças"), ("Terror", "Adolescentes");