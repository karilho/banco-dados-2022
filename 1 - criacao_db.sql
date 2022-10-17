use carrilho_db

CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `id_endereco` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientes_un` (`id_endereco`),
  CONSTRAINT `clientes_FK` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `CEP` char(8) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `conta_corrente` (
  `id_conta_corrente` int NOT NULL AUTO_INCREMENT,
  `codigo_do_banco` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `numero_da_conta` varchar(10) NOT NULL,
  `agencia` int NOT NULL,
  `apelido` varchar(100) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_conta_corrente`),
  KEY `conta_corrente_FK` (`id_cliente`),
  CONSTRAINT `conta_corrente_FK` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `movimentacao_financeira` (
  `id_movimentacao` int NOT NULL AUTO_INCREMENT,
  `valor_movimentacao` decimal(5,2) DEFAULT NULL,
  `conta_associada` int NOT NULL,
  `data_movimentacao` datetime NOT NULL,
  `categoria_movimentacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_movimentacao`),
  KEY `movimentacao_financeira_FK` (`conta_associada`),
  CONSTRAINT `movimentacao_financeira_FK` FOREIGN KEY (`conta_associada`) REFERENCES `conta_corrente` (`id_conta_corrente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

