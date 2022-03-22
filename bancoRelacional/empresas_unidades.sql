-- Esta tabela efetua a conexão entre a tabela empresas e a tabela cidades, 
-- a relação entre estas tabelas é de n para n
--CREATE, tabela que efetua a relação n pra n entre as tabelas empresas e cidades
create table empresas_unidades(
	empresa_id int unsigned not null,
    cidade_id int unsigned not null,
    sede tinyint(1) not null,
    primary key(empresa_id, cidade_id)
);

--INSERT INTO
insert into empresas_unidades
	(empresa_id, cidade_id, sede)
values
	(4,1,1),
    (5,7,1),
    (4,7,0),
    (6,8,0);

--SELECT
select e.nome as Empresa, c.nome as Cidade from empresas e, empresas_unidades eu, cidades c 
where e.id = eu.empresa_id and c.id = eu.cidade_id
and sede;