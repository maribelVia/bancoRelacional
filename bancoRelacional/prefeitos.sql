-- Esta tabela se relaciona com a tabela cidades, o relacionamento é de 1 para 1
--CREATE
create table prefeitos(
	id int not null auto_increment,
    nome varchar(255) not null,
    cidade_id int unsigned,
    primary key(id),
     unique key(cidade_id),
    foreign key(cidade_id) references cidades(id)
);

--INSERT INTO
insert into prefeitos
    (nome, cidade_id) 
values 
    ('Rodrigo Neves', 6), 
    ('Raquel Lira',7), 
    ('Zenaldo Coutinho',null),
    ('Rafael Greca', 1);

--SELECT
select * from prefeitos where cidade_id is not null;