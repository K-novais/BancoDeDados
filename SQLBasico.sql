select @@version;

create database db_quitanda;

use db_quitanda;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    PRIMARY KEY (id)
);
insert into tb_produtos (nome,quantidade,preco) values ("melancia",100,12.00);
insert into tb_produtos (nome,quantidade,preco) values ("laranja",80,8.00);
insert into tb_produtos (nome,quantidade,preco) values ("morango",120,15.00);
insert into tb_produtos (nome,quantidade,preco) values ("banana",30,5.00);
insert into tb_produtos (nome,quantidade,preco) values ("manga",50,4.00);
insert into tb_produtos (nome,quantidade,preco) values ("kiwi",105,14.00);

select * from tb_produtos;

select nome from tb_produtos;

select nome,preco from tb_produtos;

select * from tb_produtos where id = 2;

select * from tb_produtos where preco >= 10.00;

select * from tb_produtos where preco >= 10.00 and quantidade <=100;

update tb_produtos set preco = 5.00 where id = 1;

delete from tb_produtos where id = 2;

alter table tb_produtos modify preco decimal(6,2);

ALTER TABLE tb_produtos ADD observacao varchar(255);

alter table tb_produtos drop observacao;

alter table tb_produtos change nome nomeproduto varchar(255);


create database db_Rh;
use db_Rh;
create table tb_Colaborador (
id bigint auto_increment,
    nome varchar(255) not null,
    idade int,
    CPF  varchar(20) not null,
    cargo varchar(20) not null,
    salario double,
    PRIMARY KEY (id)
);

insert into tb_Colaborador (nome,idade,CPF,cargo,salario) values ("roberto",28,25456,"motorista",2.800);
insert into tb_Colaborador (nome,idade,CPF,cargo,salario) values ("marcio",35,45623,"motorista",2.800);
insert into tb_Colaborador (nome,idade,CPF,cargo,salario) values ("thalles",30,36521,"ajudante geral",1.600);
insert into tb_Colaborador (nome,idade,CPF,cargo,salario) values ("camila",28,32556,"recepcionista",2.300);
insert into tb_Colaborador (nome,idade,CPF,cargo,salario) values ("vanessa",24,63541,"auxiliar geral",2.100);

select * from tb_Colaborador;

select * from tb_colaborador where salario >= 2.000;
select * from tb_colaborador where salario < 2.000;


create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classes(
    id bigint AUTO_INCREMENT,
    duelista varchar(255),
    controldar varchar(255),
    PRIMARY key(id)
);
insert into tb_Classes (duelista,controldar) values ("humano","humano");

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
    CONSTRAINT fk_classe foreign key(classe_id) REFERENCES tb_classes(id)
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

SELECT * FROM tb_Personagens INNER JOIN tb_classes ON tb_classes.id = tb_Personagens.classe_id;

SELECT * FROM tb_Personagens INNER JOIN tb_classes ON tb_classes.id = tb_Personagens.classe_id WHERE tb_classes.funcao = "veloz";
