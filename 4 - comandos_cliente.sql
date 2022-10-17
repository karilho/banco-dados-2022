--  Uma query que busque todos os meus gastos do mês de agosto de 2022.

SELECT * FROM db_desafio.movimentacao_financeira mf
WHERE data_movimentacao BETWEEN '2022-08-01 00:00:00' and '2022-08-31 23:59:59';

-- Buscar todas as movimentações que tive do bradesco (código do banco 237), com a descrição da categoria.
SELECT valor_movimentacao, comentario, conta_associada  FROM db_desafio.movimentacao_financeira mf
inner join db_desafio.conta_corrente cc on cc.id_cliente  = mf.conta_associada 
where cc.codigo_do_banco = '237';

-- Buscar todas as minhas categorias que tenham "trabalho" em sua descrição. Quero buscar como "Trabalho" ou "trabalho" e 
--traga categorias como: "Gasolina para trabalho", "alimentação no Trabalho", "Futebol do trabalho".

select * from db_desafio.movimentacao_financeira mf 
where lower(categoria_movimentacao) like '%trabalho%';


-- Todas movimentações que tive no primeiro semestre deste ano.

select * from movimentacao_financeira mf 
where (MONTH(data_movimentacao) BETWEEN 1 AND 6) AND YEAR(data_movimentacao) = 2022;


-- Buscar as categorias (somente a descrição) que tiveram movimentação na primeira semana de setembro, sem repetição, 
--ordenada por ordem alfabética, desprezando espaços em branco antes e depois da descrição da categoria.

SELECT distinct trim(comentario)  FROM db_desafio.movimentacao_financeira mf
WHERE week(data_movimentacao ) = week('2022-09-01')
ORDER BY comentario ;

-- buscar a soma de todas as minhas despesa agrupadas por categoria (descrição), que tiveram pelo menos 1000 reais de gasto, 
--arredondando o valor para duas casas após a vírgula

select categoria_movimentacao, sum(round(valor_movimentacao, 2)), comentario  from movimentacao_financeira mf
inner join conta_corrente cc on cc.id_conta_corrente = mf.conta_associada
inner join clientes c ON c.id = cc.id_cliente 
where valor_movimentacao >= 1000 and mf.tipo_movimentacao = 'despesa'
group by categoria_movimentacao 


-- buscar as minhas últimas 5 receitas.

select nome_completo, categoria_movimentacao, valor_movimentacao, tipo_movimentacao from movimentacao_financeira mf
inner join clientes c ON c.id = mf.conta_associada 
where tipo_movimentacao = 'receita' 
limit 5;


-- buscar o valor da minha maior movimentação dentro deste mês.
select max(mf.valor_movimentacao) from movimentacao_financeira mf
where month(mf.data_movimentacao) = month(current_date());


-- buscar o nome da categoria mais movimentada, por mês, no ano de 2020. 
-- Ex mes | categoria | valor movimentado 
-- janeiro | restaurante | 1200 
-- fevereiro | moradia | 1300 marco | viagem | 5600

select mf.categoria_movimentacao, monthname(mf.data_movimentacao), max(valor_movimentacao), mf.comentario  from conta_corrente cc 
inner join movimentacao_financeira mf on mf.conta_associada = cc.id_cliente 
where cc.id_cliente  = 2
group by month (data_movimentacao);


-- Quero saber qual o saldo das minhas contas. Exemplo: Nubank | 1200 Itaú | -300 Santander | 450

select apelido, saldo from db_desafio.conta_corrente cc 

