alter table db_desafio.movimentacao_financeira add column comentario varchar(50) not null default 'descricao vazia';

alter table db_desafio.movimentacao_financeira alter column comentario drop default;

alter table db_desafio.movimentacao_financeira modify column valor decimal (10,4);

ALTER TABLE db_desafio.movimentacao_financeira ADD column tipo_movimentacao enum('receita', 'despesa') default 'despesa';