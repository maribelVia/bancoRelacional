-- A tabela cidades se relaciona com a tabela prefeitos, sendo o relacionamento 1 para 1
-- Esta tabela também se relaciona com a tabela estados, sendo o relacionamento 1 para n 
-- CREATE CIDADES
create table cidades(
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    area decimal (10,2),
    estado_id int unsigned not null,
    foreign key(estado_id) references estados(id),
    primary key(id)
);

--INSERT INTO
insert into cidades(nome, area, estado_id) values('Niterói', 133.9, 25);
insert into cidades(nome, area, estado_id)values('Caruaru', 920.6, (select id from estados where sigla='PE'));
insert into cidades(nome, area, estado_id)values('Juazeiro do Norte', 248.2, (select id from estados where sigla='CE'));

--UPDATE
update cidades set estado_id=15 where id=6;

--SELECT
select * from cidades;
select * from cidades c inner join prefeitos p on c.id = p.cidade_id;
select * from cidades c left join prefeitos p on c.id = p.cidade_id;
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
select * from cidades c left join prefeitos p on c.id = p.cidade_id
union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
select e.nome as Empresa, c.nome as Cidade from empresas e, empresas_unidades eu, cidades c 
where e.id = eu.empresa_id and c.id = eu.cidade_id
and sede;