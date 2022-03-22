--CREATE TABLE EMPRESAS
create table empresas(
	id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cnpj int unsigned,
    unique key(cnpj),
    primary key(id)
);

--ALTER TABLE, mudando CNPJ de int para varchar
alter table empresas modify cnpj varchar(14);

--INSERT INTO EMPRESAS
insert into empresas
	(nome, cnpj) 
values
	('Bradesco', '54878966223332'),
    ('Vale', '55568842212121'),
    ('Cielo', '004588799966');

--SELECT
select e.nome as Empresa, c.nome as Cidade from empresas e, empresas_unidades eu, cidades c 
where e.id = eu.empresa_id and c.id = eu.cidade_id
and sede;