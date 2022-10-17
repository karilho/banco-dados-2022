/*buscar o nome dos clientes, email, a cidade onde ele mora, que não tiveram nenhuma movimentação dentro do mês atual. 
Quero isso para mandar um e-mail marketing para que eles voltem a usar o nosso sistema.*/

select nome_completo, email from db_desafio.clientes c 
where c.id not in(
select c.id from db_desafio.clientes
inner join endereco e on e.id_endereco = c.id_endereco 
inner join movimentacao_financeira mf on conta_associada = c.id
where month(data_movimentacao) = month(current_date))

/*buscar o nome e email dos clientes que mais tiveram a maior movimentação de receita do nosso sistema. 
Quero o top 5 clientes. E também a sua maior movimentação, 
exemplo: Fulano | fulano@gmail.com | 34000 Ciclano | ciclano@hotmail.com | 29000 e assim por diante. 
(assim eu acho os clientes que posso oferecer uma assinatura premium)*/

select nome_completo, email, max(valor_movimentacao), id_cliente from db_desafio.clientes c
inner join movimentacao_financeira mf on conta_associada = c.id 
inner join conta_corrente cc on cc.id_cliente = c.id 
group by c.nome_completo
order by max(valor_movimentacao) desc
limit 5;


/*fazer uma busca que descubra em qual dia do mês ocorre a maior parte das movimentações. 
(este dia é o dia que eu quero mandar meu email marketing mensal*/

select DAY(data_movimentacao) dia_maior_movimento, count(day(data_movimentacao)) quantidade_movimentacoes from db_desafio.movimentacao_financeira mf 
group by dia_maior_movimento
order by quantidade_movimentacoes desc
limit 1;

/*Caso algum cliente cancele a assinatura, e peça para eu excluir ele do sistema, eu como admin preciso, 
por lei, eliminar ele completamente do meu sistema. 
Me faz um script eu que eu, com posse do CPF do cliente, possa elimininar ele do meu banco de dados.*/

DELETE FROM db_desafio.clientes WHERE cpf=56564545;

/*criar um bloqueio, caso a movimentação financeira de algum cliente seja 300% maior do que a maior movimentação já feita pelo cliente, 
impedir a movimentação devido a uma possível fraude. 
Essa validação só faz sentido caso o cliente já possua mais de 10 movimentações.*/


