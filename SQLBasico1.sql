create database  db_generation_game_online;
 use db_generation_game_online;
 
 create table tb_Classes (
id bigint auto_increment,
    duelista varchar(255),
    controlador varchar(255),
    
    PRIMARY KEY (id)
);

insert into tb_Classes (duelista,controlador) values ("humano","humano");

insert into tb_Classes (duelista,controlador) values("Arqueiro", "Lentidão" );
insert into tb_Classes (duelista, controlador) values("Cavaleiro","Rastreador");
insert into tb_Classes (duelista,controlador) values("Fúria Caçador", "veloz");
insert into tb_Classes (duelista,controlador) values("Fumaça Celeste", "Fio-Armadilha");
insert into tb_Classes (duelista,controlador) values("Erupção Brumas", "Tenebrosos");

create table tb_Personagens (
id bigint auto_increment,
    nome varchar(255),
    classe varchar(255),
    vida int,
    ataque int,
    defesa int,
    forca int,
    classe_id bigint,
    PRIMARY KEY (id),
    CONSTRAINT fk_Classe foreign key(Classe_id) REFERENCES tb_Classes(id)
);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Brimstone"," Arqueiro",19000, 6000, 2000, 2500, 1);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Omen","Fumaça Celeste",25000,4000,5000,3500,2);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Viper","Cavaleiro", 15000, 80000, 4000, 9500,3);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Cypher","Erupção Brumas", 7000, 30000, 6000, 3500,4);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Jett","Tenebrosos", 45000, 40000, 4000, 7500,5);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Raze","Fio-Armadilha", 35000, 30000, 4000, 1500,1);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Phoenix","veloz",350000, 5000, 4000, 8300,2);
insert into tb_Personagens (nome,classe,vida,ataque,defesa,forca,classe_id) values("Reyna","Lentidão", 45000, 38000, 4000, 2300,3);

SELECT * FROM tb_Personagens WHERE ataque > 2000;

SELECT * from tb_Personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_Personagens WHERE nome LIKE "K%";

SELECT * FROM tb_Personagens INNER JOIN tb_Classes ON tb_Classes.id = tb_Personagens.Classe_id;

SELECT * FROM tb_Personagens INNER JOIN tb_Classes ON tb_Classes.id = tb_Personagens.Classe_id WHERE tb_Classes.funcao = "veloz";

