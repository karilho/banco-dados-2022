INSERT INTO db_desafio.clientes (nome_completo,cpf,email,senha,data_nascimento,profissao,genero,id_endereco) VALUES
	 ('Lucas Almeida','12065465454','lucasalmeidao26@gmail.com','123456','1998-02-25','Desenvolvedor','M',1),
	 ('Karen Din','23984895945','karendin@gmail.com','1234','1997-03-27','Estudante','F',2),
	 ('Daniel Carlin','65989989898','danielc@gmail.com','659846','1992-03-14','Balconista','M',3),
	 ('Zed Silva','56545465665','zeddolol@gmail.com','32324545','1998-02-25','Atleta','M',4),
	 ('Neeko Runeterra','56564545','neekodolol@gmail.com','312321435','2000-01-21','Paisagista','F',5);

INSERT INTO db_desafio.endereco (CEP,rua,numero,complemento,bairro,cidade,estado,pais) VALUES
	 ('36044162','Rua Professor Aulindo Pereira',322,'casa','eldorados','Rio de Janeiro','Rio de Janeiro','Brasil'),
	 ('65544655','Rua Dos Pajós',21,'fundos','são josé','Cruzeiro','São Paulo','Brasil'),
	 ('26565654','Rua Summoner Rift',0,'','europa','Belo Horizonte','Minas Gerais','Brasil'),
	 ('56565546','Rua Estrada Cintilante',399,'ao lado da escola','vila das rosas','Mexico','Acapuco','Mexico'),
	 ('87879894','St Alphaville',99,NULL,'Engineers village','New York','New York','EUA');

INSERT INTO db_desafio.conta_corrente (codigo_do_banco,numero_da_conta,agencia,apelido,saldo,id_cliente) VALUES
	 ('237','11111',11,'Conta Kaka C',14.856,1),
	 ('032','22222',17,'Conta Karen P',11.247,2),
	 ('032','142',11,'Conta Poupanca N',115487.0,3),
	 ('032','1555',12,'Conta Z',1233120.0,4),
	 ('045','312312',42,'Conta Y',2121330.0,5),
	 ('045','114456',42,'Conta Kaka P',4545450.0,1),
	 ('045','45454545',17,'Conta Karen C',16.247,2),
	 ('032','15553234',12,'Conta P Z',4455790.0,4),
	 ('037','142',11,'Conta Poupanca N',115487.0,3),
	 ('037','224556',12,'Conta Y C',14878.0,5);


INSERT INTO db_desafio.movimentacao_financeira (valor_movimentacao,conta_associada,data_movimentacao,categoria_movimentacao,comentario,tipo_movimentacao) VALUES
	 (1004.0000,2,'2022-03-10 10:22:05','escola','santa catarina','despesa'),
	 (580.0000,2,'2022-10-11 05:31:06','salario','remuneracao do trabalho','receita'),
	 (1257.0000,3,'2022-08-10 18:22:05','escola','descricao vazia','despesa'),
	 (1500.0000,7,'2022-08-10 18:22:05','horas extras','horas extras trabalho','receita'),
	 (470.0000,5,'2022-09-04 06:31:06','salario','salario do mes','receita'),
	 (456.1100,1,'2022-01-27 16:31:06','gasolina trabalho','gasolina para ir pro TRE','despesa'),
	 (456.1100,3,'2022-09-03 11:01:06','lazer','Parque de diversoes','despesa'),
	 (413.0000,3,'2022-03-10 10:22:05','salario','salario do mes','receita'),
	 (411.0000,2,'2022-02-11 05:31:06','contas_mensais','Luz, agua telefone','despesa'),
	 (411.0000,3,'2022-10-11 05:31:06','contas_mensais','descricao vazia','despesa');
	 (400.0000,1,'2022-08-17 10:31:06','assinaturas','Netflix, spotify','despesa'),
	 (400.0000,4,'2022-10-27 05:31:06','passagem_aerea','viagem','despesa'),
	 (390.0000,4,'2022-06-10 15:22:05','salario','remuneracao do trabalho','receita'),
	 (320.0000,8,'2022-01-27 16:31:06','bico','trabalho bico','receita'),
	 (234.8700,3,'2022-09-02 10:31:06','transporte trabalho','descricao vazia','despesa'),
	 (224.0000,6,'2022-10-11 05:31:06','salario','salario do mes','receita'),
	 (221.5000,1,'2022-01-27 14:31:06','contas_mensais','gastos do mes','despesa'),
	 (220.0000,1,'2022-04-10 10:22:05','salario','salario do trabalho','receita'),
	 (111.0000,3,'2022-09-04 06:31:06','contas_mensais','Luz, condominio','despesa'),
	 (55.0000,5,'2022-10-04 05:31:06','trabalho','passagem por dia','despesa');

