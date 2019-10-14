-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.2.3-MariaDB-log - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para receitasnet_development
CREATE DATABASE IF NOT EXISTS `receitasnet_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `receitasnet_development`;

-- Copiando estrutura para tabela receitasnet_development.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_development.ar_internal_metadata: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2019-10-13 22:56:47', '2019-10-13 22:56:47');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_development.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `recipe_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_fa790d5166` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_development.comments: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `name`, `rating`, `comment`, `recipe_id`, `created_at`, `updated_at`) VALUES
	(1, 'Paulo Xavier', 5, 'Delicioso', 1, '2019-10-13 22:56:50', '2019-10-13 22:56:50'),
	(2, 'Joana Santana', 4, 'Muito bom.', 1, '2019-10-13 22:56:50', '2019-10-13 22:56:50'),
	(3, 'Augusto Barros', 4, 'Gostoso', 1, '2019-10-13 22:56:50', '2019-10-13 22:56:50'),
	(4, 'Marta Freitas', 5, 'O melhor que já comi.', 3, '2019-10-13 22:56:50', '2019-10-13 22:56:50'),
	(5, 'Fabrício Mattos', 5, 'Delicioso!', 3, '2019-10-14 03:06:08', '2019-10-14 03:06:08');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_development.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `stuff` text DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prepare_mode` text DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `portion` varchar(255) DEFAULT NULL,
  `duration` datetime DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_development.recipes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`id`, `name`, `stuff`, `calories`, `created_at`, `updated_at`, `prepare_mode`, `cost`, `kind`, `portion`, `duration`, `poster`) VALUES
	(1, 'Estrogonofe de carne', '1 kg de carne,3 cebolas médias, sal e pimenta-do-reino a gosto, 2 latas de creme de leite, 2 colheres (sopa) de ketchup', 110, '2019-10-13 22:56:49', '2019-10-13 22:56:49', 'Em uma panela, adicione o óleo, a carne, a cebola, os tomates, o caldo de carne. Acrescente o ketchup e o champignon. Desligue o fogo e acrescente o creme de leite sem soro. Coloque em uma forma refratária e decore com tempero e batata palha. ', 50, 'Carnes', '5', '2016-05-06 03:40:00', 'estrogonofe-de-carne.jpg'),
	(2, 'Filé de Frango a parmegiana', '1/2 kg de filé de frango, 2 ovos batidos com 1 pitada de sal, 2 xícaras (chá) de farinha de rosca,1 caixinha de molho de tomate pronto, mussarela ', 160, '2019-10-13 22:56:49', '2019-10-13 22:56:49', 'Tempere os filés de frango com o alho, suco de limão, ervas finas e sal a gosto. Passe nos ovos batidos e na farinha de rosca. Frite em óleo. Coloque os filés em um refratário. Cubra com a mussarela. Regue com o molho e leve ao forno para derreter a mussarela. Retire e sirva ', 40, 'Aves', '8', '2016-05-06 03:35:00', 'file-frango-parmegiana.jpeg'),
	(3, 'Salmão ao forno', 'Sal marinho,Pimenta moída na hora, Azeite extra virgem, 2 filés de salmão 1.1kg com pele, sem escamas e espinhas, 2 limões', 100, '2019-10-13 22:56:49', '2019-10-13 22:56:49', 'Retire as espinhas do filé, passe o sal grosso e as ervas. Regue com o azeite e deixe temperando na geladeira por 1 h. Leve ao forno sem cobrir, de 180° a 200°, por no máximo 30 minutos, para não ressecar. Sirva com arroz de brócolis ou com cenourinha picada e cozida, refogada na manteiga', 60, 'Peixes', '4', '2016-05-06 03:50:00', 'salmao-forno.jpeg'),
	(4, 'Salada Light', 'alface, agrião, brócolis, um mix de folhas', 90, '2019-10-13 22:56:49', '2019-10-13 22:56:49', 'Misture todas as folhas em uma tigela, tempere e sirva.', 15, 'Saladas', '4', '2016-05-06 03:10:00', 'salada-light.jpeg'),
	(5, 'Fettuccine', '250g de Fettuccine, 70g bacon, 2 caixas de creme de leite, 3 colheres (sopa) de queijo ralado de saquinho (parmesão), 2 dentes de alho, 1 colher (de sopa) de manteiga/margarina, sal a gosto.', 280, '2019-10-13 22:56:49', '2019-10-13 22:56:49', 'Coloque o macarrão para cozinhar em água salgada, mas não deixe que fique muito mole (pois vai terminar de cozinhar no molho). Enquanto o macarrão cozinha frite o bacon (ou o que desejar) e reserve, na mesma panela adicione manteiga e refogue rapidamente o alho triturado, junte o creme de leite e misture em fogo baixo até que comece a querer levantar fervura. Adicione o queijo ralado, misture rapidamente para derreter um pouco o queijo. Adicione o fettuccine e o bacon e misture bem.', 50, 'Massas', '4', '2016-05-06 03:13:00', '');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_development.schema_migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20191011233746'),
	('20191012000514'),
	('20191012045535'),
	('20191013201138');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- Copiando estrutura do banco de dados para receitasnet_test
CREATE DATABASE IF NOT EXISTS `receitasnet_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `receitasnet_test`;

-- Copiando estrutura para tabela receitasnet_test.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_test.ar_internal_metadata: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'test', '2019-10-13 22:56:49', '2019-10-13 22:56:49');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_test.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `recipe_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_fa790d5166` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_test.comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_test.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `stuff` text DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prepare_mode` text DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `portion` varchar(255) DEFAULT NULL,
  `duration` datetime DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_test.recipes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;

-- Copiando estrutura para tabela receitasnet_test.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela receitasnet_test.schema_migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20191011233746'),
	('20191012000514'),
	('20191012045535'),
	('20191013201138');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
