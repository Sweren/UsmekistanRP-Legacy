-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for extendedmode
CREATE DATABASE IF NOT EXISTS `extendedmode` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `extendedmode`;

-- Dumping structure for table extendedmode.account_info
CREATE TABLE IF NOT EXISTS `account_info` (
  `steam64_hex` varchar(30) NOT NULL,
  `rp_name` varchar(100) DEFAULT NULL,
  `steam_name` varchar(100) DEFAULT NULL,
  `rockstar` varchar(50) DEFAULT NULL,
  `ipv4` varchar(20) DEFAULT NULL,
  `online_time` mediumint(9) DEFAULT 0,
  `last_connection` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`steam64_hex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.account_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_info` ENABLE KEYS */;

-- Dumping structure for table extendedmode.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.addon_account: ~40 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'Caution', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('club_lmc_bank', 'LMC', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('club_lmc_black', 'LMC Black', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('club_lmc_priv', 'LMC Priv', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('club_lmc_pub', 'LMC Pub', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('property_black_money', 'Argent Sale Propriété', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('secworker', 'SecWorker', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_LODE', 'LODE', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_LODE_black', 'LODE_black', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_abuelocorp', 'abuelocorp', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'Ambulance', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_avocat', 'avocat', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_blackeagles', 'blackeagles', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_bulldogs', 'bulldogs', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Concessionnaire', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_carteldellago', 'carteldellago', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_carteldemedellin', 'carteldemedellin', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_casino', 'Casino', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_centauros', 'centauros', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_compayasos', 'compayasos', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_darklotus', 'darklotus', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_families', 'families', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_fbi', 'FBI', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_flortarmy', 'flortarmy', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_gace', 'gace', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_gouv', 'Gobierno', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_guardiaroja', 'guardiaroja', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_lamanada', 'lamanada', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_manonegra', 'manonegra', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_marabunta', 'marabunta', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mécano', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_realestateagent', 'Bienes raices', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_royalreapers', 'royalreapers', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_sheriff', 'sheriff', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_sijin', 'sijin', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_state', 'Estado', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_vagos', 'vagos', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_vercetti', 'vercetti', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_vercetti_black', 'vercetti_black', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_weazelnews', 'Weazel News', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table extendedmode.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.addon_account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table extendedmode.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.addon_inventory: ~35 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('club_lmc', 'LMC', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('club_lmc_priv', 'LMC Private', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('club_lmc_pub', 'LMC Public', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('secworker', 'SecWorker', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_LODE', 'LODE', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_abuelocorp', 'abuelocorp', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'Ambulance', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_avocat', 'avocat', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_blackeagles', 'blackeagles', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_bulldogs', 'bulldogs', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Concesionnaire', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_carteldellago', 'carteldellago', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_carteldemedellin', 'carteldemedellin', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_casino_fridge', 'casino (frigo)', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_centauros', 'centauros', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_compayasos', 'compayasos', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_darklotus', 'darklotus', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_families', 'families', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_fbi', 'FBI', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_flortarmy', 'flortarmy', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_gace', 'gace', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_guardiaroja', 'guardiaroja', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_lamanada', 'lamanada', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_manonegra', 'manonegra', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_marabunta', 'marabunta', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mécano', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_royalreapers', 'royalreapers', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_sheriff', 'sheriff', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_sijin', 'sijin', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_state', 'Estado', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_vagos', 'vagos', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_vercetti', 'vercetti', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_weazelnews', 'Weazel News', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table extendedmode.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table extendedmode.allhousing
CREATE TABLE IF NOT EXISTS `allhousing` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `owned` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `resalepercent` int(11) NOT NULL,
  `resalejob` varchar(50) NOT NULL,
  `entry` longtext DEFAULT NULL,
  `garage` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `shell` varchar(50) NOT NULL,
  `interior` varchar(50) NOT NULL,
  `shells` longtext DEFAULT NULL,
  `doors` longtext DEFAULT NULL,
  `housekeys` longtext DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `inventorylocation` longtext DEFAULT NULL,
  `mortgage_owed` int(11) NOT NULL DEFAULT 0,
  `last_repayment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.allhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `allhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `allhousing` ENABLE KEYS */;

-- Dumping structure for table extendedmode.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table extendedmode.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.bought_houses: ~3 rows (approximately)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
INSERT INTO `bought_houses` (`houseid`) VALUES
	(159);
INSERT INTO `bought_houses` (`houseid`) VALUES
	(217);
INSERT INTO `bought_houses` (`houseid`) VALUES
	(353);
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Dumping structure for table extendedmode.businesses
CREATE TABLE IF NOT EXISTS `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(75) NOT NULL,
  `blipname` varchar(75) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `earnings` int(11) NOT NULL,
  `position` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stock_price` int(11) NOT NULL DEFAULT 100,
  `employees` text NOT NULL,
  `taxrate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.businesses: ~21 rows (approximately)
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(18, 'Sex Shop Caramelito', 'Distrito 583, Calle Norte', 'La sex shop más importante de la ciudad', 'Sex Shop Caramelito', 'steam:110000109176275', 250000, 16000, '{"buy":{"y":-212.27793884277345,"z":54.385032653808597,"x":144.62831115722657},"actions":{"y":-212.27793884277345,"z":54.385032653808597,"x":144.62831115722657}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(19, 'Vane Store', 'Distrito 204, Garaje Central', 'El establecimiento comercial líder en venta de elementos de belleza', 'Vane Store', 'steam:110000103a3dfb4', 250000, 16000, '{"buy":{"y":-754.814453125,"z":30.82174301147461,"x":257.383544921875},"actions":{"y":-754.814453125,"z":30.82174301147461,"x":257.383544921875}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(20, 'La Arepita Rica de Diana', 'Distrito 305, Playa de Diana', 'Establecimiento especializado en venta de arepas de Diana', 'La Arepita Rica de Diana', 'steam:1100001193b06d9', 250000, 16000, '{"actions":{"x":-1300.4915771484376,"y":-1381.091064453125,"z":4.4844136238098148},"buy":{"x":-1300.4915771484376,"y":-1381.091064453125,"z":4.4844136238098148}}', 0, 800, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(22, 'Boutique Saenz', 'Distrito 539, Las Lagunas Blvd.', 'Una de las tiendas de ropa más cotizadas de toda la ciudad', 'Boutique Saenz', 'steam:11000013e44f808', 250000, 16000, '{"actions":{"z":39.1016845703125,"y":-302.29290771484377,"x":-151.33392333984376},"buy":{"z":39.1016845703125,"y":-302.29290771484377,"x":-151.33392333984376}}', 0, 800, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(23, 'Modalove', 'Distrito 583, Hawick Av.', 'La mejor tienda de ropa de Usmekistan', 'Modalove', 'steam:110000103a3dfb4', 250000, 16000, '{"actions":{"x":132.5166778564453,"y":-207.462890625,"z":54.490726470947269},"buy":{"x":132.5166778564453,"y":-207.462890625,"z":54.490726470947269}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(24, 'Cocobank', 'Distrito 583, Hawick Av.', 'Tu crédito fácil, rapido y seguro', 'Cocobank', 'steam:110000109176275', 250000, 16000, '{"actions":{"x":96.94109344482422,"y":-222.7670135498047,"z":54.63676452636719},"buy":{"x":96.94109344482422,"y":-222.7670135498047,"z":54.63676452636719}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(25, 'M&M', 'Distrito 670, Rockford Hills', 'Los mejores servicios de comidad personal en la ciudad', 'M&M', 'steam:11000011c2766a1', 125000, 8000, '{"actions":{"y":-260.7724914550781,"z":37.02098083496094,"x":-822.4636840820313},"buy":{"y":-260.7724914550781,"z":37.02098083496094,"x":-822.4636840820313}}', 0, 400, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(26, 'Maze Bank', 'Distrito 636, Marathon Av.', 'El banco principal del Estado', 'Maze Bank', 'steam:11000013f93652e', 250000, 16000, '{"buy":{"z":31.046947479248048,"x":-1377.75927734375,"y":-514.8333129882813},"actions":{"z":31.046947479248048,"x":-1377.75927734375,"y":-514.8333129882813}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(27, 'Saenz Garcia Industries', 'Distrito 636, South Blvd. El Perro', 'El pináculo de la tecnología de la ciudad', 'Saenz Garcia Industries', 'steam:11000013e44f808', 250000, 16000, '{"buy":{"z":37.72288131713867,"x":-1087.6136474609376,"y":-265.73529052734377},"actions":{"z":37.72288131713867,"x":-1087.6136474609376,"y":-265.73529052734377}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(28, 'Pereiranas VIP', 'Distrito 133', 'Que se aun club de caballeros no significa que tengas que serlo...', 'Pereiranas VIP', 'steam:110000111a3950e', 250000, 16000, '{"actions":{"y":-1307.0662841796876,"x":121.08564758300781,"z":29.232725143432618},"buy":{"y":-1307.0662841796876,"x":121.08564758300781,"z":29.232725143432618}}', 0, 800, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(29, 'Usmekistan Tour', 'Distrito 207', 'Mostrando felicidad desde 1857', 'Usmekistan Tour', 'steam:11000010ebb727c', 125000, 8000, '{"actions":{"y":-668.4848022460938,"x":412.5935363769531,"z":29.27748680114746},"buy":{"y":-668.4848022460938,"x":412.5935363769531,"z":29.27748680114746}}', 0, 400, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(30, 'Lulu Pets', 'Distrito 583, Hawick Av.', 'La tienda de mascotas más famosa de toda la ciudad.', 'Lulu Pets', 'steam:110000103a3dfb4', 250000, 16000, '{"buy":{"z":54.63676071166992,"y":-219.86563110351563,"x":88.44029998779297},"actions":{"z":54.63676071166992,"y":-219.86563110351563,"x":88.44029998779297}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(31, 'Importación de vehículos exóticos y antiguos Paco Perez', 'Distrito 101, Taller', ' ', 'Importación exóticos y antiguos', 'steam:11000014065436f', 125000, 8000, '{"actions":{"z":31.288467407226564,"x":-160.8612060546875,"y":-1293.830810546875},"buy":{"z":31.288467407226564,"x":-160.8612060546875,"y":-1293.830810546875}}', 0, 400, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(32, 'Noufamily', 'Distrito 372', 'Entras y te diviertes, consigues lo que quieras sabemos sobre la diversión,', 'Noufamily', 'steam:1100001423a7cb5', 125000, 8000, '{"buy":{"x":-585.1002197265625,"y":-870.2996215820313,"z":25.667640686035158},"actions":{"x":-585.1002197265625,"y":-870.2996215820313,"z":25.667640686035158}}', 0, 400, '["steam:110000117f8e6e9"]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(33, 'EnegryTEC', 'Distrito 210. Atlee St.', 'Todo lo referente a tecnología y electricidad de redes', 'EnegryTEC', 'steam:110000114f4b7f6', 125000, 8000, '{"buy":{"z":29.311071395874025,"y":-995.0829467773438,"x":333.2145080566406},"actions":{"z":29.311071395874025,"y":-995.0829467773438,"x":333.2145080566406}}', 0, 400, '["steam:11000013f981993"]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(34, 'Concesionario VIP', 'Distrito 682', ' ', 'Concesionario VIP', 'steam:110000141f28580', 250000, 16000, '{"actions":{"x":-811.2618408203125,"y":-217.45872497558595,"z":37.3040771484375},"buy":{"x":-811.2618408203125,"y":-217.45872497558595,"z":37.3040771484375}}', 0, 800, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(35, 'Familia Hispano', 'Distrito 125', 'El GYM, para mejorar tus meteoritos', 'Familia Hispano', 'steam:110000103a3dfb4', 250000, 16000, '{"buy":{"x":-43.46200942993164,"y":-1285.935302734375,"z":29.06296730041504},"actions":{"x":-43.46200942993164,"y":-1285.935302734375,"z":29.06296730041504}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(36, 'Autolavado', 'Distrito 126', 'El principal centro de limpieza de vehículos', 'Autolavado', 'steam:110000144471df0', 250000, 16000, '{"actions":{"x":46.883445739746097,"y":-1383.97900390625,"z":29.29153060913086},"buy":{"x":46.883445739746097,"y":-1383.97900390625,"z":29.29153060913086}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(37, 'Zuluaga S.A.', 'Distrito 18', 'Servicios de logistica nacional e internacional', 'Zuluaga S.A.', 'steam:110000133cdc799', 250000, 16000, '{"actions":{"z":6.09605598449707,"y":-3106.9580078125,"x":1198.250244140625},"buy":{"z":6.09605598449707,"y":-3106.9580078125,"x":1198.250244140625}}', 0, 800, '[]', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(38, 'Bahamas Mamas', 'Distrito 628', 'Vive tus fantasias', 'Bahamas Mamas', 'steam:110000111a3950e', 125000, 8000, '{"actions":{"z":30.264280319213868,"y":-587.7503662109375,"x":-1393.439453125},"buy":{"z":30.264280319213868,"y":-587.7503662109375,"x":-1393.439453125}}', 0, 800, '{}', 0.21);
INSERT INTO `businesses` (`id`, `name`, `address`, `description`, `blipname`, `owner`, `price`, `earnings`, `position`, `stock`, `stock_price`, `employees`, `taxrate`) VALUES
	(39, 'Concesionario VIP', 'Distrito 682', ' ', 'Concesionario VIP', 'steam:11000013e0b3b87', 125000, 8000, '{"buy":{"x":-815.1983032226563,"y":-210.9056854248047,"z":37.366172790527347},"actions":{"x":-815.0790405273438,"y":-210.83155822753907,"z":37.366233825683597}}', 0, 800, '[]', 0.21);
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;

-- Dumping structure for table extendedmode.bwh_bans
CREATE TABLE IF NOT EXISTS `bwh_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.bwh_bans: ~26 rows (approximately)
/*!40000 ALTER TABLE `bwh_bans` DISABLE KEYS */;
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(1, '["steam:110000116adf4c5","license:32964b79426f8622c7362d35065bdaa04575c8ed","xbl:2533274917151370","live:1759221630446633","discord:388930281534390275","fivem:613150","license2:1e18b6e6649e2efd6c165072f81aac79fea901bc","ip:181.130.208.227"]', 'steam:11000010a412a06', '2021-01-11 05:47:00', 'asesinato a un civil, abuso de rango, perro y gato', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(2, '["steam:11000013e901f6d","license:ce7a97fede1c660010c4c595604447e3f3d14b09","xbl:2535426994223597","live:308999824194987","discord:521394711982899201","license2:ce7a97fede1c660010c4c595604447e3f3d14b09","ip:186.112.203.34"]', 'steam:1100001149c0473', '2021-01-17 21:30:00', 'PG', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(3, '["steam:1100001449c5939","license:97777ec745e76d9ac08f81616739193f8613ea66","discord:520433457143218207","ip:181.62.212.90"]', 'steam:1100001075a632d', '2021-01-13 15:59:00', 'Robar auto sin permiso ', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(5, '["steam:11000013d55d21d","license:6be2c7088f50037200d9f1f6815cac7708155a03","discord:500497025620508682","license2:6be2c7088f50037200d9f1f6815cac7708155a03","ip:179.15.156.160"]', 'steam:11000010a412a06', '2021-02-11 19:38:00', 'Restablecimiento de ban (Sweren)', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(6, '["steam:110000117252f7f","license:fcce2a8cdd4fc4c1e480381ec322293a755db87e","xbl:2535420962230009","live:1055518304698132","discord:729527977318154310","ip:181.59.40.148"]', 'steam:1100001149c0473', '2021-01-15 20:11:00', 'Llevar armamento policial - Segundo strike', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(7, '["steam:1100001149c0473","license:70befdf30ae9953e3dcba2f2277ed8dd4cd6f735","xbl:2535430068703325","live:844428515750004","discord:461160866310520853","ip:51.159.31.33"]', 'steam:110000111a3950e', '2021-01-15 13:18:00', 'Test', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(8, '["steam:1100001149c0473","license:70befdf30ae9953e3dcba2f2277ed8dd4cd6f735","xbl:2535430068703325","live:844428515750004","discord:461160866310520853","ip:51.159.31.33"]', 'steam:110000111a3950e', '2021-01-15 13:18:00', 'Test', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(9, '["steam:110000105c6edee","license:5f0c96ea5389030b94a567947651f3f52773d49b","ip:95.23.79.125","discord:708370939091484772","live:1688852685669424","xbl:2533274870066881"]', 'steam:11000010a412a06', NULL, 'Protocolo de Seguridad', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(10, '["steam:1100001449c5939","license:97777ec745e76d9ac08f81616739193f8613ea66","discord:520433457143218207","license2:13edfe62fa2c2fefc49076ecd3760b01f8a671fc","ip:181.62.212.90"]', 'steam:110000111a3950e', '2021-01-18 16:25:00', 'Evadir rol de entorno y evadir rol a la policia', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(11, '["steam:11000014091e5a5","license:2096668611c60c7ed896c222ac52d1d88e5c2485","xbl:2535448448279373","live:1829582820862867","discord:662444881758650368","license2:27cc29e574aee3d28ec776bf61921bacc3a77a48","ip:190.84.117.133"]', 'steam:110000135e2d2d2', '2021-01-20 00:00:00', 'Mal uso del twt', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(12, '["steam:1100001402296a1","license:cc6675dfa838f98ab28433c377302d1f69403d1d","xbl:2535411502990028","live:844425585153391","discord:664285143103701023","license2:cc6675dfa838f98ab28433c377302d1f69403d1d","ip:178.32.9.100"]', 'steam:110000135e2d2d2', '2021-01-20 00:00:00', 'Mal uso del twt', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(13, '["steam:11000013c9e2674","license:e837f0290022f5c5fa69f2705e2b0e1685e8b7d3","xbl:2535471438048683","live:985154329457406","discord:762085218831826945","license2:e837f0290022f5c5fa69f2705e2b0e1685e8b7d3","ip:181.134.193.79"]', 'steam:110000135e2d2d2', '2021-01-20 00:00:00', 'Mal uso del twt', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(14, '["steam:11000013d6a2dd4","license:435af548ce916f78e576e4fa8c64172582785ad5","xbl:2535431788399908","live:1899947320711855","discord:450114299776466966","license2:435af548ce916f78e576e4fa8c64172582785ad5","ip:200.69.70.196"]', 'steam:110000111a3950e', '2021-01-25 17:48:00', 'Uso de MG con la herramienta DNI', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(16, '["live:308999824194987","ip:186.170.99.168","license:ce7a97fede1c660010c4c595604447e3f3d14b09","discord:521394711982899201","steam:11000013e901f6d","xbl:2535426994223597"]', 'steam:1100001149c0473', '2021-02-22 18:42:00', 'Iniciar rol agresivo en zona segura y tirar del cable al ser reportado', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(17, '["steam:110000110939278","license:a5930da3fcdbc01e663274b39a2bbefc41fabf3b","discord:273726872683020288","license2:a5930da3fcdbc01e663274b39a2bbefc41fabf3b","ip:178.33.224.212"]', 'steam:110000111005e5a', '2021-01-25 16:31:00', 'Pg andar con rueda pinchada  y no rolear accidente', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(19, '["steam:1100001161eaef3","license:3527da348807c3fc380b566f287e340fbf80d3f3","discord:312743942712197120","license2:cf3feffbf2b0175c9654326b7acc5e456d5f0240","ip:190.158.172.7"]', 'steam:110000111a3950e', '2021-02-23 22:34:00', 'No hacer /entorno', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(21, '["fivem:1354018","xbl:2535471319695871","discord:328737073538531331","steam:110000107000aca","ip:181.53.12.247","live:1055520620223561","license:a0166af96c07cd0dfdd0e4eb985eca465984f7db"]', 'steam:110000111005e5a', '2021-01-27 02:56:00', 'Utilizar carro federal', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(22, '["steam:110000134e2a1f8","license:64be0a3dcac5d77d39922ebe392f72c1309c4a7d","xbl:2535422597065590","live:1759222855592249","discord:282882915434758147","license2:64be0a3dcac5d77d39922ebe392f72c1309c4a7d","ip:186.30.43.28"]', 'steam:110000111a3950e', '2021-01-28 13:09:00', 'Evadir rol de entorno en comisaria', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(23, '["steam:11000013b0228ca","license:319adb910ffb4d6737f46ddb7f5df1035bcc8d11","xbl:2535466217240648","live:914801820858799","discord:548694723473309706","license2:319adb910ffb4d6737f46ddb7f5df1035bcc8d11","ip:181.112.107.96"]', 'steam:11000013edc8204', '2021-01-29 19:02:00', 'Falso calladmin, Ingresar a GC, Evadir Rol Todo grabado.', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(24, '["license:85f24c7a447537166527eb7d4c7949889ada421d","discord:741747441665048576","steam:1100001444aa23d","ip:181.51.32.28"]', 'steam:110000111005e5a', '2021-02-05 01:08:00', 'PG- Subir montaña con carro deportivo', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(25, '["discord:312743942712197120","steam:1100001161eaef3","ip:190.158.172.7","license:3527da348807c3fc380b566f287e340fbf80d3f3"]', 'steam:110000111005e5a', '2021-01-30 23:25:00', 'asd', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(27, '["steam:1100001183c1cf2","license:8a5e8c9b6908e9009d63ccee46e872aee6cda8bf","discord:521687741650436097","license2:8a5e8c9b6908e9009d63ccee46e872aee6cda8bf","ip:181.53.12.41"]', 'steam:1100001149c0473', '2021-01-31 07:05:00', 'Hacer actos ilegales sin policia disponible', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(28, '["steam:110000141f763a5","ip:181.142.21.229","license:a5b79dcac60a10a7715a93f174d977b48102c658","discord:719275306103603281"]', 'steam:110000111005e5a', '2021-02-06 15:03:00', 'Llamar a taxista para robar, desconectarse delante del staff, matar adelante del staff sin motivo', 1);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(29, '["steam:110000141f763a5","ip:181.142.21.229","license:a5b79dcac60a10a7715a93f174d977b48102c658","discord:719275306103603281"]', 'steam:11000011a228857', '2021-03-02 13:19:00', 'strike atracar en llamado de taxista, strike Matar sin motivo en frente del staff sin motivo Salirse al momento de sancion y faltar al respeto a staff', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(30, '["steam:110000134cb8f51","license:8029250e4058e5545b6717e2b956254cada7e268","xbl:2535436564040041","live:1829582678353034","discord:370253648908779520","license2:8029250e4058e5545b6717e2b956254cada7e268","ip:181.141.23.88"]', 'steam:110000135e2d2d2', '2021-01-31 17:11:00', 'Pg saltar desde edificio de mas de dos pisos y no rolear la caida', 0);
INSERT INTO `bwh_bans` (`id`, `receiver`, `sender`, `length`, `reason`, `unbanned`) VALUES
	(31, '["steam:110000141f75433","license:7a8f75178d6b4bdce84044b1fb50e3213a26e903","live:844425423176446","discord:694713238000238705","license2:7a8f75178d6b4bdce84044b1fb50e3213a26e903","ip:181.58.53.122"]', 'steam:110000135e2d2d2', '2021-01-31 17:11:00', 'antirol CAR KILL - VDM', 0);
/*!40000 ALTER TABLE `bwh_bans` ENABLE KEYS */;

-- Dumping structure for table extendedmode.bwh_identifiers
CREATE TABLE IF NOT EXISTS `bwh_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`steam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.bwh_identifiers: ~0 rows (approximately)
/*!40000 ALTER TABLE `bwh_identifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_identifiers` ENABLE KEYS */;

-- Dumping structure for table extendedmode.bwh_warnings
CREATE TABLE IF NOT EXISTS `bwh_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.bwh_warnings: ~36 rows (approximately)
/*!40000 ALTER TABLE `bwh_warnings` DISABLE KEYS */;
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(1, 'steam:11000010a412a06', 'steam:11000010a412a06', 'parguela');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(2, 'steam:11000010a412a06', 'steam:11000010a412a06', 'parguela');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(3, 'steam:11000010a412a06', 'steam:11000010a412a06', 'parguela');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(4, 'steam:11000010a412a06', 'steam:11000010a412a06', 'parguela');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(5, 'steam:11000010a412a06', 'steam:11000013edc8204', 'Hola mi vida');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(6, 'steam:11000013edc8204', 'steam:11000013edc8204', 'Evitar PG podra ser baneado');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(7, 'steam:11000013edc8204', 'steam:11000013edc8204', 'Evitar PG podra ser baneado');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(8, 'steam:110000141766d51', 'steam:11000013edc8204', 'A dormir');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(9, 'steam:110000142153acd', 'steam:11000013edc8204', 'Baneado');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(10, 'steam:110000116adf4c5', 'steam:11000010a412a06', 'prro');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(11, 'steam:1100001075a632d', 'steam:1100001075a632d', 'test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(12, 'steam:1100001075a632d', 'steam:1100001075a632d', 'test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(13, 'steam:110000116adf4c5', 'steam:1100001075a632d', '/asistencia es para soliciar al staff, ya no mas /calladmin');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(14, 'steam:110000132a53b01', 'steam:110000132a53b01', 'Test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(15, 'steam:1100001149c0473', 'steam:11000013edc8204', 'Hola sapo');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(16, 'steam:110000119f0d853', 'steam:11000011a228857', 'Test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(17, 'steam:110000119f0d853', 'steam:11000011a228857', 'Test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(18, 'steam:110000132a53b01', 'steam:1100001075a632d', 'test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(19, 'steam:1100001449c5939', 'steam:110000132a53b01', 'Iniciar un rol agresivo sin policias en servicio');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(20, 'steam:11000014413276d', 'steam:110000132a53b01', 'Mentir al Staff en un reporte');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(21, 'steam:11000011a228857', 'steam:110000116adf4c5', 'Trabaje desocupado');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(22, 'steam:1100001449c5939', 'steam:11000011a228857', 'Insultar frecuentemente por chat anonimo, 1Strike Sancion verbal y escrita');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(23, 'steam:11000011a228857', 'steam:11000011a228857', 'Test');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(24, 'steam:11000011741b248', 'steam:11000013edc8204', 'NO MATAR CUANDO NO ESTEN POLICIAS EN SERVICIO ');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(25, 'steam:110000140c41347', 'steam:11000011a228857', 'Revivir Rapido con EMS en Servicio 1°Strike');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(26, 'steam:110000116adf4c5', 'steam:110000135e2d2d2', 'hpta acaso me va a matar o que');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(27, 'steam:1100001444aa23d', 'steam:1100001149c0473', 'Cuidado con el AntiRol que esta haciendo ');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(28, 'steam:11000010f071739', 'steam:11000010f071739', 'te amo');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(29, 'steam:1100001114596e6', 'steam:11000010f071739', 'te amo');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(30, 'steam:1100001114596e6', 'steam:11000010f071739', 'te amo');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(31, 'steam:1100001453731d2', 'steam:11000010f071739', 'cuidado con el PG ');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(32, 'steam:110000145a3b94f', 'steam:11000010f071739', 'hay que rolear los choques');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(33, 'steam:1100001350247c9', 'steam:110000111a3950e', 'NO SEA GROSERO');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(34, 'steam:1100001431d1976', 'steam:110000111a3950e', 'NO HAGA PG');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(35, 'steam:1100001183c1cf2', 'steam:1100001149c0473', 'Vender drogas sin policia disponible');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(36, 'steam:11000013e0b3b87', 'steam:11000010f071739', 'ojo con el pg va pinchado');
INSERT INTO `bwh_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
	(37, 'steam:110000143b6c9c1', 'steam:11000010f071739', 'hay que rolear los accidentes ');
/*!40000 ALTER TABLE `bwh_warnings` ENABLE KEYS */;

-- Dumping structure for table extendedmode.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table extendedmode.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.datastore: ~36 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('club_lmc', 'LMC', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('club_lmc_priv', 'LMC Priv', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('club_lmc_pub', 'LMC Pub', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_LODE', 'LODE', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_abuelocorp', 'abuelocorp', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_airlines', 'Airliners', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'Ambulance', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_avocat', 'avocat', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_blackeagles', 'blackeagles', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_bulldogs', 'bulldogs', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_carteldellago', 'carteldellago', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_carteldemedellin', 'carteldemedellin', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_casino', 'Casino', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_centauros', 'centauros', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_compayasos', 'compayasos', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_darklotus', 'darklotus', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_families', 'families', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_fbi', 'FBI', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_flortarmy', 'flortarmy', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_gace', 'gace', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_guardiaroja', 'guardiaroja', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_lamanada', 'lamanada', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_manonegra', 'manonegra', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_marabunta', 'marabunta', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_royalreapers', 'royalreapers', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_sheriff', 'sheriff', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_sijin', 'sijin', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_state', 'Estado', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_vagos', 'vagos', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_vercetti', 'vercetti', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_ears', 'Ears', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_glasses', 'Glasses', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_helmet', 'Helmet', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_mask', 'Mask', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table extendedmode.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.datastore_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table extendedmode.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.dpkeybinds: ~1,585 rows (approximately)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a412a06', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116adf4c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001120fdb8a', 'num4', 'facepalm', 'num5', 'smoke', 'num6', 'cop2', 'num7', 'crawl', 'num8', 'notepad', 'num9', 'facepalm');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ee69334', 'num4', 'record', 'num5', '', 'num6', 'think4', 'num7', 'texting', 'num8', 'notepad2', 'num9', 'wait');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001094b8727', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fae7bc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c838ad3', 'num4', 'crossarms', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117412cf9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c569ff5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141664bda', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013b47da6a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c05a7c8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010474b1e3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f071739', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001140f4bda', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131f6d6aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c7f8d77', 'num4', 'radio', 'num5', 'airplane', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001416346a9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133bd6ef4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117ea6d7c', 'num4', 'crossarms3', 'num5', 'radio', 'num6', 'think2', 'num7', 'sitchair4', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014122ecaa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115d66d72', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141734106', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cc4d2e3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119f1c76e', 'num4', 'handsup', 'num5', 'crossarms5', 'num6', 'smokeweed', 'num7', 'fallover', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d576266', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410c1a55', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a0facd4', 'num4', 'crossarms', 'num5', 'sitchair', 'num6', 'guard', 'num7', 'crossarms3', 'num8', 'sitdrunk', 'num9', 'lean');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011787ce12', 'num4', 'cop2', 'num5', 'finger2', 'num6', 'sitchair', 'num7', 'lean', 'num8', 'radio', 'num9', 'pickup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010df7f8bb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113d8978f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001415f42ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141633565', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141721734', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb035a6', 'num4', 'whistle2', 'num5', 'crossarms5', 'num6', 'notepad', 'num7', 'lean4', 'num8', 'thumbsup2', 'num9', 'fallover2');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e499145', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001191d876e', 'num4', 'smokeweed', 'num5', 'think4', 'num6', 'thumbsup', 'num7', 'crossarms5', 'num8', 'sitchair4', 'num9', 'smokeweed');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a6710f0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001044c21dd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117d2f136', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c8d79b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001098fdb10', 'num4', 'argue', 'num5', 'sitchair', 'num6', 'guard', 'num7', 'crossarms5', 'num8', 'shakeoff', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132bdb5ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a87df0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f6c57d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d201622', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132a53b01', 'num4', 'sunbathe3', 'num5', 'crossarms3', 'num6', 'notepad', 'num7', 'box', 'num8', 'mechanic', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eac05ee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141772126', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010cb4e942', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d4353b8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110939278', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e361536', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a4d9b3d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013245167d', 'num4', 'cutthroat2', 'num5', 'radio', 'num6', 'crossarms5', 'num7', 'finger', 'num8', 'notepad2', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e2c09ec', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013606e110', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107166521', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f75c0d0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141e48f33', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001073237cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117adcc2d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001380d4049', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418757bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411374ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ee5f95d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116a20952', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141c0f3a5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013365a78f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011793e3c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a7de09e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001340919df', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134880364', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001071dcd7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d23d3cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f34a5c6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f76696d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134853476', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140248b11', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ee9bb5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107f93a4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b115e9f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001354cdb7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001345b1331', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ad19c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117143c0e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141748f58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001369aa729', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001320e3ae6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a5b6981', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119f0d853', 'num4', 'radio', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107b4c055', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001049409d3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114a68978', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001409200d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bb19239', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010833b1e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141dad8ad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417acf5d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111a698c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110dda6fc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110dda6fc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001173fee9a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001402c81ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111b81ea0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117a28e61', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107e7baca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a4344ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106e3fa89', 'num4', 'crossarms', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001113cd006', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ab91acb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010de0f6aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001176c2769', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135a965ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119602e44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010afec07d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106c7d186', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117252f7f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141c1f20c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106ab40ad', 'num4', 'radio', 'num5', 'think2', 'num6', 'whistle', 'num7', 'crossarms3', 'num8', 'namaste', 'num9', 'damn2');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010df8a94f', 'num4', 'crossarms3', 'num5', 'radio', 'num6', 'think2', 'num7', 'cheer', 'num8', 'notepad', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141c633ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c0fecf6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001091040b4', 'num4', 'radio', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ba0dc8e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001031bb6e3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ef0fa57', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112aaee7e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ac1116', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135956766', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e2678eb', 'num4', 'crossarms5', 'num5', 'filmshocking', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117c7546b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001357034fd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014175b7fb', 'num4', 'radio', 'num5', 'finger', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422ed705', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109ba9595', 'num4', 'sitchair', 'num5', 'flex', 'num6', 'notepad', 'num7', 'umbrella', 'num8', 'radio', 'num9', 'peace');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131ca8e08', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418b79f8', 'num4', 'wait11', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001068478b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d605525', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117335cf5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135ab01d6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113ebc2d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d5eba13', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141152198', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ccd5d26', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136b27007', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c67f1b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d0b3f86', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014069fb6f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f3c207', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113e31a06', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010aca53fe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001188a326d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106f695a6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111209162', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eca4676', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131ecd3ea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014199017c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422cb799', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001154ddb24', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011550bfd9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff4803c', 'num4', 'whistle2', 'num5', 'clown', 'num6', 'crossarms6', 'num7', 'salute', 'num8', 'radio', 'num9', 'lean');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110b429f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419feda1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014181706e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010adcf6d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010aa7f57e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134d65684', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001002c7ede', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117cf7ea9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001358c4186', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001179c5264', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140616115', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013635ac97', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011aacc45b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117616dcf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000105a6e8a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010898782c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118872605', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001239b0d6f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b68f76b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001086b2a5d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a71cf52', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d463adb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013dd108f4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a0d2372', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d0c0100', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a5dd1da', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411b2468', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ddb0b5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000137a713b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112f998a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f2dd80f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014117312c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110baeec4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114d1f4de', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e375bf7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010728c763', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ae4a8fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001323278a4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d3b6f3b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a26643', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001338044ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106b2cfb9', 'num4', 'backpack', 'num5', '', 'num6', 'whistle', 'num7', '', 'num8', 'cigar2', 'num9', 'finger');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011059a09c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001349d6dc1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011883da96', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001131b7abe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001195cb176', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117d47f22', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d7bc522', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001136861b9', 'num4', 'cloudgaze', 'num5', 'radio', 'num6', 'notepad', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001182c32c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011657992e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ce5526a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e7cd4c6', 'num4', 'crossarms', 'num5', 'crossarms', 'num6', 'crossarms', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141606ecc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418841c6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001096e30a5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d099809', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fbc89a7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114e622f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001113dcbe0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c91397e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ebf423f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb1bb17', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107d67082', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114f500d7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142335d5f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001413264c4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f7e3fca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106f10b17', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114bf8725', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112046e8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135c698ec', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107596e74', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133f655ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011872815a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bdcd0dd', 'num4', '', 'num5', '', 'num6', 'mechanic', 'num7', 'whistle2', 'num8', 'dancesilly7', 'num9', 'crawl');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110cd716c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013922bbd3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114ef9293', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119c13b74', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f763a5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f06d70c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f06d70c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f06d70c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ac53458', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a092be', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ce8fc52', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001353ec5e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136de7104', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b92c407', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142396dd8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142387b5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f2fa1f4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e53db93', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142348b55', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001355fbd8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001072922fa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119a0db8b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135a7448b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bb81569', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109ea3c4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cd445ec', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001416c6afa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ab2760e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011952db59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013748a621', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ec48ac4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422a3a91', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013caa769b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d25daeb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e12169c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014004ea97', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104af5397', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140571a60', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f1f85b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c6110f1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108b20c6f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417712be', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140c6e952', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f75433', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141b40876', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c0c06ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110c029b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001074e5434', 'num4', 'guard', 'num5', 'salute', 'num6', 'umbrella', 'num7', 'smoke', 'num8', 'think4', 'num9', 'crossarms5');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e3cbd44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e9807cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f7dfebc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001415cd22e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119212eb0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014176696b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000101ec6858', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132dd95d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423aeb89', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013da1cc4f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001414072f2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141946a63', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e75c506', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119f27420', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001405f1def', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a1b3811', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014237a3e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001042213cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a1f15c8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112631600', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001131bfecd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011298d4cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a42ffe9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001404b5d41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142168e0d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001075a632d', 'num4', 'mechanic', 'num5', 'guard', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e29f029', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001416527e1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140ccbd0a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000137249937', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014213faad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e5e5b4f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d38ef4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107b804cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109556ca9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135dd5770', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001408a282e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001403de953', 'num4', 'radio', 'num5', 'notepad', 'num6', 'crossarms', 'num7', 'tablet2', 'num8', 'wait', 'num9', 'sitchair');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001178a59dc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010cc3545b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112c94624', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014207857f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a7e2083', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115709597', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112695efb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001347fd0b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141eded23', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013673adbd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109176275', 'num4', 'think4', 'num5', '', 'num6', 'crossarms5', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001412aa631', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115cc8356', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423ef369', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001324e8191', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014031d0b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a2769c6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014231ceb7', 'num4', 'notepad', 'num5', 'crossarms5', 'num6', 'facepalm4', 'num7', 'sitchair', 'num8', 'lean4', 'num9', 'finger');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141297e34', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411a3d49', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117c7be53', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bccc48e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118adda3f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141d86a20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423b3d04', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141812a34', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014245b3a9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109b4f538', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010587b676', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119cff27d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000103bbe639', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001366aec6b', 'num4', '', 'num5', '', 'num6', 'sitchair', 'num7', 'cop3', 'num8', 'salute', 'num9', 'sitchair');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bb13aef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001197aff8e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b444e0e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014232f9fa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eabb718', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140c6fd46', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421dea41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014242dd88', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a4a8d11', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141711bee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140080d5c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c0c23d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001408c3124', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000100cdba59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418d2e96', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fab4d19', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410bc43f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117ed9e20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c605882', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f85928f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f48be0f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110002fc4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140f26602', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142468f27', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff61f07', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115b3bb1c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110bb0f62', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d3bd30f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c51e317', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ce9f037', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c338481', 'num4', 'thumbsup2', 'num5', 'crossarms5', 'num6', 'medic', 'num7', 'lean4', 'num8', 'phone', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013df27b4b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001320659fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107b05606', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118c1188a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113e6c3e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141d58403', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011125313c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111ed05ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119473dfc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b38b68b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f905fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422b3b7a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ce8c369', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013b3cda3b', 'num4', 'radio', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b8b44d4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423c1060', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001090627d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115f99a8c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141724351', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014103813a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118fb4c4f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c20a2b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115cfe950', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108fee451', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011505f824', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140d9f5d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118b073c9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a56e5c1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140e27be8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113899b74', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109bd8fd3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f042f59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b1e2d76', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011965df17', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117e56cba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013576487f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014246e2cc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117fb3769', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013db690a9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111c44793', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bd3e1d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014242e5ee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115c537c4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104cf53e0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411bf3d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014215a24a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a74dbf2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418344a7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141e44e4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001133524b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c898ac6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a1d25cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001424c9835', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000139df01a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ee9bed6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001424fa5aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001157367ae', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e8fa247', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013421e8ea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a39e92c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001184d1803', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001369f118e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c005df4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118a4b672', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113faed51', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109a3989f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e4b5176', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cc58889', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014023fa38', 'num4', 'lean', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014256872e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001424e5bd7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011cda0cb4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109b11cd1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001091e4c20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001326e5c88', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140222cc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136a68f4c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000101d5b75b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116391c36', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142566a29', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e4e4155', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013380a85f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119f0064d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108faf4b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140e838d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001035481ae', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104cb09c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001158ec3ac', 'num4', 'wave8', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ede534a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011305b368', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014175ab45', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014175ab45', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001198812e1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014222eecd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111b860d6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014177daf4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011cc202bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c7dcafd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bfd007f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001414d7b99', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014120f422', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010aec4dbe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fc2efc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001113b7a30', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115edb613', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d95604d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d2585ce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a86bbf7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d6e061a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113f8115c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106938ac6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000105f4eef4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115bad8a6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106c6fc72', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013daac0bf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419e7d1d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136b315dc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bfc47cf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119b6d783', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133cdc799', 'num4', 'handsup', 'num5', 'crossarms3', 'num6', 'lean', 'num7', 'notepad', 'num8', 'sitchair3', 'num9', 'smoke2');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f38298a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011053b770', 'num4', 'crossarms3', 'num5', 'lean', 'num6', 'sitchair', 'num7', '', 'num8', '', 'num9', 'dance9');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142403dba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116e0bd77', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013369aedc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131e95371', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117ab572b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e8be61', 'num4', 'sitchair4', 'num5', 'notepad', 'num6', 'sleep', 'num7', 'gangsign', 'num8', '', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c7bf6e2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142475808', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013356562a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001335fbe12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106773a12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a0b870e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c900e6e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010845b015', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ad947c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141776fcc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000139d2fd7b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001090b08a3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425a881d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b331dfc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001095f4b8c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001115ab9b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109208288', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ae3ee0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001364e24df', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116abc1aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001174d5049', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b1e7d7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014232d4f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136f4aaeb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e9873d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001352bf457', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108296795', 'num4', 'crossarms', 'num5', '', 'num6', 'argue', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425ab203', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bb5255b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114ab6023', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001194be72a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ef672bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140eeb3bf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119a0a836', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ec8e27a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134915ca0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011bbdfc58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108966a76', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110dae164', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001130baa07', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115dc408e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014255963a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b03f4e0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136bea77e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001323c9e04', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cdde24d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f9ada00', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425b92ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110d419ee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e4a7df6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001119dcc9e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f431eab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b9959b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013404131c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e16da3b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108ef0bd8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014252df8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f4f9378', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000139e0533a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425df9b1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142613573', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425e3b24', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014262cd31', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425fbae4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142620cba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116c8360f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425f9548', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425b553b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014260f21e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e9c2fa1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140c04b31', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff784ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bf9ebc5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140b8eb25', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014045bbce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140baea41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425fe5e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142618355', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142639049', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142609433', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425f07e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142606139', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142629ce9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410405eb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014264a080', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131dfc53d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142624cf9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142619720', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011156c37e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106310012', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001408c1d5f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135d79133', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142665929', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014266c49e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142625a7e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142653999', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d2808e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115b7dfc5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d30494f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135420ab0', 'num4', 'notepad', 'num5', 'sitchair', 'num6', 'salute2', 'num7', 'texting', 'num8', 'backpack', 'num9', 'radio');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000139e0614c', 'num4', 'idle11', 'num5', 'lean4', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c61d760', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e2d6a82', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407119aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112f2ecf9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014206f4c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000105217421', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426196b8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014184cf59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142659544', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014265dcc1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014267412a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014267552f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d98fcfa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014268b456', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426804b7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d16157a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e855983', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001155766f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134d0a9a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001349f2481', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417ff49e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001185246fd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426300cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426cb022', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ae11bd3', 'num4', 'crossarms', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426d57bb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014267013d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426b5aed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d438365', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426a3ad7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104222b12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142683069', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a111412', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c5b1faf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001042efe1a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112c6c0a7', 'num4', 'dj', 'num5', 'crossarms', 'num6', 'smokeweed', 'num7', 'radio', 'num8', 'sitchair', 'num9', 'dancesilly7');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d08a2f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141774c3d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418e4847', 'num4', 'passout5', 'num5', 'party', 'num6', 'lean', 'num7', 'argue', 'num8', 'radio', 'num9', 'hug');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b05c5d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f48b659', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001184de2e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107c77431', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142705011', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014270006a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f709f18', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001134a87d6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a80f6a8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107000aca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426a51aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107cacf68', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141d54045', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010baceadc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011178e63b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001114596e6', 'num4', 'facepalm', 'num5', 'jog4', 'num6', 'passout2', 'num7', 'crawl', 'num8', 'wait10', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014276071b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111806859', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014135b9e7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c8ebf4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417c3053', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014276eb8f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107f9e41e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013261e1da', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb92b44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134f48d5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427ada3b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427a43f5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427aa679', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142799f10', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a357d41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014100f1ed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115146dbd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014180ed4e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132faf47f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001094dec17', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f9205fe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014030f77d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001089b619e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014131a67c', 'num4', '', 'num5', 'surrender', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f705cbe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001158f9b37', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014025d426', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427b0c15', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013291d647', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010583a895', 'num4', 'whistle', 'num5', 'radio', 'num6', 'lean4', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001365cebe5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141e0c3c2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f8d5b43', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011699a25a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112c69b15', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117b14aae', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419ee951', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014285e909', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c8f0d02', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014289cffe', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001123a48f1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bcd1564', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001066c34f1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422661c6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001178eac74', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422578ce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013347c77e', 'num4', 'sitchair', 'num5', '', 'num6', 'surrender', 'num7', 'smokeweed', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421306b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421ce29c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141d46059', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001414ebdd4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108dbe3a5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c547758', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f8d1ff1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013efb0d94', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014107964d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119da2d09', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013563cb08', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140de57ad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000105c6edee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001428ed8ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014238235f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114070ae1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e567e02', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013525ec3c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014216127e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fb1c493', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb636b7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013edf5ea0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a4fdf9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014284f0ef', 'num4', 'sitchair', 'num5', 'point', 'num6', 'facepalm4', 'num7', 'cheer', 'num8', 'passout', 'num9', 'lean4');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010864a419', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ef60747', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111c9e3bf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118249516', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411ec439', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f183e43', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001354051a8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418355c8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e9426ed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bd9cc89', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111a3950e', 'num4', 'argue', 'num5', 'guard', 'num6', 'boi', 'num7', 'adjust', 'num8', 'lean', 'num9', 'cop');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141882066', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115c6d949', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ee7cf32', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119867c6c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104fe2a9a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c5a7069', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013306ca63', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a0e5779', 'num4', '', 'num5', '', 'num6', '', 'num7', 'think', 'num8', 'radio', 'num9', 'clap');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427c2ead', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ab5d216', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ae07fc2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134e2a1f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013464d5c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429e6a4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429e4586', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a03792', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e97411', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429f8d00', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a18cfa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e976ec9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140848323', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418241aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114e295a8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134fc2c7a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a1dbc7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a0ff20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a2b360', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a39f3f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001178812e5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419da1e3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a2ed1d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a49642', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bfb566b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107c8340b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e2befef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116afaa1a', 'num4', 'crossarms5', 'num5', 'facepalm4', 'num6', 'finger', 'num7', 'sitchair4', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a3a640', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a2499b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a52774', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a276c0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a4a9d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a3f380', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c3b21c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d5cf39e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a70434', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ad2cbc4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142789d84', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141e68dc0', 'num4', 'notepad2', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115dae0ad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013231cb52', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141fb9fe4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142ae32c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001137ba384', 'num4', 'guard', 'num5', 'crossarms5', 'num6', 'sitchair', 'num7', 'lean4', 'num8', 'sit5', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011977e8a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142b2e202', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107c4f960', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141724d44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115170d38', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013b0228ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001191edd97', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112cae703', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111005e5a', 'num4', 'crossarms3', 'num5', 'notepad', 'num6', 'radio', 'num7', 'guard', 'num8', 'facepalm4', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013674fc21', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011499176e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013386e52f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001420a76c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115938143', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ece781c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135ec2bca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a680186', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010955aaf7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001330923e5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142725f58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c72291f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116ca4109', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a155003', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001428b37b8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001114eaa0e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001428e00a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f5a54df', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114ed4538', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136f308e1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e4a2311', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d29cbee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426bdb19', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001408edf2d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429eaf43', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142b9654d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115125182', 'num4', 'stunned', 'num5', 'dancesilly7', 'num6', 'sitchair3', 'num7', 'dancesilly4', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f368c47', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c88577', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115c4281d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116b0ffed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c724af', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013491da86', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131fb99cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001415c188a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135f5f111', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001331655eb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014146b6a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f68c591', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ef68d4b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141300291', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ec2b4fa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114274243', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c90075e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429258b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ad74cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142270fc8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c2037f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c94a7c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c608a4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010dabab1b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cb85e5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cc89f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c9b12e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014214e8a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142ce935f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a438693', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110e1fca2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417e1579', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001189c0a4e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111b1eafa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142d08b71', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cfaa0d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cf9937', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c9cbe7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cdcc24', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142d0b2a5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141adb7f1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423b5892', 'num4', 'sitchair', 'num5', 'lean', 'num6', 'foldarms2', 'num7', 'gangsign', 'num8', 'finger2', 'num9', 'guard');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f53dee8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142d79a57', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113d8cd1c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142d85374', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ab654e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011446a83c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001164310b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141b6e7ac', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c54c363', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141efcdf5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c60582', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bfbab3a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000103a3dfb4', 'num4', '', 'num5', 'crossarms5', 'num6', 'crossarms5', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133afdf12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013be85206', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000137a3a8d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134b86af8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cda49be', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011478a18d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132d8c527', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f5acb17', 'num4', 'surrender', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132f69654', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e34b84', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e0ae11', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e3aa08', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e3abd5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e22c44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e1d26c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e316cf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b9c0b12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142df65b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e3e337', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e55766', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e6d6120', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e6088c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e23eb7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e85b4b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e3ce48', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e44c18', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e26c01', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e4fa1a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e33c9a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e3020b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142de7b3d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e25d45', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e37f30', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ce96d92', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001424b7847', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010438365f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000103d2aedf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108489030', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107f064d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133c31b85', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141539387', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426db5ea', 'num4', 'cop', 'num5', 'flip', 'num6', 'notepad', 'num7', 'crossarms3', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411afc26', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011aaa7196', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e4988c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142f2a23d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010853fba4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a59d23', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014228ead4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119b99ca4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011af357b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141484270', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140f7791a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013506d2d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a217874', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115191872', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142f35c2c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010917db41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001412f3cb0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410998b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a2a9bb8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001412fd153', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001119e3a28', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001331fa745', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f5a444', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e8eba32', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119fa6d5a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134775285', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014114ef42', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014097433f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000138484337', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c3e12b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141181cee', 'num4', '', 'num5', 'sitchair2', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e39a269', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110b06a70', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142c7558d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f4e6a68', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111daff1f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108a16c08', 'num4', 'finger', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011215ec18', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014187b720', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118b069ad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142f54ccc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001144cf5f5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014239f228', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119f02521', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142019513', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c18cca4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113322cbb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142161b50', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142cda0ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ec36335', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001144324ba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013482ef51', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e804b50', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110b84142', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142fd371b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ce248f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013408f3fa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001320db9d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff25482', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425a82af', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001412ca9e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114134452', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136578a65', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014197106f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115b0600d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013499c546', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001041c62d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111919c64', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001353df792', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fa18072', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011605a4ba', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140ae58c5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141dad660', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010eeebc5b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110c4c452', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f3b6443', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013b3d8598', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a13c4b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001356c070b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001171bb2b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a1af1d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b1d4b1f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d8304d7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001327989e7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f0e0ed1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011748016c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013522d1c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419e950e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142aaac1c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141072ff4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a7a16f6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107a3eb56', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114c1cb9f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001332ddadf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013635e0d0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011add13fd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014175b94b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136d4f6b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a7af7f0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134e779d0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001188c2822', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001194ff1ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013282d96f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108293ba7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014233b758', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013dcf44a2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014247a6f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d994472', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133f57dd7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001186945fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011822273c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141456775', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f26fb37', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e297e2c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f6953e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ee1ad4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f33743b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001066dc710', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141df56bd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136db89e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011165853c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e55b95a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119a7a9b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426f8742', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001404cdf9a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011685afd8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e94c707', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014076c5a8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d7e048b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001095f0aad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a4409b6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bf58844', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142ece406', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010cc7b057', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132987306', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001402285c2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134492625', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117498f7f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001184ad172', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d6269e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011455b32b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136b49440', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014245f164', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000137a168bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140ce1fa5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112a6f63a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b983d30', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a18203a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ece637b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135bc93d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135bc93d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135bc93d1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f1a62d3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407ca500', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014167260d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001110e409a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013703087c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141ea9ddf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011476b8b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142156fe4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013dd58e6d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b409db4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f274b65', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d81db7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014103c19a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000103d3465b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115c3e7f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001165df273', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001130ca912', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013db0fc2f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013dc06adb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013848c969', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ea9a358', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c45c37c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a937b13', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c6c291c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d89b32d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001416b3663', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f29ae81', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110ebd754', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001428d47b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c3829d2', 'num4', 'sitchair', 'num5', 'lean4', 'num6', 'leanbar', 'num7', 'fallasleep', 'num8', 'twerk', 'num9', 'chinup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001166cbb3d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e0abf4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136dd6416', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b3165f1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013b72b1de', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001360eb353', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001042f43e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e982a89', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e9cdee3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014300a6f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110f47304', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001335f3952', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132088bd7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001163d2ea6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000121033202', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014030bced', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001341567f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014215458b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014159649f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a6d45f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013dc65779', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141da98ec', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013546a425', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423d7480', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010483db4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010905d228', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f175118', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113ee70b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134c915dc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000138c0cd11', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001076507bf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423d0e73', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f2df45a', 'num4', 'finger', 'num5', 'salute', 'num6', '', 'num7', 'thumbsup', 'num8', 'guard', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014326947a', 'num4', 'sitchair', 'num5', 'lean', 'num6', 'handsup', 'num7', 'notepad', 'num8', 'flip', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011102ab20', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b0786f8', 'num4', '', 'num5', 'sitchair', 'num6', 'guard', 'num7', 'cheer', 'num8', 'radio', 'num9', 'radio');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010881d5b3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c38c379', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010af56e9a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f76fb0c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107b325c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143346ee2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ce96ca2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131e4d5db', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425a60ab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001420934e0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a39569', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119bd7585', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117902718', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114d9990a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014120e73a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011aa65375', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c947cdd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118727de1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001153cada1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001433760f2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cdc7191', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014253d307', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b83b60a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108268365', 'num4', 'handsup', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111d31b16', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429e5e1d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140cb175f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010fd54794', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000104fbc74d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e6f4265', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010baafe72', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ced7468', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001185b7744', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136490d8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001117571c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011287618a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014139ccf8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013388df6c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001070b9d5a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109c8ff1a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001373891ad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142bdcc56', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132f6b8f6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d68d2b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014332bbb5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140e02901', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001193b06d9', 'num4', 'sitchair', 'num5', 'crossarms5', 'num6', 'think', 'num7', 'notepad2', 'num8', 'stumble', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141601bea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001361c0069', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010cd7b0cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142abdc9d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110e0b414', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140dfdb29', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134f14478', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142096f7c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011391f9e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011bae9deb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118e672b5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010941a465', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f4a489b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001419e6cc4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014098c339', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134329532', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c760613', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a589b8c', 'num4', 'salute', 'num5', 'sitchair', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141188638', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001167ef65d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111696042', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001179d3583', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143788d76', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c9cd810', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e1e71f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132f31dd5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ccf7461', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000139213b23', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142d368bd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e5df106', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143310e77', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114fa2905', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114fa2905', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114fa2905', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001425d85ef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133503c41', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001324193fa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141026b87', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014356422a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423f6fa7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001412970bb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014187bfb8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119b4b7dd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133edb6ce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001428d31a0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a0abab', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e6c374b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113b26fce', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141b654fc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109aae79d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114a0939a', 'num4', 'think4', 'num5', 'argue', 'num6', 'crossarms5', 'num7', 'salute', 'num8', 'passout3', 'num9', 'passout');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014146dfaa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001439a6233', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b6288d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117f8e6e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a3a4c1e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e44f808', 'num4', 'guard', 'num5', 'think4', 'num6', 'threaten', 'num7', 'countdown', 'num8', 'suitcase2', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001161eaef3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001435661aa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e6bfff1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a57876', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142691147', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010728213b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114f4bb1d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407dbfc4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115993c50', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b29007e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143571857', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e0b5a26', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010752e086', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001165da6a4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143a2613c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132858f38', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e008193', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001430e47c6', 'num4', '', 'num5', '', 'num6', 'handsup', 'num7', 'gangsign', 'num8', 'crossarms', 'num9', 'sleep');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143a1c1b9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001431d1976', 'num4', 'sitchair4', 'num5', 'crossarms5', 'num6', 'gangsign', 'num7', '', 'num8', 'handsup', 'num9', 'smoke');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c2766a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132782196', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014313fd6c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407c1b23', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001436a8014', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001365485e3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c9e2674', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001411e9ff3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001172becde', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113181845', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010bdbd7ec', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001437e6620', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001073d9f70', 'num4', 'sitchair', 'num5', 'smoke', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143b139d9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111a731b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116085cad', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013edc8204', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e982b53', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001432f3b38', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a228857', 'num4', 'crossarms3', 'num5', 'think2', 'num6', '', 'num7', 'cop', 'num8', 'phone', 'num9', 'facepalm4');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011705a928', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e178f28', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114e3b565', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001404347ef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112f70360', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e3b579', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143bb63d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ebb727c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001439ec843', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001196e51e4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011aec794d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b79988b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011054e8a8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001434beb4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140fa606c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116517895', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136306fe6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134f8583d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140ce5e91', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a24bb9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014366a902', 'num4', '', 'num5', '', 'num6', '', 'num7', 'salute', 'num8', '', 'num9', 'guard');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143a5b9b7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112a69c17', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134fcd06d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013bbf2a34', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013767da2f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d251e88', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140573fc2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ef44fa5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010a89ff01', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116720af8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001178a6be2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143f18a10', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143f2bfb1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143f58314', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011713896c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014260e3b2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fe876b8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141258217', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014211c1d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c642bd5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143fe9aa8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117ba7c50', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136cae951', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140c41347', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114bb5b08', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c754270', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143fa9092', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001175dc67f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000133673402', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011879fd59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a38eeed', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001431d9f5a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001426b4d7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c583dd1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ee4c549', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143f82037', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142623f25', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001195848ea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117ceb5a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c46b854', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e081d58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118dde417', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a7e88c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136e55002', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001432437d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d6a2dd4', 'num4', 'cop2', 'num5', '', 'num6', '', 'num7', 'salute', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141309d46', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136970271', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143da8784', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014414378e', 'num4', 'cop', 'num5', 'cop2', 'num6', 'boi', 'num7', 'clapangry', 'num8', 'handsup', 'num9', 'idle11');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a3c2d95', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001352f2e36', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e9b5c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a0e7b44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417ab45f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e0b3b87', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143136c12', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134731eaf', 'num4', '', 'num5', '', 'num6', 'crossarms5', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c17b9fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f981993', 'num4', 'sitchair', 'num5', 'fallasleep', 'num6', 'guard', 'num7', 'finger2', 'num8', 'notepad', 'num9', 'crossarms5');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114d225bb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106fe19ae', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010704ff4c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142376cf5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140a4ef06', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d678d26', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001417c948b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f4333d8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001429db131', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e48161', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014180cb6a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001346e800a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135e2d2d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418c9c56', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118eb8e52', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014302231d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014256f7be', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422ac95b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a13a679', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f93652e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001347a6d65', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011726c9cb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014434d171', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115f97a44', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001168db7f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000135c77393', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001441cba0d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144377e59', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d55d21d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014218709d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fe42512', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001444aa23d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144471df0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a8eadbe', 'num4', 'gangsign', 'num5', 'passout4', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106e4d58f', 'num4', 'think2', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010dc9475d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136e85095', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142a7de0e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116d7f345', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014065436f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001330109eb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140f11a58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116140146', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141c1a417', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cf6172f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118f49bd4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000118af632a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114811c06', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a425d8d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d2ff665', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001446e2c6a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108344607', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010ae8f530', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ac0eca0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112d31bc6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141016bc0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116c942f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000109576e45', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014284c823', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b4e5d25', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010e73ebfb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e5c43c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c8caf2b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011528131d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a62f3d6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001409d80f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb113d9', 'num4', '', 'num5', '', 'num6', 'crossarms5', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb4942a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119b78fa7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014337e941', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001413caf96', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cdf876e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001423a7cb5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014301237b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d3cf929', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011ac4a6c3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff5f9c0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141037066', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001445336c6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421c277a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013a567416', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014175ccc1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014413276d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001402296a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001449da17e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e16f480', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001413a7866', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001415f8296', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014387fc05', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b09d3e5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131f8640a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014183142e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010d7d5eb5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001097f4675', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410a65b7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000115e14a23', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000119e117e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013580e163', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111874261', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136d1bc3f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013292249f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142abd19b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140ec93f8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001106ab378', 'num4', '', 'num5', '', 'num6', '', 'num7', 'crossarms5', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111a68df4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141f28580', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000113863571', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000112ca4d1b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013cce8948', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141dd02c1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001089bb6cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421c583a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410216e6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a34f4d7', 'num4', 'fallasleep', 'num5', 'crossarms5', 'num6', 'lean', 'num7', 'salute', 'num8', 'cop', 'num9', 't');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001422c1a69', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000108c6cb84', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114f4b7f6', 'num4', 'sitchair', 'num5', 'umbrella', 'num6', 'facepalm', 'num7', 'clipboard2', 'num8', 'cop2', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117c05346', 'num4', 'salute', 'num5', '', 'num6', '', 'num7', 'notepad', 'num8', 'cop', 'num9', 'crawl');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001149c0473', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014091e5a5', 'num4', 'crossarms5', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014256f2d5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b695209', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001350247c9', 'num4', 'crossarms5', 'num5', 'salute', 'num6', 'notepad', 'num7', 'notepad', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001410211f7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011741b248', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', 'passout3');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144bb4421', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001449f31f4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001356b8d78', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010c694ac5', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145449f3c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407c3973', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141882940', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b1b0dde', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f71c444', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011431cf6d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d5d9dc3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e86bc5f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143da8d9f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e901f6d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000132295475', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011d635cfa', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001438b3b64', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000110c7211e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001455fc78e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145368768', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010f746ab9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f5f1004', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145504250', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001409da08c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014230b943', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a62a709', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001416d2e07', 'num4', 'mechanic', 'num5', 'salute', 'num6', 'mechanic', 'num7', '', 'num8', '', 'num9', 'handsup');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145122084', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114b95a73', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fa29af8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001453731d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001405ee508', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000114004473', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001449c5939', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013e9ccfa8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001438a46fb', 'num4', 'clipboard', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f737620', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013edfec5a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f3e5651', 'num4', 'passout2', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418faca8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001140c70fe', 'num4', 'sitchair', 'num5', 'notepad', 'num6', 'medic', 'num7', 'clipboard', 'num8', 'suitcase2', 'num9', 'clean');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014184372e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', 'prone');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ccac71b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c7dbb73', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144427245', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff8a586', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144027001', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001418b84b1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ff5275b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136c27204', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145b80a29', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117117867', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001407d3f0b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001442d020e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001427bb979', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f35d7ff', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014433f8cd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145a3b94f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141c98a3e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145cde35b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001120f4fe4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014512ca5c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145cfb443', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000010b33caaf', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000117e42b28', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001450195f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001129391a9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145de0322', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145d5edc4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001441e3915', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001368e1df1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000107192227', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014507a29d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000116d98697', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011c52cc55', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000111871b03', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001154c61c7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145d41a13', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144251d7d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145ae51fb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145213399', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013f46c02b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000144ba1c74', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014557c6b4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011186f14a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001044e1362', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000143b6c9c1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001403d6db7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ffb01e8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000131f25d57', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000136e3cefd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013eb04e39', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d3d44b1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000140a78ae7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d55854c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000106edb338', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001421861e1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001339b6a7f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001461a4287', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145da9913', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142e42cb1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141bb57d0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011acb972d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000014147c1b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013c032df1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011a06dbc3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013d392631', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013ec8d702', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141766d51', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000142153acd', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001183c1cf2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000141a14f95', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145d1dc65', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000145b1bfbb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:110000134cb8f51', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011796e301', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000013fff41ca', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001460a4ae7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011cfcc373', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table extendedmode.ea_bans
CREATE TABLE IF NOT EXISTS `ea_bans` (
  `banid` int(11) NOT NULL AUTO_INCREMENT,
  `expire` double NOT NULL DEFAULT 10444633200,
  `identifiers` text COLLATE utf8mb4_bin NOT NULL,
  `reason` text COLLATE utf8mb4_bin NOT NULL,
  `banner` text COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`banid`),
  UNIQUE KEY `banid` (`banid`)
) ENGINE=InnoDB AUTO_INCREMENT=1090 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.ea_bans: ~12 rows (approximately)
/*!40000 ALTER TABLE `ea_bans` DISABLE KEYS */;
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(2, 10444633200, '["steam:110000101d5b75b","license:4c46a4ae62ef89af9cd078a9195fbe6e1391eeeb","xbl:2533274985086852","live:1899946978770039","discord:363004571108376587","ip:186.84.89.116"]', 'Robar vehiculo de servidor publico  ( Nickname: Jsech21 ), Banned by: MIGUELPRO.22', 'MIGUELPRO.22');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(3, 10444633200, '["steam:110000116391c36","license:6162a0f7f02b0df236157111f3a2148ff748d1bd","xbl:2535444375671759","live:985153853753598","discord:271409706348707841","ip:186.31.96.251"]', 'Robar vehiculo de servidor publico ( Nickname: Crack750 ), Banned by: MIGUELPRO.22', 'MIGUELPRO.22');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(25, 10444633200, '["steam:110000103d2aedf","license:4c4fa6eee6a9e28d881dd5e6316c8297272c16bd","xbl:2533274956706450","live:1899945832613057","discord:431665150395678733","ip:181.62.52.20"]', 'Cheating ( Nickname: Valkhriz )', 'Anticheat');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(26, 10444633200, '["steam:110000141882066","license:f37e0252c5a99a189b1c80b43f89a2aa74e82d57","xbl:2533275024232748","live:1759221060296210","discord:177836467383435264","ip:191.95.134.160"]', 'Cheating ( Nickname: NandoC97 )', 'Anticheat');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(34, 10444633200, '["steam:110000101d5b75b","license:4c46a4ae62ef89af9cd078a9195fbe6e1391eeeb","xbl:2533274985086852","live:1899946978770039","discord:363004571108376587","ip:186.84.89.116"]', 'Robar vehiculo de servidor publico  ( Nickname: Jsech21 ), Banned by: MIGUELPRO.22', 'MIGUELPRO.22');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(35, 10444633200, '["steam:110000116391c36","license:6162a0f7f02b0df236157111f3a2148ff748d1bd","xbl:2535444375671759","live:985153853753598","discord:271409706348707841","ip:186.31.96.251"]', 'Robar vehiculo de servidor publico ( Nickname: Crack750 ), Banned by: MIGUELPRO.22', 'MIGUELPRO.22');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(37, 10444633200, '["steam:110000103d2aedf","license:4c4fa6eee6a9e28d881dd5e6316c8297272c16bd","xbl:2533274956706450","live:1899945832613057","discord:431665150395678733","ip:181.62.52.20"]', 'Cheating ( Nickname: Valkhriz )', 'Anticheat');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(38, 10444633200, '["steam:110000141882066","license:f37e0252c5a99a189b1c80b43f89a2aa74e82d57","xbl:2533275024232748","live:1759221060296210","discord:177836467383435264","ip:191.95.134.160"]', 'Cheating ( Nickname: NandoC97 )', 'Anticheat');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(1007, 10444633200, '["steam:11000013ccf7461","license:1c50990075b540f3d52fcacf7bc40af157da0389","live:1688852563828241","discord:328672581051744256","ip:186.168.124.194"]', 'Cheating ( El jugador: sebastianr143 )', 'Anticheat');
INSERT INTO `ea_bans` (`banid`, `expire`, `identifiers`, `reason`, `banner`) VALUES
	(1043, 10444633200, '["steam:110000143b139d9","license:cd7f08fff5f987eb3fb877eae6614bba986bd5ef","xbl:2535462077024958","live:914798669808299","discord:686602413410615338","ip:98.198.194.210"]', 'No se ha especificado una razón ( El jugador: anusjnsjsjs ), ha sido baneado por: Arcannes', 'Arcannes');
/*!40000 ALTER TABLE `ea_bans` ENABLE KEYS */;

-- Dumping structure for table extendedmode.ems_description
CREATE TABLE IF NOT EXISTS `ems_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `apperance` varchar(250) DEFAULT NULL,
  `type_of_crime` varchar(250) DEFAULT NULL,
  `fine` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.ems_description: 1 rows
/*!40000 ALTER TABLE `ems_description` DISABLE KEYS */;
INSERT INTO `ems_description` (`id`, `lastname`, `name`, `apperance`, `type_of_crime`, `fine`, `created_at`) VALUES
	(13, '', '', '', '', '', '2021-01-03 02:26:54');
/*!40000 ALTER TABLE `ems_description` ENABLE KEYS */;

-- Dumping structure for table extendedmode.ems_notes
CREATE TABLE IF NOT EXISTS `ems_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `content` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.ems_notes: 8 rows
/*!40000 ALTER TABLE `ems_notes` DISABLE KEYS */;
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(8, 'nota de definción ', 'defunción del paciente por suicidio ', 'steam:11000010a412a06', '2020-08-27 00:04:52');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(9, 'Fractura en femur y brazo', 'El femur presentaba una fractura en 3 partes, la cual fue tratada con platinas. Ambas fracturas fueron enyesadas.', 'steam:110000111a3950e', '2020-09-22 00:24:49');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(12, 'Defunción', 'Asesinado en plaza central. Multiples disparos de un oficial de la policia conocido como Maxidominy James. ', 'steam:11000013df27b4b', '2020-10-24 11:56:50');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(15, 'Herida por arma blanc', 'Se le tomo 32 puntos en zona pectoral, y 28 puntos en al zona craneal', 'steam:11000011431cf6d', '2021-01-03 01:42:06');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(16, 'Receta', 'naproxeno sódico cada 8hr', 'steam:1100001423b5892', '2021-01-05 21:29:25');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(17, 'Ingreso', 'El paciente presentó dos fracturas sobre sus 2 brazos y se le ralizo cirujia', 'steam:1100001410216e6', '2021-01-11 22:39:43');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(18, 'Ingreso', 'El paciente presento fractua en 2 costillas superiores', 'steam:1100001423b5892', '2021-01-11 23:19:24');
INSERT INTO `ems_notes` (`id`, `title`, `content`, `user_id`, `created_at`) VALUES
	(19, 'Cirugia', '70 puntos en la parte sur oriente del craneo', 'steam:11000014091e5a5', '2021-01-20 19:24:24');
/*!40000 ALTER TABLE `ems_notes` ENABLE KEYS */;

-- Dumping structure for table extendedmode.ems_records
CREATE TABLE IF NOT EXISTS `ems_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(250) NOT NULL,
  `offence` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) NOT NULL,
  `officer_id` varchar(250) NOT NULL,
  `time` varchar(250) DEFAULT NULL,
  `created_at` int(20) DEFAULT NULL,
  `fine` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.ems_records: 12 rows
/*!40000 ALTER TABLE `ems_records` DISABLE KEYS */;
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(7, 'Cirugia Extracion de bala', NULL, 'steam:11000013245167d', 'steam:110000109176275', '8 horas', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(8, 'Herida de bala ', NULL, 'steam:110000117a28e61', 'steam:110000103a3dfb4', '1h', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(9, 'Brazo fracturado por tres partes', NULL, 'steam:11000013ec2b4fa', 'steam:110000103a3dfb4', '1h/30minutos', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(25, 'operacion fractura de tibia', NULL, 'steam:11000013eb113d9', 'steam:110000109176275', '10', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(11, 'Cirugia, multiples heridas y fallo cardiaco', NULL, 'steam:110000117412cf9', 'steam:110000109176275', '60 mnt', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(13, 'Toma de muestra de sangre', NULL, 'steam:11000010ebb727c', 'steam:110000109176275', '15 mnt', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(15, 'Defunción   ', NULL, 'steam:11000013df27b4b', 'steam:110000108268365', 'Indefinido', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(28, 'Cirugia pulmonas', NULL, 'steam:110000108268365', 'steam:110000143a5b9b7', '20 minutos', NULL, '1500');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(20, 'informe entrega para autopsia', NULL, 'steam:11000010a412a06', 'steam:110000109176275', '15', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(21, 'informe entrega para autopsia', NULL, 'steam:11000010a412a06', 'steam:110000109176275', '15', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(26, 'Ingreso ', NULL, 'steam:1100001410216e6', 'steam:110000108268365', '3 Meses', NULL, '0');
INSERT INTO `ems_records` (`id`, `reason`, `offence`, `user_id`, `officer_id`, `time`, `created_at`, `fine`) VALUES
	(27, 'Ingreso ', NULL, 'steam:1100001423b5892', 'steam:110000108268365', '3 Meses', NULL, '0');
/*!40000 ALTER TABLE `ems_records` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Usage abusif du klaxon', 30, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Franchir une ligne continue', 40, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Circulation à contresens', 250, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Demi-tour non autorisé', 250, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Circulation hors-route', 170, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Non-respect des distances de sécurité', 30, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Arrêt dangereux / interdit', 150, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(8, 'Stationnement gênant / interdit', 70, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(9, 'Non respect  de la priorité à droite', 70, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(10, 'Non-respect à un véhicule prioritaire', 90, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(11, 'Non-respect d\'un stop', 105, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(12, 'Non-respect d\'un feu rouge', 130, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(13, 'Dépassement dangereux', 100, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(14, 'Véhicule non en état', 100, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(15, 'Conduite sans permis', 1500, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(16, 'Délit de fuite', 800, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(17, 'Excès de vitesse < 5 kmh', 90, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(18, 'Excès de vitesse 5-15 kmh', 120, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(19, 'Excès de vitesse 15-30 kmh', 180, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(20, 'Excès de vitesse > 30 kmh', 300, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(21, 'Entrave de la circulation', 110, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(22, 'Dégradation de la voie publique', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(23, 'Trouble à l\'ordre publique', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(24, 'Entrave opération de police', 130, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(25, 'Insulte envers / entre civils', 75, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(26, 'Outrage à agent de police', 110, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(27, 'Menace verbale ou intimidation envers civil', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(28, 'Menace verbale ou intimidation envers policier', 150, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(29, 'Manifestation illégale', 250, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(30, 'Tentative de corruption', 1500, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(31, 'Arme blanche sortie en ville', 120, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(32, 'Arme léthale sortie en ville', 300, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(34, 'Port d\'arme illégal', 700, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(35, 'Pris en flag lockpick', 300, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(36, 'Vol de voiture', 1800, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(37, 'Vente de drogue', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(38, 'Fabriquation de drogue', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(39, 'Possession de drogue', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(40, 'Prise d\'ôtage civil', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(41, 'Prise d\'ôtage agent de l\'état', 2000, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(42, 'Braquage particulier', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(43, 'Braquage magasin', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(44, 'Braquage de banque', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(45, 'Tir sur civil', 2000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(46, 'Tir sur agent de l\'état', 2500, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(47, 'Tentative de meurtre sur civil', 3000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(49, 'Meurtre sur civil', 10000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(50, 'Meurte sur agent de l\'état', 30000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(51, 'Meurtre involontaire', 1800, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(52, 'Escroquerie à l\'entreprise', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_carteldellago
CREATE TABLE IF NOT EXISTS `fine_types_carteldellago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.fine_types_carteldellago: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_carteldellago` DISABLE KEYS */;
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_carteldellago` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_carteldellago` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_centauros
CREATE TABLE IF NOT EXISTS `fine_types_centauros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types_centauros: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_centauros` DISABLE KEYS */;
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_centauros` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_centauros` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_compayasos
CREATE TABLE IF NOT EXISTS `fine_types_compayasos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types_compayasos: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_compayasos` DISABLE KEYS */;
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_compayasos` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_compayasos` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_darklotus
CREATE TABLE IF NOT EXISTS `fine_types_darklotus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types_darklotus: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_darklotus` DISABLE KEYS */;
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_darklotus` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_darklotus` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_families
CREATE TABLE IF NOT EXISTS `fine_types_families` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.fine_types_families: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_families` DISABLE KEYS */;
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_families` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_flortarmy
CREATE TABLE IF NOT EXISTS `fine_types_flortarmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types_flortarmy: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_flortarmy` DISABLE KEYS */;
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_flortarmy` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_flortarmy` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_manonegra
CREATE TABLE IF NOT EXISTS `fine_types_manonegra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.fine_types_manonegra: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_manonegra` DISABLE KEYS */;
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_manonegra` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_manonegra` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_sijin
CREATE TABLE IF NOT EXISTS `fine_types_sijin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.fine_types_sijin: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_sijin` DISABLE KEYS */;
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Multa', 3000, 0);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Multa', 5000, 0);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Multa', 10000, 1);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Multa', 20000, 1);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Multa', 50000, 2);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Multa', 150000, 3);
INSERT INTO `fine_types_sijin` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Multa', 350000, 3);
/*!40000 ALTER TABLE `fine_types_sijin` ENABLE KEYS */;

-- Dumping structure for table extendedmode.fine_types_vagos
CREATE TABLE IF NOT EXISTS `fine_types_vagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.fine_types_vagos: ~0 rows (approximately)
/*!40000 ALTER TABLE `fine_types_vagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fine_types_vagos` ENABLE KEYS */;

-- Dumping structure for table extendedmode.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `limit` int(11) NOT NULL DEFAULT 10,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.items: ~187 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('MountedScope', 'Mira Pistolas MK2', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('Suppressor', 'Supresor', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Pollo vivo', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('arepaconcarne', 'Arepa con Carne', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('arepaconpollo', 'Arepa con Pollo', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('arepaconqueso', 'Arepa con Queso', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('arepamixta', 'Arepa Mixta', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bandage', 'Vendaje', 2, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('battery', 'Batería', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('blowpipe', 'Soplete', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bolcacahuetes', 'Bol de cacahuates', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bolchips', 'Bol de papas', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bolnoixcajou', 'Bol de nuez', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bolpistache', 'Bol de pistaches', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bonosoatytecnoautomovil', 'Bono SOAT/Tecno Automovil', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bonosoatytecnocamioneta', 'Bono SOAT/Tecno Camioneta', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bonotuneo', 'Bono Tuneo', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('boomdlugie', 'Boom Rifles Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('brandy', 'Brandy', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('bread', 'Natilla', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('burger', 'Hamburguesa', 160, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('camtablet', 'SecTablet', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('cannabis', 'Invalidd', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('cannabis2', 'Cannabis', 1, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('carokit', 'Body Kit', 3, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('carotool', 'Herramientas de Vehiculo', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('carropase', 'Abre un Ticket en Discord', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('celownikdluga', 'Mira Rifles', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('chemicals', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('chemicalslisence', 'Licencia de Quimicos', 0, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('chips', 'Papas fritas', 80, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('clip', 'Cargador de Arma', 500, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('clothe', 'Ropa', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coca_leaf', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coca_leaf2', 'Hoja de Coca', 1, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coca_seed', 'Semilla de Coca', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coffee', 'Café', 120, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coke', 'Bolsa de 2C', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coke1g', 'Maleta de coca', 100, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('coke2', 'Cocaína', 2, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('cokebrick', 'Ladrillo De 2C', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('cola', 'Coca Cola', 120, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('contrat', 'Restos Marinos', 1, 15, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('copper', 'Cobre', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('croquettes', 'Croquetas', 1, 20, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('cutted_wood', 'Madera cortada', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('czaszkidlugie', 'Skull Rifles Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('diamond', 'Diamante', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('diving_gear', 'Equipo de Buceo', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('donut', 'Buñuelo', 40, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('doors', 'Puertas', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('drill', 'Martillo Neumatico', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('drpepper', 'Dr. Pepper', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('energy', 'Bebida Energética', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('engine', 'Motor', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('essence', 'Esencia', 1, 20, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fabric', 'Tejido', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fakebankingcard', 'tarjeta bancaria falsa', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fish', 'Pez', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fishbait', 'Cebo de Pez', 6, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fishingrod', 'Caña de Pesca', 500, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fixkit', 'Kit de Reparacion', 3, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fixtool', 'Herramientas de Reparacion', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('flashlight', 'Linterna Armas', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('fried_chicken', 'Pollo frito', 80, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('gazbottle', 'Cilindro de gas', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('gold', 'Oro', 1, 200, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('golem', 'Golem', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('grapperaisin', 'Racimo de uvas', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('grip', 'Empuñadura Rifles', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('gym_membership', 'Membresía Gimnasio', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('hackingdevice', 'USB hack', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('headbag', 'Bolsa de Tela', 1, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('heroin', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('heroin2', 'Heroína', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('heroin_seed', 'Semilla de Amapola', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('heroine', 'Heroine', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('hifi', 'Radio Portátil', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('holografik', 'Mira Holográfica', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('hood', 'Capó', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('hotdog', 'Perro Caliente', 160, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('hydrochloric_acid', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('icedtea', 'Té helado', 120, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('icetea', 'Té helado', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('ied', 'Dispositivo Bomba', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('iron', 'Hierro', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jager', 'Jägermeister', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jagerbomb', 'Jägerbomb', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jagercerbere', 'Jäger Cerberus', 1, 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jagermeister', 'Jaegermeister', 120, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jewels', 'Joyas', 1, 160, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('jusfruit', 'Jugo de frutas', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetbalas', 'Knuckle Skin Ballas', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetdiament', 'Knuckle Skin Diamond', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetdollar', 'Knuckle Skin Dollar', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastethate', 'Knuckle Skin Hate', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetpimp', 'Knuckle Skin PIMP', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetpink', 'Knuckle Skin LOVE', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetplayer', 'Knuckle Skin Player', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kastetvagos', 'Knuckle Skin Vagos', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kevlar', 'Chaleco de Kevlar', 4000, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('kompensator', 'Compensador', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('largescope', 'Mira Larga', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('limonade', 'Limonada', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('lom', 'Llave de Cajero', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('lsa', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('marijuana', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('marijuana2', 'Marihuana', 1, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('martini', 'Martini blanco', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('medikit', 'Medikit', 2, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('mediumscope', 'Mira Media', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('menthe', 'Menta', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('meth', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('meth2', 'Invalid Item', 1, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('metreshooter', 'Metro de shots', 1, 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('mixapero', 'Mezcla de aperitivos', 1, 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('mojito', 'Mojito', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('moneywash', 'MoneyWash License', 0, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('monster', 'Monster', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('muffler', 'Mofle', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('net_cracker', 'Net Cracker', 1, 2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('nitro', 'Nitro', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('odznaka', 'Licencia de Policia', 1, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('oilpump', 'Bomba de aceite', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('packaged_chicken', 'Pollo Empacado', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('packaged_plank', 'Madera Empacada', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('paja', 'Chaleco de Paja', 1000, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('pay_works', 'Boleta de Pago', 1, 50, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('peach', 'melocotón', 1, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('peach_juice', 'Jugo de durazno', 1, 30, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('petrol', 'Petróleo', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('petrol_raffin', 'Aceite refinado', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('phone', 'Teléfono Móvil', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('pizza', 'Pizza', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('platin50', 'Platinium Pistol 50 Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('plomo', 'Chaleco con Plomo', 2000, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('plongee1', 'Traje de buceo corto', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('plongee2', 'Traje de buceo largo', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('poppyresin', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('poppyresin2', 'Resina de Amapola', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('powerade', 'Powerade', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('powiekszonymagazynek', 'Cargador Ampliado', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('protein_shake', 'Batido de Proteína', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('radio', 'Walkie-Talkie', 5, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rakia', 'Rakia', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('redbull', 'Redbull', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rhum', 'Ron', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rhumcoca', 'Ron-coca', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rhumfruit', 'Ron-jugo de frutas', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rims', 'Rines', 4, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('rum', 'Ron', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('saucisson', 'Salchicha', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('shark', 'Tiburón', 1000, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('shield', 'Escudo Balístico', 1000, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('sim_card', 'SIM Card', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('slaughtered_chicken', 'Pollo sin vida', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('soda', 'Soda', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('sodium_hydroxide', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('speakers', 'Altavoces', 6, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('sportlunch', 'Desayuno Sano', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('steeringwheel', 'Volante', 5, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('stone', 'Piedra', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('subwoofer', 'Subwoofer', 3, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('sulfuric_acid', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tactitalmuzle', 'Freno de Boca Táctico', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('teqpaf', 'Teq\'paf', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tequila', 'Tequila', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('thermite', 'Termita', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('thionyl_chloride', 'Invalid', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tintebronce', 'Spray Bronce', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tintenegroazul', 'Spray Negro Azul', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tintenegronaranja', 'Spray Negro Naranja', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tinteoro', 'Spray de Oro', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tinteplatino', 'Spray Platino', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tinterosa', 'Spray Rosa', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('tintes', 'Spray de Arma', 1, 1, 0, 0);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('trunk', 'Maletero', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('turtle', 'Tortuga de Mar', 500, 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('turtlebait', 'Cebo de Tortuga', 5, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('usbhacked', 'usb hackeado', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('vipskinmotyl', 'VIP Skin Butterfly', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('vodka', 'Vodka', 180, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('vodkaenergy', 'Vodka-energy', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('vodkafruit', 'Vodka-jugo de frutas', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('washed_stone', 'Piedra Lavada', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('water', 'Agua', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('waterpump', 'Bomba de agua', 2, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weabox', 'Caja de munición', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weaclip', 'Cargador de Arma', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weed', 'Weed', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weed_seed', 'Semilla de Cannabis', 1, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('whiskey', 'Whisky', 180, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('whisky', 'Whisky', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('whiskycoca', 'Whisky-coca', 1, 5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('wine', 'Vino', 150, 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('wood', 'Madera', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('wooddlugie', 'Wood Rifles Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('woodheavyp', 'Wood Heavy Pistol Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('wool', 'Lana', 1, 100, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('yusuf', 'Gold Skin', 1, -1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('zarowki', 'Cambiador de Luces', 1, 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('zebradlugie', 'Zebra Rifles Skin', 1, -1, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table extendedmode.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.jobs: ~38 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('LODE', 'La Oficina de Envigado', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('admin', 'Administrador', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'Grupo EMI', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('avocat', 'Abogado', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('blackeagles', 'Bloods', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('cardealer', 'Concessionnaire', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('carteldellago', 'DISABLED JOB', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('casino', 'Casino', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('families', 'families', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fbi', 'FBI', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fisherman', 'Pescador', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fueler', 'Refinador', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('gace', 'GACE', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('garbage', 'Recolector de Basura', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('lamanada', 'Ballas', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('lumberjack', 'Leñador', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('marabunta', 'marabunta', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('mechanic', 'Mecánico', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('miner', 'Minero', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('offambulance', 'Fuera de Servicio', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('offmechanic', 'Fuera de Servicio', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('offpolice', 'Fuera de Servicio', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('offtaxi', 'Fuera de Servicio', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('police', 'Policía Nacional', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('reporter', 'Reportero', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('salvage', 'Recolector Marino', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('secworker', 'SecWorker', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('sheriff', 'Sheriff', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('sijin', 'sijin', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('slaughterer', 'Carnicero', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('state', 'Estado', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('tailor', 'Sastre', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('taxi', 'Taxi', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unemployed', 'Desempleado', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('vagos', 'vagos', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('vercetti', 'vercetti', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('weazelnews', 'RCN', 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('works', 'Servicios Públicos', 1);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table extendedmode.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.job_grades: ~146 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Desempleado', 1500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(2, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(3, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(4, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(5, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(6, 'lumberjack', 0, 'employee', 'Leñador', 0, '{"torso_2":0,"torso_1":44,"ears_2":0,"arms":11,"helmet_1":10,"tshirt_2":0,"shoes":24,"tshirt_1":15,"helmet_2":3,"decals_1":0,"chain_1":0,"pants_1":7,"arms_2":0,"pants_2":1,"shoes_2":0,"shoes_1":0,"chain_2":0,"ears_1":-1,}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(7, 'fisherman', 0, 'employee', 'Pescador', 0, '{"torso_2":0,"torso_1":238,"pants_2":1,"ears_2":0,"shoes_1":5,"arms":5,"helmet_1":51,"tshirt_2":20,"tshirt_1":0,"arms_2":0,"decals_1":0,"helmet_2":1,"pants_1":6,"chain_1":0,"decals_2":0,"shoes_2":0,"chain_2":20,"ears_1":-1}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(8, 'fueler', 0, 'employee', 'Refinador', 0, '{"noseh":0,"sun_2":0,"glasses_1":0,"blemishes_2":0,"beard_4":0,"nosepl":0,"chest_1":0,"bproof_2":1,"lipstick_1":0,"makeup_2":0,"cbw":0,"makeup_1":0,"pants_1":33,"arms":16,"makeup_4":0,"glasses":0,"jbw":0,"lipstick_3":0,"decals_1":0,"age_2":0,"ears_1":-1,"nosel":0,"age_1":0,"face":8,"hair_color_1":4,"blush_1":0,"hair_color_2":0,"chain_1":0,"moles_2":0,"bracelets_2":0,"nosebh":0,"eyebf":0,"makeup_3":0,"chest_3":0,"mask_1":0,"decals_2":0,"mask_2":0,"sex":0,"lipstick_4":0,"torso_2":4,"beard_2":10,"chbw":0,"moles_1":0,"skin":10,"bracelets_1":0,"ears_2":0,"hair_1":3,"helmet_2":1,"bodyb_1":0,"chw":0,"watches_1":8,"bags_2":0,"beard_1":10,"eyebh":0,"chbbl":0,"bodyb_2":0,"jbbl":0,"complexion_1":0,"torso_1":228,"noset":0,"tshirt_1":15,"bproof_1":0,"shoes_2":0,"tshirt_2":0,"shoes":24,"lipstick_2":0,"cbh":0,"pants_2":0,"neckt":0,"sun_1":0,"chbble":0,"hair_2":0,"watches_2":0,"helmet_1":30,"eyebrows_4":0,"lipst":0,"blush_3":0,"complexion_2":0,"bags_1":0,"eye_color":0,"eyebrows_3":4,"blemishes_1":0,"arms_2":0,"chho":0,"glasses_2":3,"eyebrows_1":0,"beard_3":4,"chain_2":0,"nosew":0,"eyeop":0,"shoes_1":24,"blush_2":0,"eyebrows_2":10,"chest_2":0}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(9, 'reporter', 0, 'employee', 'Empleado', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(10, 'tailor', 0, 'employee', 'Sastre', 0, '{"torso_2":1,"torso_1":250,"pants_2":5,"ears_2":0,"shoes_1":20,"arms":0,"helmet_1":51,"tshirt_2":20,"arms_2":0,"decals_1":0,"helmet_2":1,"pants_1":10,"chain_1":0,"decals_2":0,"shoes_2":5,"chain_2":0,"tshirt_1":0,"ears_1":-1,}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(11, 'miner', 0, 'employee', 'Minero', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(12, 'slaughterer', 0, 'employee', 'Carnicero', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(17, 'mechanic', 0, 'recrue', 'Recluta', 1500, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(18, 'mechanic', 1, 'novice', 'Novato', 3800, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(19, 'mechanic', 2, 'novice', 'Aprendiz', 4500, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(20, 'mechanic', 3, 'experimente', 'Ingeniero', 4800, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(21, 'mechanic', 4, 'experimente', 'Mecanico', 5000, '{"helmet_1":-1,"shoes_1":12,"bracelets_1":-1,"chain_1":0,"arms_2":1"watches_1":-1,"helmet_2":0,"tshirt_2":0,"shoes_2":6,"tshirt_1":90,"torso_2":1,"ears_1":-1,"torso_1":95,"arms":151,"chain_2":0,"shoes":63,"chest_1":16,"pants_1":49,"pants_2":1}', '{"helmet_2":0,"age_1":0,"lipst":0,"makeup_2":0,"eyebrows_1":2,"moles_2":0,"chho":0,"bracelets_2":0,"neckt":0,"eyebh":0,"jbbl":0,"eyebf":0,"nosepl":0,"cbw":0,"torso_2":1,"lipstick_4":0,"decals_1":0,"blemishes_2":0,"hair_1":12,"hair_color_2":0,"arms_2":0,"lipstick_3":0,"shoes_1":12,"tshirt_2":0,"mask_1":0,"bracelets_1":-1,"bproof_1":0,"blush_2":0,"bodyb_1":0,"nosebh":0,"shoes_2":10,"noseh":0,"pants_2":3,"chbw":0,"beard_4":17,"ears_1":4,"chest_1":0,"sun_1":0,"chbbl":0,"helmet_1":96,"glasses_1":5,"pants_1":98,"arms":32,"chbble":0,"shoes":63,"torso_1":9,"glasses_2":3,"beard_1":7,"nosel":0,"tshirt_1":15,"sun_2":0,"chw":0,"chain_1":17,"makeup_1":0,"bodyb_2":0,"noset":0,"blemishes_1":0,"chest_2":0,"chest_3":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(27, 'taxi', 0, 'recrue', 'Novato', 2500, '{"decals_1":0,"glasses_1":0,"tshirt_2":0,"bodyb_2":0,"glasses_2":0,"hair_1":11,"eyebrows_4":0,"face":0,"chbble":0,"complexion_1":0,"complexion_2":0,"beard_3":0,"skin":12,"nosew":0,"hair_color_1":0,"bracelets_1":0,"nosepl":0,"tshirt_1":15,"lipstick_3":0,"chest_3":0,"torso_1":13,"torso_2":2,"hair_color_2":0,"chw":0,"makeup_2":0,"chbbl":0,"helmet_1":63,"beard_2":8,"arms":59,"makeup_1":0,"blemishes_2":0,"watches_2":0,"nosel":0,"noset":0,"moles_2":0,"mask_2":0,"hair_2":0,"lipstick_1":0,"makeup_3":0,"eyeop":0,"lipstick_4":0,"blush_3":0,"eyebh":0,"makeup_4":0,"sex":0,"sun_1":0,"chain_2":5,"shoes_2":11,"mask_1":0,"bracelets_2":0,"eyebrows_2":8,"bodyb_1":0,"shoes_1":21,"bags_1":0,"chest_1":2,"helmet_2":9,"age_1":0,"sun_2":0,"eyebrows_1":2,"beard_1":10,"chbw":0,"eyebrows_3":0,"bproof_2":0,"chain_1":23,"arms_2":0,"lipst":0,"jbw":0,"pants_1":10,"eye_color":3,"decals_2":0,"bags_2":0,"chest_2":1,"jbbl":0,"cbh":0,"noseh":0,"ears_2":0,"ears_1":-1,"blush_2":0,"age_2":0,"eyebf":0,"cbw":0,"nosebh":0,"watches_1":6,"neckt":0,"beard_4":0,"blush_1":0,"lipstick_2":0,"pants_2":0,"chho":0,"bproof_1":0,"moles_1":0,"blemishes_1":0}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(28, 'taxi', 1, 'novice', 'Conductor', 3000, '{"decals_1":0,"glasses_1":0,"tshirt_2":0,"bodyb_2":0,"glasses_2":0,"hair_1":11,"eyebrows_4":0,"face":0,"chbble":0,"complexion_1":0,"complexion_2":0,"beard_3":0,"skin":12,"nosew":0,"hair_color_1":0,"bracelets_1":0,"nosepl":0,"tshirt_1":15,"lipstick_3":0,"chest_3":0,"torso_1":13,"torso_2":2,"hair_color_2":0,"chw":0,"makeup_2":0,"chbbl":0,"helmet_1":63,"beard_2":8,"arms":59,"makeup_1":0,"blemishes_2":0,"watches_2":0,"nosel":0,"noset":0,"moles_2":0,"mask_2":0,"hair_2":0,"lipstick_1":0,"makeup_3":0,"eyeop":0,"lipstick_4":0,"blush_3":0,"eyebh":0,"makeup_4":0,"sex":0,"sun_1":0,"chain_2":5,"shoes_2":11,"mask_1":0,"bracelets_2":0,"eyebrows_2":8,"bodyb_1":0,"shoes_1":21,"bags_1":0,"chest_1":2,"helmet_2":9,"age_1":0,"sun_2":0,"eyebrows_1":2,"beard_1":10,"chbw":0,"eyebrows_3":0,"bproof_2":0,"chain_1":23,"arms_2":0,"lipst":0,"jbw":0,"pants_1":10,"eye_color":3,"decals_2":0,"bags_2":0,"chest_2":1,"jbbl":0,"cbh":0,"noseh":0,"ears_2":0,"ears_1":-1,"blush_2":0,"age_2":0,"eyebf":0,"cbw":0,"nosebh":0,"watches_1":6,"neckt":0,"beard_4":0,"blush_1":0,"lipstick_2":0,"pants_2":0,"chho":0,"bproof_1":0,"moles_1":0,"blemishes_1":0}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(29, 'taxi', 2, 'experimente', 'Experimentado', 4600, '{"decals_1":0,"glasses_1":0,"tshirt_2":0,"bodyb_2":0,"glasses_2":0,"hair_1":11,"eyebrows_4":0,"face":0,"chbble":0,"complexion_1":0,"complexion_2":0,"beard_3":0,"skin":12,"nosew":0,"hair_color_1":0,"bracelets_1":0,"nosepl":0,"tshirt_1":15,"lipstick_3":0,"chest_3":0,"torso_1":13,"torso_2":2,"hair_color_2":0,"chw":0,"makeup_2":0,"chbbl":0,"helmet_1":63,"beard_2":8,"arms":59,"makeup_1":0,"blemishes_2":0,"watches_2":0,"nosel":0,"noset":0,"moles_2":0,"mask_2":0,"hair_2":0,"lipstick_1":0,"makeup_3":0,"eyeop":0,"lipstick_4":0,"blush_3":0,"eyebh":0,"makeup_4":0,"sex":0,"sun_1":0,"chain_2":5,"shoes_2":11,"mask_1":0,"bracelets_2":0,"eyebrows_2":8,"bodyb_1":0,"shoes_1":21,"bags_1":0,"chest_1":2,"helmet_2":9,"age_1":0,"sun_2":0,"eyebrows_1":2,"beard_1":10,"chbw":0,"eyebrows_3":0,"bproof_2":0,"chain_1":23,"arms_2":0,"lipst":0,"jbw":0,"pants_1":10,"eye_color":3,"decals_2":0,"bags_2":0,"chest_2":1,"jbbl":0,"cbh":0,"noseh":0,"ears_2":0,"ears_1":-1,"blush_2":0,"age_2":0,"eyebf":0,"cbw":0,"nosebh":0,"watches_1":6,"neckt":0,"beard_4":0,"blush_1":0,"lipstick_2":0,"pants_2":0,"chho":0,"bproof_1":0,"moles_1":0,"blemishes_1":0}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(30, 'taxi', 3, 'uber', 'Supervisor', 5250, '{"decals_1":0,"glasses_1":0,"tshirt_2":0,"bodyb_2":0,"glasses_2":0,"hair_1":11,"eyebrows_4":0,"face":0,"chbble":0,"complexion_1":0,"complexion_2":0,"beard_3":0,"skin":12,"nosew":0,"hair_color_1":0,"bracelets_1":0,"nosepl":0,"tshirt_1":15,"lipstick_3":0,"chest_3":0,"torso_1":13,"torso_2":2,"hair_color_2":0,"chw":0,"makeup_2":0,"chbbl":0,"helmet_1":63,"beard_2":8,"arms":59,"makeup_1":0,"blemishes_2":0,"watches_2":0,"nosel":0,"noset":0,"moles_2":0,"mask_2":0,"hair_2":0,"lipstick_1":0,"makeup_3":0,"eyeop":0,"lipstick_4":0,"blush_3":0,"eyebh":0,"makeup_4":0,"sex":0,"sun_1":0,"chain_2":5,"shoes_2":11,"mask_1":0,"bracelets_2":0,"eyebrows_2":8,"bodyb_1":0,"shoes_1":21,"bags_1":0,"chest_1":2,"helmet_2":9,"age_1":0,"sun_2":0,"eyebrows_1":2,"beard_1":10,"chbw":0,"eyebrows_3":0,"bproof_2":0,"chain_1":23,"arms_2":0,"lipst":0,"jbw":0,"pants_1":10,"eye_color":3,"decals_2":0,"bags_2":0,"chest_2":1,"jbbl":0,"cbh":0,"noseh":0,"ears_2":0,"ears_1":-1,"blush_2":0,"age_2":0,"eyebf":0,"cbw":0,"nosebh":0,"watches_1":6,"neckt":0,"beard_4":0,"blush_1":0,"lipstick_2":0,"pants_2":0,"chho":0,"bproof_1":0,"moles_1":0,"blemishes_1":0}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(31, 'taxi', 4, 'boss', 'Jefe', 6000, '{"decals_1":0,"glasses_1":0,"tshirt_2":0,"bodyb_2":0,"glasses_2":0,"hair_1":11,"eyebrows_4":0,"face":0,"chbble":0,"complexion_1":0,"complexion_2":0,"beard_3":0,"skin":12,"nosew":0,"hair_color_1":0,"bracelets_1":0,"nosepl":0,"tshirt_1":15,"lipstick_3":0,"chest_3":0,"torso_1":13,"torso_2":2,"hair_color_2":0,"chw":0,"makeup_2":0,"chbbl":0,"helmet_1":63,"beard_2":8,"arms":59,"makeup_1":0,"blemishes_2":0,"watches_2":0,"nosel":0,"noset":0,"moles_2":0,"mask_2":0,"hair_2":0,"lipstick_1":0,"makeup_3":0,"eyeop":0,"lipstick_4":0,"blush_3":0,"eyebh":0,"makeup_4":0,"sex":0,"sun_1":0,"chain_2":5,"shoes_2":11,"mask_1":0,"bracelets_2":0,"eyebrows_2":8,"bodyb_1":0,"shoes_1":21,"bags_1":0,"chest_1":2,"helmet_2":9,"age_1":0,"sun_2":0,"eyebrows_1":2,"beard_1":10,"chbw":0,"eyebrows_3":0,"bproof_2":0,"chain_1":23,"arms_2":0,"lipst":0,"jbw":0,"pants_1":10,"eye_color":3,"decals_2":0,"bags_2":0,"chest_2":1,"jbbl":0,"cbh":0,"noseh":0,"ears_2":0,"ears_1":-1,"blush_2":0,"age_2":0,"eyebf":0,"cbw":0,"nosebh":0,"watches_1":6,"neckt":0,"beard_4":0,"blush_1":0,"lipstick_2":0,"pants_2":0,"chho":0,"bproof_1":0,"moles_1":0,"blemishes_1":0}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(61, 'offmechanic', 0, 'recrue', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(62, 'offmechanic', 1, 'novice', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(63, 'offmechanic', 2, 'experimente', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(64, 'offmechanic', 3, 'chief', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(65, 'offmechanic', 4, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(66, 'offtaxi', 0, 'recrue', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(67, 'offtaxi', 1, 'novice', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(68, 'offtaxi', 2, 'experimente', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(69, 'offtaxi', 3, 'uber', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(70, 'offtaxi', 4, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(71, 'police', 0, 'recruit', 'Bachiller', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(72, 'police', 2, 'officer', 'Patrullero', 2500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(73, 'police', 3, 'officer', 'Cabo', 3000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(74, 'police', 4, 'sergeant', 'Sargento', 3500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(75, 'police', 5, 'sergeant', 'Subteniente', 4000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(76, 'police', 6, 'lieutenant', 'Teniente', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(77, 'police', 7, 'lieutenant', 'Capitan', 4800, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(78, 'police', 8, 'boss', 'Mayor', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(79, 'police', 9, 'boss', 'Coronel', 5550, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(80, 'police', 10, 'boss', 'General', 6000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(81, 'offpolice', 0, 'recruit', 'Bachiller', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(82, 'offpolice', 2, 'officer', 'Patrullero', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(83, 'offpolice', 3, 'officer', 'Cabo', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(84, 'offpolice', 4, 'sergeant', 'Sargento', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(85, 'offpolice', 5, 'sergeant', 'Subteniente', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(86, 'offpolice', 6, 'lieutenant', 'Teniente', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(87, 'offpolice', 7, 'lieutenant', 'Capitán', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(88, 'offpolice', 8, 'boss', 'Mayor', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(89, 'offpolice', 9, 'boss', 'Coronel', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(90, 'offpolice', 10, 'boss', 'General', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(91, 'casino', 0, 'barman', 'Barman', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(92, 'casino', 1, 'secu', 'Encargado', 5250, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(93, 'casino', 2, 'boss', 'Patron', 6000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(94, 'ambulance', 0, 'ambulance', 'Camillero', 5500, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(95, 'ambulance', 1, 'ambulance', 'Enfermero', 5800, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(96, 'ambulance', 2, 'doctor', 'Paramédico', 6200, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(97, 'ambulance', 3, 'doctor', 'Médico', 6800, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(98, 'ambulance', 4, 'chief_doctor', 'Especialista', 7400, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(99, 'ambulance', 5, 'boss', 'Jefe', 8000, '{"pants_2":0,"tshirt_2":0,"arms_2":1,"arms":85,"chain_1":0,"torso_1":86,"ears_2":0,"chain_2":0,"mask_1":0,"torso_2":0,"decals_2":0,"shoes_1":8,"shoes_2":0,"tshirt_1":15,"tshirt_2":0,"pants_1":43,"pants_2":0,"ears_1":-1,"bproof_1":0,"bproof_2":0}', '{"decals_1":0,"mask_1":0,"arms_1":14,"tshirt_2":0,"pants_1":27,"shoes_1":60,"helmet_1":-1,"tshirt_1":15,"shoes_2":6,"bproof_2":0,"torso_1":88,"arms_2":0,"shoes":8,"pants_2":1,"torso_2":0,"arms":0,"chain_2":0,"chain_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(100, 'offambulance', 0, 'ambulance', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(101, 'offambulance', 1, 'ambulance', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(102, 'offambulance', 2, 'doctor', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(103, 'offambulance', 3, 'doctor', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(104, 'offambulance', 4, 'chief_doctor', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(105, 'offambulance', 5, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(110, 'admin', 0, 'admin', 'en servicio', 8000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(112, 'weazelnews', 2, 'boss', 'Jefe', 9500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(113, 'salvage', 0, 'employee', 'Buzo', 1500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(114, 'weazelnews', 0, 'recrue', 'Empleado', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(115, 'weazelnews', 1, 'recrue', 'Presentador de Noticias', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(121, 'avocat', 0, 'recluit', 'Aprendiz', 4500, '{}', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(122, 'avocat', 1, 'boss', 'Abogado', 6800, '{}', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(125, 'state', 0, 'vicepresident', 'Subsecretario', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(126, 'state', 3, 'president', 'Alcalde', 8000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(127, 'state', 2, 'gouvernment', 'Concejal', 6000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(128, 'state', 1, 'boss', 'Secretario', 5500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(149, 'vercetti', 0, 'recruit', 'Recluta', 3500, '{"mask_1":126,"watches_1":6,"arms":36,"pants_2":0,"ears_1":-1,"tshirt_2":0,"pants_1":33,"torso_1":49,"arms_2":0,"nosel":0,"sun_1":0,"chho":0,"skin_md_weight":"50","mask_2":0,"torso_2":2,"helmet_1":28,"shoes_2":0,"tshirt_1":125,"helmet_2":0,"shoes_1":50}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(150, 'vercetti', 1, 'gangster', 'Gangster', 4500, '{"mask_1":126,"watches_1":6,"arms":36,"pants_2":0,"ears_1":-1,"tshirt_2":0,"pants_1":33,"torso_1":49,"arms_2":0,"nosel":0,"sun_1":0,"chho":0,"skin_md_weight":"50","mask_2":0,"torso_2":2,"helmet_1":28,"shoes_2":0,"tshirt_1":125,"helmet_2":0,"shoes_1":50}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(151, 'vercetti', 2, 'bandit', 'Bandido', 5000, '{"mask_1":126,"watches_1":6,"arms":36,"pants_2":0,"ears_1":-1,"tshirt_2":0,"pants_1":33,"torso_1":49,"arms_2":0,"nosel":0,"sun_1":0,"chho":0,"skin_md_weight":"50","mask_2":0,"torso_2":2,"helmet_1":28,"shoes_2":0,"tshirt_1":125,"helmet_2":0,"shoes_1":50}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(152, 'vercetti', 3, 'boss', 'Jefe', 5000, '{"mask_1":126,"watches_1":6,"arms":36,"pants_2":0,"ears_1":-1,"tshirt_2":0,"pants_1":33,"torso_1":49,"arms_2":0,"nosel":0,"sun_1":0,"chho":0,"skin_md_weight":"50","mask_2":0,"torso_2":2,"helmet_1":28,"shoes_2":0,"tshirt_1":125,"helmet_2":0,"shoes_1":50}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(163, 'mechanic', 5, 'chief', 'Superior', 5300, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(164, 'mechanic', 6, 'boss', 'Subjefe', 5600, '{"tshirt_1":89,"shoes_2":6,"pants_2":0,"shoes_1":12,"ears_1":4,"torso_2":0,"shoes":63,"mask_1":0,"decals_1":0,"tshirt_2":0,"decals_2":0,"arms":20,"ears_2":0,"arms_2":0,"chain_1":0,"torso_1":66,"pants_1":39,"chain_2":0}', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(165, 'mechanic', 7, 'boss', 'Jefe', 6000, '{"arms":0,"chain_2":0,"decals_2":0,"shoes_2":10,"chain_1":0,"arms_2":0,"torso_1":65,"torso_2":3,"pants_2":3,"helmet_2":5,"pants_1":38,"shoes_1":12,"ears_1":4,"shoes":63,"tshirt_2":0,"tshirt_1":15,"ears_2":0}', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(166, 'garbage', 0, 'employee', 'Recolector de Basura', 1000, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(167, 'lamanada', 0, 'recruit', 'Sicario', 1500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(168, 'lamanada', 2, 'gangster', 'Gangster', 3000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(169, 'lamanada', 3, 'bandit', 'Socio', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(170, 'lamanada', 4, 'boss', 'Patrón', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(171, 'gace', 0, 'recruit', 'Recluta', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(172, 'gace', 1, 'gangster', 'Gangster', 2000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(173, 'gace', 2, 'bandit', 'Bandido', 3000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(174, 'gace', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(175, 'offmechanic', 5, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(176, 'offmechanic', 6, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(177, 'offmechanic', 7, 'boss', 'Fuera de Servicio', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(178, 'sijin', 0, 'recruit', 'Recluta', 20, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(179, 'sijin', 1, 'gangster', 'Agente', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(180, 'sijin', 2, 'bandit', 'Sub Director', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(181, 'sijin', 3, 'boss', 'Director', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(182, 'sheriff', 0, 'recruit', 'Sheriff Novato', 20, '{"bodyb_2":0,"chest_2":0,"chest_3":0,"makeup_2":0,"glasses_2":0,"hair_color_1":55,"eyebrows_3":0,"hair_1":12,"glasses_1":0,"bproof_2":0,"watches_1":-1,"tshirt_1":54,"chw":0,"ears_1":-1,"blemishes_2":0,"blush_3":0,"bodyb_1":0,"nosepl":0,"bags_1":0,"hair_color_2":0,"chho":0,"mask_1":0,"ears_2":0,"sun_1":0,"arms":2,"decals_2":0,"bags_2":0,"lipstick_4":0,"beard_3":55,"lipst":0,"helmet_1":33,"lipstick_2":0,"age_1":0,"eyebrows_1":0,"shoes_2":0,"mask_2":0,"chbble":0,"noseh":0,"beard_1":2,"eyebrows_4":0,"chain_2":0,"arms_2":0,"pants_1":32,"blush_2":0,"eyeop":0,"blemishes_1":0,"hair_2":2,"complexion_1":0,"beard_4":0,"cbh":0,"torso_1":183,"nosebh":0,"chest_1":0,"sun_2":0,"moles_2":0,"jbw":0,"cbw":0,"eyebf":0,"makeup_1":0,"chain_1":0,"makeup_3":0,"tshirt_2":0,"moles_1":0,"watches_2":0,"lipstick_3":0,"chbbl":0,"helmet_2":0,"chbw":0,"eye_color":0,"beard_2":10,"eyebrows_2":0,"skin":6,"bracelets_2":0,"age_2":0,"bracelets_1":-1,"torso_2":0,"neckt":0,"decals_1":0,"lipstick_1":0,"face":44,"jbbl":0,"eyebh":0,"pants_2":0,"nosel":0,"bproof_1":0,"complexion_2":0,"nosew":0,"noset":0,"shoes_1":13,"sex":0,"blush_1":0,"makeup_4":0}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(183, 'sheriff', 1, 'officer', 'Sheriff Menor', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(184, 'sheriff', 2, 'sergeant', 'Sheriff Mayor', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(185, 'sheriff', 3, 'lieutenant', 'Sheriff Comandante', 85, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(186, 'sheriff', 4, 'boss', 'Sheriff General', 100, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(187, 'carteldellago', 0, 'recruit', 'Recluta', 3500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(188, 'carteldellago', 1, 'gangster', 'Gangster', 4000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(189, 'carteldellago', 2, 'bandit', 'Bandido', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(190, 'carteldellago', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(191, 'lamanada', 1, 'recruit', 'Bandido', 1700, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(231, 'blackeagles', 0, 'recruit', 'Recluta', 2500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(232, 'blackeagles', 1, 'gangster', 'Gangster', 3000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(233, 'blackeagles', 2, 'bandit', 'Bandido', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(234, 'blackeagles', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(235, 'fbi', 0, 'agent', 'Agente', 3500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(236, 'fbi', 1, 'special', 'Agente experimentado', 4000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(237, 'fbi', 2, 'supervisor', 'Supervisor', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(238, 'fbi', 3, 'assistant', 'Subgerente', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(239, 'fbi', 4, 'boss', 'Director', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(240, 'carteldemedellin', 0, 'recruit', 'Recluta', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(241, 'carteldemedellin', 1, 'gangster', 'Gangster', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(242, 'carteldemedellin', 2, 'bandit', 'Bandido', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(243, 'carteldemedellin', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(244, 'secworker', 0, 'recruit', 'Worker', 0, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(245, 'secworker', 1, 'boss', 'Boss', 0, '', '');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(246, 'LODE', 0, 'recruit', 'Recluta', 3500, '{"arms_2":0,"torso_2":8,"arms":28,"tshirt_1":170,"pants_2":0,"decals_2":0,"shoes_1":25,"shoes_2":0,"tshirt_2":3,"glasses_1":24,"mask_1":52,"chain_1":12,"chain_2":0,"pants_1":59,"glasses_2":1,"helmet_2":20,"torso_1":316,"helmet_1":104}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(247, 'LODE', 1, 'gangster', 'Gangster', 4000, '{"arms_2":0,"torso_2":8,"arms":28,"tshirt_1":170,"pants_2":0,"decals_2":0,"shoes_1":25,"shoes_2":0,"tshirt_2":3,"glasses_1":24,"mask_1":52,"chain_1":12,"chain_2":0,"pants_1":59,"glasses_2":1,"helmet_2":20,"torso_1":316,"helmet_1":104}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(248, 'LODE', 2, 'bandit', 'Bandido', 4500, '{"arms_2":0,"torso_2":8,"arms":28,"tshirt_1":170,"pants_2":0,"decals_2":0,"shoes_1":25,"shoes_2":0,"tshirt_2":3,"glasses_1":24,"mask_1":52,"chain_1":12,"chain_2":0,"pants_1":59,"glasses_2":1,"helmet_2":20,"torso_1":316,"helmet_1":104}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(249, 'LODE', 3, 'boss', 'Jefe', 5000, '{"arms_2":0,"torso_2":8,"arms":28,"tshirt_1":170,"pants_2":0,"decals_2":0,"shoes_1":25,"shoes_2":0,"tshirt_2":3,"glasses_1":24,"mask_1":52,"chain_1":12,"chain_2":0,"pants_1":59,"glasses_2":1,"helmet_2":20,"torso_1":316,"helmet_1":104}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(250, 'police', 1, 'recruit', 'Auxiliar', 2250, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(251, 'offpolice', 1, 'recruit', 'Auxiliar', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(252, 'vagos', 0, 'recruit', 'Recluta', 2000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(253, 'vagos', 1, 'gangster', 'Gangster', 3000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(254, 'vagos', 2, 'bandit', 'Bandido', 4500, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(255, 'vagos', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(256, 'families', 0, 'recruit', 'Recluta', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(257, 'families', 1, 'gangster', 'Gangster', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(258, 'families', 2, 'bandit', 'Bandido', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(259, 'families', 3, 'boss', 'Jefe', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(260, 'offpolice', 11, 'boss', 'CTI', 1000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(261, 'police', 11, 'boss', 'CTI', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(262, 'marabunta', 0, 'recruit', 'Recluta', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(263, 'marabunta', 1, 'gangster', 'Gangster', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(264, 'marabunta', 2, 'bandit', 'Bandido', 5000, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(265, 'marabunta', 2, 'boss', 'Jefe', 5000, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table extendedmode.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.licenses: ~6 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Pase de Examen');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive', 'Permiso de Conducir A1');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_bike', 'Permiso de Conducir B1');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_truck', 'Permiso de Conducir C1');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Permiso de porte de armas');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table extendedmode.mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.mdt_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports` ENABLE KEYS */;

-- Dumping structure for table extendedmode.mdt_warrants
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `char_id` varchar(255) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.mdt_warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_warrants` ENABLE KEYS */;

-- Dumping structure for table extendedmode.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.owned_properties: ~166 rows (approximately)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(120, 'Mansión "La Alcachofa"', 1592680, 0, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(143, 'Mansión Usmelove', 1592680, 0, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(214, 'Dutch London StLowApartament93', 1404, 1, 'steam:11000011705a928');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(282, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000014199017c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(323, 'Gentry LaneApartment223', 1563990, 0, 'steam:11000010f071739');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(360, 'Didion DrApartment226', 1094470, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(369, 'Pyrite AveLowApartament29', 285890, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(372, 'Senora FwyLowApartament309', 300720, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(389, 'Las Lagunas BlvdLowApartament241', 298460, 0, 'steam:110000114ef9293');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(411, 'Vespucci BlvdApartment152', 901140, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(421, 'Vespucci BlvdApartment152', 901140, 0, 'steam:110000140ccbd0a');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(425, 'P?n. Rockford DrMotel311', 150000, 0, 'steam:11000013d576266');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(514, 'Niland AveLowApartament304', 282230, 0, 'steam:110000114ef9293');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(562, 'Vespucci BlvdApartment152', 901140, 0, 'steam:11000013d201622');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(573, 'Las Lagunas BlvdApartment237', 5870, 1, 'steam:1100001114596e6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(592, 'Procopio DrApartment47', 7436, 1, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(597, 'Hawick AveLowApartament250', 303450, 0, 'steam:1100001165da6a4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(603, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(637, 'Hillcrest AveApartment24', 1153670, 0, 'steam:11000013d576266');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(638, 'Panorama DrLowApartament299', 1359, 1, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(646, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000011c2766a1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(655, 'Hawick AveLowApartament267', 1505, 1, 'steam:1100001114596e6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(690, 'Wsch. Joshua RdApartment308', 1322430, 0, 'steam:11000013d201622');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(733, 'Marina DrLowApartament300', 1476, 1, 'steam:11000010ebb727c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(755, 'Zach. Mirror DriveLowApartament175', 1399, 1, 'steam:110000117252f7f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(770, 'Vespucci BlvdApartment152', 4506, 1, 'steam:1100001114596e6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(776, 'Marina DrLowApartament300', 1476, 1, 'steam:1100001114596e6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(833, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000109176275');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(857, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013c754270');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(894, 'Fudge LnLowApartament282', 1385, 1, 'steam:11000013f981993');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(947, 'Hillcrest AveApartment24', 1153670, 0, 'steam:110000135e2d2d2');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(962, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000010ebb727c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(965, 'Grove StLowApartament1', 1465, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(999, 'Mansión Usmelove', 7963, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1027, 'Hawick AveLowApartament250', 303450, 0, 'steam:110000115993c50');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1051, 'Hawick AveLowApartament250', 1517, 1, 'steam:110000143571857');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1070, 'Hawick AveLowApartament250', 303450, 0, 'steam:11000014065436f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1077, 'Meteor StLowApartament249', 1528, 1, 'steam:11000010ebb727c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1103, 'Panorama DrLowApartament299', 1359, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1118, 'Procopio DrApartment47', 7436, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1144, 'Marina DrLowApartament300', 1476, 1, 'steam:110000117252f7f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1194, 'Senora FwyLowApartament309', 1504, 1, 'steam:11000011c2766a1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1202, 'Vespucci BlvdApartment153', 6040, 1, 'steam:11000014413276d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1231, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013c642bd5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1232, 'Vespucci BlvdApartment152', 901140, 0, 'steam:1100001161eaef3');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1235, 'Grove StLowApartament6', 310930, 0, 'steam:110000134cb8f51');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1236, 'Grove StLowApartament6', 310930, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1245, 'Grove StLowApartament1', 292990, 0, 'steam:110000141766d51');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1273, 'Vespucci BlvdApartment153', 1208070, 0, 'steam:1100001149c0473');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1294, 'Zach. Mirror DriveLowApartament175', 1399, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1310, 'Wsch. Mirror DrLowApartament195', 1370, 1, 'steam:11000013c642bd5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1330, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1343, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1344, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1345, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000114a0939a');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1356, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000103a3dfb4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1377, 'Hawick AveLowApartament267', 1505, 1, 'steam:110000107e7baca');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1378, 'Meteor StLowApartament249', 1528, 1, 'steam:110000117252f7f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1434, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1435, 'Fudge LnLowApartament282', 1385, 1, 'steam:110000140ec93f8');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1436, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1437, 'Hawick AveLowApartament250', 1517, 1, 'steam:110000140ec93f8');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1440, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1447, 'Carson AveLowApartament127', 300040, 0, 'steam:110000119e8be61');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1461, 'Panorama DrLowApartament299', 1359, 1, 'steam:110000114d225bb');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1477, 'Wsch. Mirror DrLowApartament195', 1370, 1, 'steam:11000011a228857');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1484, 'Forum DrLowApartament150', 1343, 1, 'steam:1100001193b06d9');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1492, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1511, 'Droga 68Motel286', 750, 1, 'steam:11000013c9e2674');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1528, 'Las Lagunas BlvdLowApartament240', 1262, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1531, 'P?n. Rockford DrApartment1', 1078280, 0, 'steam:11000011c2766a1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1532, 'Grove StLowApartament109', 298950, 0, 'steam:110000142153acd');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1533, 'Grove StLowApartament121', 271380, 0, 'steam:11000013c642bd5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1535, 'Las Lagunas BlvdLowApartament240', 1262, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1537, 'Las Lagunas BlvdLowApartament240', 1262, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1566, 'Panorama DrLowApartament299', 1359, 1, 'steam:11000013fa29af8');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1568, 'Hawick AveLowApartament272', 1341, 1, 'steam:110000145122084');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1572, 'Carson AveLowApartament128', 294690, 0, 'steam:110000133cdc799');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1587, 'Panorama DrLowApartament299', 1359, 1, 'steam:110000117f8e6e9');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1590, 'Macdonald StLowApartament24', 1304, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1594, 'Hawick AveLowApartament250', 303450, 0, 'steam:1100001422c1a69');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1599, 'Bridge StLowApartament174', 1278, 1, 'steam:110000141da98ec');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1613, 'Cascabel AveMotel42', 750, 1, 'steam:11000010ebb727c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1622, 'Whispymound DrLuxApartment217', 6973, 1, 'steam:1100001114596e6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1637, 'Meteor StLowApartament249', 1528, 1, 'steam:1100001413a7866');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1638, 'Grove StLowApartament109', 1495, 1, 'steam:110000108c6cb84');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1654, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013fae7bc7');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1660, 'Hawick AveLowApartament250', 1517, 1, 'steam:110000117252f7f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1697, 'San Vitus BlvdLuxApartment230', 1655310, 0, 'steam:11000010a412a06');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1698, 'San Vitus BlvdLuxApartment230', 1655310, 0, 'steam:11000010a412a06');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1703, 'P?n. Rockford DrLuxApartment315', 6866, 1, 'steam:11000014065436f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1714, 'Hawick AveLowApartament267', 1505, 1, 'steam:110000144427245');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1744, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1754, 'Wsch. Joshua RdApartment308', 6612, 1, 'steam:1100001422c1a69');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1755, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013c9e2674');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1769, 'Whispymound DrLuxApartment217', 6973, 1, 'steam:110000107e7baca');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1802, 'Kimble Hill DrApartment25', 8690, 1, 'steam:11000013e44f808');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1803, 'Macdonald StLowApartament25', 274660, 0, 'steam:110000114f4b7f6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1821, 'Hawick AveLowApartament250', 1517, 1, 'steam:1100001438a46fb');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1838, 'Bridge StLowApartament174', 1278, 1, 'steam:1100001423a7cb5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1841, 'Vespucci BlvdApartment153', 6040, 1, 'steam:1100001453731d2');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1845, 'Dutch London StLowApartament93', 280730, 0, 'steam:11000010a6710f0');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1847, 'Carson AveLowApartament127', 300040, 0, 'steam:1100001430e47c6');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1849, 'Hawick AveLowApartament250', 1517, 1, 'steam:1100001444aa23d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1863, 'Meteor StMotel244', 150000, 0, 'steam:11000013ff5275b');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1868, 'Forum DrLowApartament150', 1343, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1869, 'Marina DrLowApartament300', 1476, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1877, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000013f3e5651');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1884, 'Wsch. Joshua RdApartment308', 6612, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1893, 'Meteor StMotel242', 750, 1, 'steam:110000134e2a1f8');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1896, 'Fudge LnLowApartament283', 1383, 1, 'steam:11000013b0228ca');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1899, 'Spanish AveLuxApartment232', 7400, 1, 'steam:110000142376cf5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1900, 'P?n. Rockford DrLuxApartment315', 6866, 1, 'steam:110000118eb8e52');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1904, 'Jamestown StLowApartament99', 264580, 0, 'steam:110000135e2d2d2');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1912, 'Hawick AveLowApartament272', 1341, 1, 'steam:11000014091e5a5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1933, 'Ace Jones DrLuxApartment5', 6686, 1, 'steam:110000140f11a58');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1940, 'Dutch London StLowApartament93', 280730, 0, 'steam:110000117902718');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1949, 'Dutch London StLowApartament93', 1404, 1, 'steam:1100001423b5892');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1950, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1953, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013d55d21d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1984, 'Ace Jones DrLuxApartment6', 1273580, 0, 'steam:11000013edc8204');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1986, 'San Vitus BlvdLuxApartment230', 8277, 1, 'steam:110000140fa606c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1989, 'P?n. Rockford DrLuxApartment315', 6866, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1990, 'Jamestown StLowApartament100', 311960, 0, 'steam:1100001354cdb7d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1993, 'Forum DrLowApartament150', 1343, 1, 'steam:110000136e3cefd');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1994, 'Vespucci BlvdApartment152', 4506, 1, 'steam:1100001140c70fe');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1997, 'Vespucci BlvdApartment152', 4506, 1, 'steam:1100001149c0473');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1998, 'Forum DrLowApartament150', 1343, 1, 'steam:110000131f25d57');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(1999, 'Innocence BlvdLowApartament43', 1318, 1, 'steam:110000119e8be61');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2000, 'Fudge LnLowApartament282', 1385, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2002, 'Innocence BlvdLowApartament43', 1318, 1, 'steam:1100001431d1976');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2003, 'Fantastic PlApartment151', 6534, 1, 'steam:1100001335d652e');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2004, 'Carson AveLowApartament127', 1500, 1, 'steam:1100001431d1976');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2005, 'Carson AveLowApartament79', 1299, 1, 'steam:110000107f93a4d');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2006, 'Carson AveLowApartament127', 1500, 1, 'steam:11000013d55854c');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2011, 'Senora FwyLowApartament309', 1504, 1, 'steam:11000013d678d26');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2013, 'Hawick AveLowApartament250', 1517, 1, 'steam:110000119f1c76e');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2015, 'Grove StLowApartament6', 310930, 0, 'steam:1100001335d652e');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2016, 'Hawick AveLowApartament250', 1517, 1, 'steam:1100001423a7cb5');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2018, 'Zach. Mirror DriveLowApartament185', 258240, 0, 'steam:11000010f5aa077');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2025, 'Hawick AveLowApartament250', 1517, 1, 'steam:11000014256f7be');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2026, 'Forum DrLowApartament150', 1343, 1, 'steam:11000013d3d44b1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2027, 'Fantastic PlApartment151', 6534, 1, 'steam:1100001421861e1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2028, 'Hawick AveLowApartament267', 1505, 1, 'steam:1100001421861e1');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2051, 'Fudge LnLowApartament280', 1455, 1, 'steam:1100001350247c9');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2054, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000013fa29af8');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2061, 'San Vitus BlvdLuxApartment230', 8277, 1, 'steam:11000013c9e2674');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2067, 'Hawick AveLowApartament267', 1505, 1, 'steam:1100001423b5892');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2068, 'Vespucci BlvdApartment152', 4506, 1, 'steam:11000014366a902');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2072, 'Carson AveLowApartament127', 1500, 1, 'steam:110000141bb57d0');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2075, 'Hawick AveLowApartament267', 1505, 1, 'steam:11000013cf6172f');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2079, 'Vespucci BlvdApartment153', 6040, 1, 'steam:110000132a53b01');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2083, 'P?n. Sheldon AveLuxApartment19', 9993, 1, 'steam:110000117143c0e');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2086, 'Vespucci BlvdApartment152', 4506, 1, 'steam:110000144427245');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2087, 'Vespucci BlvdApartment152', 4506, 1, 'steam:1100001438a46fb');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2090, 'P?n. Rockford DrLuxApartment315', 6866, 1, 'steam:110000117412cf9');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2096, 'Pyrite AveLowApartament29', 1429, 1, 'steam:110000117c05346');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2100, 'Grove StLowApartament109', 1495, 1, 'steam:11000013eb113d9');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2102, 'Hawick AveLowApartament250', 1517, 1, 'steam:110000144471df0');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2103, 'P?n. Conker AveApartment215', 1174960, 0, 'steam:110000134cb8f51');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2104, 'Whispymound DrLuxApartment217', 1394610, 0, 'steam:110000142153acd');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2108, 'Fantastic PlApartment151', 6534, 1, 'steam:11000013d6a2dd4');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2111, 'Fudge LnLowApartament280', 1455, 1, 'steam:110000119f1c76e');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2119, 'Vespucci BlvdApartment152', 4506, 1, 'steam:110000141766d51');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2123, 'Fudge LnLowApartament280', 1455, 1, 'steam:110000133f655ff');
INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(2127, 'Pyrite AveLowApartament29', 1429, 1, 'steam:11000013f3e5651');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table extendedmode.owned_vehicles_headlights
CREATE TABLE IF NOT EXISTS `owned_vehicles_headlights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` text NOT NULL,
  `color` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.owned_vehicles_headlights: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles_headlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles_headlights` ENABLE KEYS */;

-- Dumping structure for table extendedmode.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.phone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table extendedmode.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.phone_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table extendedmode.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `transmitter` (`transmitter`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table extendedmode.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table extendedmode.playerhousing
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.playerhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- Dumping structure for table extendedmode.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.properties: ~180 rows (approximately)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(74, 'Grove StLowApartament1', 'Grove St', '{"x":85.236793518066,"y":-1959.6256103516,"z":21.121692657471}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":85.236793518066,"y":-1959.6256103516,"z":21.121692657471}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 292990);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(79, 'Grove StLowApartament6', 'Grove St', '{"x":114.14308929443,"y":-1961.3315429688,"z":21.328903198242}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":114.14308929443,"y":-1961.3315429688,"z":21.328903198242}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 310930);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(80, 'Roy Lowenstein BlvdLowApartament7', 'Roy Lowenstein Blvd', '{"x":149.11378479004,"y":-1960.3115234375,"z":19.446846008301}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":149.11378479004,"y":-1960.3115234375,"z":19.446846008301}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 284660);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(81, 'Roy Lowenstein BlvdLowApartament8', 'Roy Lowenstein Blvd', '{"x":143.84298706055,"y":-1968.6257324219,"z":18.857574462891}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":143.84298706055,"y":-1968.6257324219,"z":18.857574462891}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 270480);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(82, 'Roy Lowenstein BlvdLowApartament9', 'Roy Lowenstein Blvd', '{"x":165.28860473633,"y":-1944.6625976563,"z":20.173938751221}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":165.28860473633,"y":-1944.6625976563,"z":20.173938751221}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 253720);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(83, 'Roy Lowenstein BlvdLowApartament10', 'Roy Lowenstein Blvd', '{"x":179.35659790039,"y":-1924.0556640625,"z":21.369144439697}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":179.35659790039,"y":-1924.0556640625,"z":21.369144439697}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 277560);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(84, 'Roy Lowenstein BlvdLowApartament10', 'Roy Lowenstein Blvd', '{"x":208.72164916992,"y":-1895.0279541016,"z":24.814142227173}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":208.72164916992,"y":-1895.0279541016,"z":24.814142227173}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 277560);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(85, 'Roy Lowenstein BlvdLowApartament12', 'Roy Lowenstein Blvd', '{"x":208.71444702148,"y":-1895.1097412109,"z":24.814142227173}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":208.71444702148,"y":-1895.1097412109,"z":24.814142227173}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 304370);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(86, 'Covenant AveLowApartament13', 'Covenant Ave', '{"x":191.96597290039,"y":-1883.1070556641,"z":25.07106590271}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":191.96597290039,"y":-1883.1070556641,"z":25.07106590271}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 278230);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(87, 'Covenant AveLowApartament14', 'Covenant Ave', '{"x":171.76661682129,"y":-1871.0128173828,"z":24.400247573853}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":171.76661682129,"y":-1871.0128173828,"z":24.400247573853}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 302450);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(88, 'Covenant AveLowApartament15', 'Covenant Ave', '{"x":150.15231323242,"y":-1864.7102050781,"z":24.578798294067}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":150.15231323242,"y":-1864.7102050781,"z":24.578798294067}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 285290);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(89, 'Covenant AveLowApartament16', 'Covenant Ave', '{"x":130.86390686035,"y":-1853.5733642578,"z":25.246690750122}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":130.86390686035,"y":-1853.5733642578,"z":25.246690750122}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 272760);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(90, 'Brouge AveLowApartament17', 'Brouge Ave', '{"x":152.57249450684,"y":-1824.0249023438,"z":27.872844696045}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":152.57249450684,"y":-1824.0249023438,"z":27.872844696045}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 288570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(91, 'Brouge AveLowApartament18', 'Brouge Ave', '{"x":198.07345581055,"y":-1725.9870605469,"z":29.663566589355}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":198.07345581055,"y":-1725.9870605469,"z":29.663566589355}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 291550);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(95, 'Brouge AveLowApartament22', 'Brouge Ave', '{"x":257.45822143555,"y":-1722.7279052734,"z":29.652534484863}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":257.45822143555,"y":-1722.7279052734,"z":29.652534484863}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 286410);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(96, 'Brouge AveLowApartament23', 'Brouge Ave', '{"x":269.57717895508,"y":-1712.9621582031,"z":29.682037353516}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":269.57717895508,"y":-1712.9621582031,"z":29.682037353516}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 264190);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(97, 'Macdonald StLowApartament24', 'Macdonald St', '{"x":282.15426635742,"y":-1694.4001464844,"z":29.634172439575}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":282.15426635742,"y":-1694.4001464844,"z":29.634172439575}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 260700);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(98, 'Macdonald StLowApartament25', 'Macdonald St', '{"x":251.78219604492,"y":-1671.3883056641,"z":29.663049697876}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":251.78219604492,"y":-1671.3883056641,"z":29.663049697876}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 274660);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(99, 'Brouge AveLowApartament26', 'Brouge Ave', '{"x":241.24513244629,"y":-1688.0240478516,"z":29.636085510254}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":241.24513244629,"y":-1688.0240478516,"z":29.636085510254}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 311900);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(100, 'Macdonald StLowApartament27', 'Macdonald St', '{"x":332.6242980957,"y":-1740.4890136719,"z":29.729349136353}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":332.6242980957,"y":-1740.4890136719,"z":29.729349136353}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 287960);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(101, 'Roy Lowenstein BlvdLowApartament28', 'Roy Lowenstein Blvd', '{"x":320.90130615234,"y":-1759.4501953125,"z":29.634614944458}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":320.90130615234,"y":-1759.4501953125,"z":29.634614944458}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 277580);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(102, 'Roy Lowenstein BlvdLowApartament29', 'Roy Lowenstein Blvd', '{"x":303.37878417969,"y":-1776.4803466797,"z":29.098926544189}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":303.37878417969,"y":-1776.4803466797,"z":29.098926544189}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 293160);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(111, 'Roy Lowenstein BlvdMotel38', 'Roy Lowenstein Blvd', '{"x":372.30154418945,"y":-1791.3360595703,"z":29.095474243164}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":372.30154418945,"y":-1791.3360595703,"z":29.095474243164}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(116, 'Innocence BlvdLowApartament43', 'Innocence Blvd', '{"x":500.36221313477,"y":-1696.9698486328,"z":29.789018630981}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":500.36221313477,"y":-1696.9698486328,"z":29.789018630981}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 263630);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(125, 'Macdonald StLowApartament52', 'Macdonald St', '{"x":440.14413452148,"y":-1829.3670654297,"z":28.361125946045}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":440.14413452148,"y":-1829.3670654297,"z":28.361125946045}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 290510);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(152, 'Carson AveLowApartament79', 'Carson Ave', '{"x":383.40365600586,"y":-2006.2657470703,"z":24.270454406738}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":383.40365600586,"y":-2006.2657470703,"z":24.270454406738}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 259780);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(162, 'Carson AveLowApartament89', 'Carson Ave', '{"x":360.71578979492,"y":-2042.3269042969,"z":22.32578086853}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":360.71578979492,"y":-2042.3269042969,"z":22.32578086853}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 290250);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(163, 'Carson AveLowApartament90', 'Carson Ave', '{"x":364.27310180664,"y":-2045.2885742188,"z":22.304235458374}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":364.27310180664,"y":-2045.2885742188,"z":22.304235458374}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 301170);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(164, 'Dutch London StLowApartament91', 'Dutch London St', '{"x":345.57626342773,"y":-2067.6726074219,"z":20.938505172729}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":345.57626342773,"y":-2067.6726074219,"z":20.938505172729}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 295250);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(165, 'Dutch London StLowApartament92', 'Dutch London St', '{"x":342.35177612305,"y":-2064.1850585938,"z":20.955694198608}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":342.35177612305,"y":-2064.1850585938,"z":20.955694198608}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 299710);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(166, 'Dutch London StLowApartament93', 'Dutch London St', '{"x":334.72622680664,"y":-2058.3698730469,"z":20.884420394897}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":334.72622680664,"y":-2058.3698730469,"z":20.884420394897}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 280730);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(172, 'Jamestown StLowApartament99', 'Jamestown St', '{"x":313.13327026367,"y":-2040.2905273438,"z":20.92286491394}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":313.13327026367,"y":-2040.2905273438,"z":20.92286491394}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 264580);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(173, 'Jamestown StLowApartament100', 'Jamestown St', '{"x":293.93231201172,"y":-2044.0550537109,"z":19.645299911499}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":293.93231201172,"y":-2044.0550537109,"z":19.645299911499}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 311960);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(180, 'Dutch London StLowApartament107', 'Dutch London St', '{"x":329.95742797852,"y":-2095.341796875,"z":18.203369140625}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":329.95742797852,"y":-2095.341796875,"z":18.203369140625}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 308490);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(181, 'Dutch London StLowApartament108', 'Dutch London St', '{"x":334.32632446289,"y":-2092.8256835938,"z":18.226135253906}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":334.32632446289,"y":-2092.8256835938,"z":18.226135253906}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 251590);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(182, 'Grove StLowApartament109', 'Grove St', '{"x":72.066207885742,"y":-1938.8315429688,"z":21.318336486816}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":72.066207885742,"y":-1938.8315429688,"z":21.318336486816}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 298950);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(194, 'Grove StLowApartament121', 'Grove St', '{"x":54.36364364624,"y":-1872.9622802734,"z":22.837244033813}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":54.36364364624,"y":-1872.9622802734,"z":22.837244033813}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 271380);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(200, 'Carson AveLowApartament127', 'Carson Ave', '{"x":-69.343765258789,"y":-1526.7075195313,"z":34.235866546631}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-69.343765258789,"y":-1526.7075195313,"z":34.235866546631}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 300040);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(201, 'Carson AveLowApartament128', 'Carson Ave', '{"x":-59.501083374023,"y":-1530.2554931641,"z":34.235233306885}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-59.501083374023,"y":-1530.2554931641,"z":34.235233306885}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 294690);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(216, 'Forum DrMotel143', 'Forum Dr', '{"x":-147.96473693848,"y":-1687.5128173828,"z":33.066989898682}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-147.96473693848,"y":-1687.5128173828,"z":33.066989898682}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(217, 'Forum DrMotel144', 'Forum Dr', '{"x":-147.06523132324,"y":-1688.2677001953,"z":33.068099975586}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-147.06523132324,"y":-1688.2677001953,"z":33.068099975586}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(218, 'Forum DrMotel145', 'Forum Dr', '{"x":-141.32919311523,"y":-1693.2037353516,"z":36.166248321533}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-141.32919311523,"y":-1693.2037353516,"z":36.166248321533}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(219, 'Forum DrMotel146', 'Forum Dr', '{"x":-146.85954284668,"y":-1688.5709228516,"z":36.166343688965}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-146.85954284668,"y":-1688.5709228516,"z":36.166343688965}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(220, 'Forum DrMotel147', 'Forum Dr', '{"x":-147.95179748535,"y":-1687.65234375,"z":36.166427612305}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-147.95179748535,"y":-1687.65234375,"z":36.166427612305}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(221, 'Forum DrMotel148', 'Forum Dr', '{"x":-158.25318908691,"y":-1679.0382080078,"z":36.966747283936}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-158.25318908691,"y":-1679.0382080078,"z":36.966747283936}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(223, 'Forum DrLowApartament150', 'Forum Dr', '{"x":-216.69250488281,"y":-1648.5177001953,"z":37.636993408203}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-216.69250488281,"y":-1648.5177001953,"z":37.636993408203}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 268580);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(224, 'Fantastic PlApartment151', 'Fantastic Pl', '{"x":288.13690185547,"y":-1094.8648681641,"z":29.419576644897}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":288.13690185547,"y":-1094.8648681641,"z":29.419576644897}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":436.2,"z":143.27}', 1306760);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(225, 'Vespucci BlvdApartment152', 'Vespucci Blvd', '{"x":264.38519287109,"y":-1026.9343261719,"z":29.215644836426}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":264.38519287109,"y":-1026.9343261719,"z":29.215644836426}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 901140);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(226, 'Vespucci BlvdApartment153', 'Vespucci Blvd', '{"x":296.16122436523,"y":-1027.4051513672,"z":29.210781097412}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":296.16122436523,"y":-1027.4051513672,"z":29.210781097412}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 1208070);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(227, 'Zach. Mirror DriveApartment154', 'Zach. Mirror Drive', '{"x":996.79266357422,"y":-729.46325683594,"z":57.815753936768}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":996.79266357422,"y":-729.46325683594,"z":57.815753936768}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1236780);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(230, 'Zach. Mirror DriveLuxApartment157', 'Zach. Mirror Drive', '{"x":959.96002197266,"y":-670.04302978516,"z":58.449813842773}', '{"x":-680.124,"y":590.608,"z":143.392}', '{"x":-680.124,"y":590.608,"z":143.392}', '{"x":959.96002197266,"y":-670.04302978516,"z":58.449813842773}', '[]', NULL, 1, 0, NULL, '{"x":-680.46,"y":588.6,"z":135.769}', 1353290);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(233, 'Zach. Mirror DriveLuxApartment160', 'Zach. Mirror Drive', '{"x":903.04278564453,"y":-615.36413574219,"z":58.45361328125}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":903.04278564453,"y":-615.36413574219,"z":58.45361328125}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1701190);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(244, 'Zach. Mirror DriveLuxApartment171', 'Zach. Mirror Drive', '{"x":987.58624267578,"y":-433.03594970703,"z":63.930599212646}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":987.58624267578,"y":-433.03594970703,"z":63.930599212646}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1329430);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(247, 'Bridge StLowApartament174', 'Bridge St', '{"x":1060.5174560547,"y":-378.07046508789,"z":68.219215393066}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1060.5174560547,"y":-378.07046508789,"z":68.219215393066}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 255550);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(248, 'Zach. Mirror DriveLowApartament175', 'Zach. Mirror Drive', '{"x":1114.3569335938,"y":-391.44332885742,"z":68.950172424316}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1114.3569335938,"y":-391.44332885742,"z":68.950172424316}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 279860);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(249, 'Bridge StLuxApartment176', 'Bridge St', '{"x":1101.0465087891,"y":-411.42715454102,"z":67.554679870605}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":1101.0465087891,"y":-411.42715454102,"z":67.554679870605}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1704210);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(250, 'Bridge StApartment177', 'Bridge St', '{"x":1099.3088378906,"y":-438.59521484375,"z":67.72998046875}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":1099.3088378906,"y":-438.59521484375,"z":67.72998046875}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":376.93,"y":429.07,"z":139.8}', 940010);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(251, 'Bridge StApartment178', 'Bridge St', '{"x":1099.7847900391,"y":-450.77474975586,"z":67.788497924805}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1099.7847900391,"y":-450.77474975586,"z":67.788497924805}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1494730);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(252, 'Bridge StApartment179', 'Bridge St', '{"x":1098.5411376953,"y":-464.51058959961,"z":67.319404602051}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1098.5411376953,"y":-464.51058959961,"z":67.319404602051}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1681160);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(253, 'Bridge StApartment180', 'Bridge St', '{"x":1090.3992919922,"y":-484.31219482422,"z":65.652938842773}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":1090.3992919922,"y":-484.31219482422,"z":65.652938842773}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":376.93,"y":429.07,"z":139.8}', 1634210);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(257, 'Zach. Mirror DriveLowApartament184', 'Zach. Mirror Drive', '{"x":924.39556884766,"y":-526.00518798828,"z":59.819549560547}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":924.39556884766,"y":-526.00518798828,"z":59.819549560547}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 250590);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(258, 'Zach. Mirror DriveLowApartament185', 'Zach. Mirror Drive', '{"x":893.19232177734,"y":-540.70196533203,"z":58.506671905518}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":893.19232177734,"y":-540.70196533203,"z":58.506671905518}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 258240);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(259, 'Nikola AveApartment186', 'Nikola Ave', '{"x":919.92663574219,"y":-569.54907226563,"z":58.366718292236}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":919.92663574219,"y":-569.54907226563,"z":58.366718292236}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1506760);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(260, 'Zach. Mirror DriveApartment187', 'Zach. Mirror Drive', '{"x":980.48675537109,"y":-627.45385742188,"z":59.235843658447}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":980.48675537109,"y":-627.45385742188,"z":59.235843658447}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1521210);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(261, 'Mirror Park BlvdLowApartament188', 'Mirror Park Blvd', '{"x":1204.8846435547,"y":-557.87286376953,"z":69.618438720703}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1204.8846435547,"y":-557.87286376953,"z":69.618438720703}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 257580);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(262, 'Mirror Park BlvdApartment189', 'Mirror Park Blvd', '{"x":1200.9927978516,"y":-575.65765380859,"z":69.136810302734}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1200.9927978516,"y":-575.65765380859,"z":69.136810302734}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1045570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(263, 'Mirror Park BlvdApartment190', 'Mirror Park Blvd', '{"x":1203.9920654297,"y":-598.47552490234,"z":68.056823730469}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1203.9920654297,"y":-598.47552490234,"z":68.056823730469}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1836100);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(264, 'Mirror Park BlvdApartment191', 'Mirror Park Blvd', '{"x":1207.3195800781,"y":-620.10437011719,"z":66.427070617676}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1207.3195800781,"y":-620.10437011719,"z":66.427070617676}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1188450);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(265, 'Mirror Park BlvdApartment192', 'Mirror Park Blvd', '{"x":1221.6619873047,"y":-669.24731445313,"z":63.522682189941}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":1221.6619873047,"y":-669.24731445313,"z":63.522682189941}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 1127570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(266, 'Mirror Park BlvdApartment193', 'Mirror Park Blvd', '{"x":1220.4093017578,"y":-689.24365234375,"z":61.146011352539}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":1220.4093017578,"y":-689.24365234375,"z":61.146011352539}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 1341170);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(267, 'Wsch. Mirror DrApartment194', 'Wsch. Mirror Dr', '{"x":1229.2222900391,"y":-725.52770996094,"z":60.740779876709}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":373.63,"y":423.65,"z":147.41}', '{"x":1229.2222900391,"y":-725.52770996094,"z":60.740779876709}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":376.93,"y":429.07,"z":139.8}', 968960);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(268, 'Wsch. Mirror DrLowApartament195', 'Wsch. Mirror Dr', '{"x":1259.3474121094,"y":-710.96612548828,"z":64.506614685059}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1259.3474121094,"y":-710.96612548828,"z":64.506614685059}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 274040);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(272, 'Wsch. Mirror DrApartment199', 'Wsch. Mirror Dr', '{"x":1240.5028076172,"y":-601.45324707031,"z":69.781898498535}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":1240.5028076172,"y":-601.45324707031,"z":69.781898498535}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 1527940);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(273, 'Wsch. Mirror DrApartment200', 'Wsch. Mirror Dr', '{"x":1241.4038085938,"y":-566.17437744141,"z":69.654945373535}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1241.4038085938,"y":-566.17437744141,"z":69.654945373535}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1777240);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(284, 'P?n. Conker AveApartment211', 'P?n. Conker Ave', '{"x":374.37460327148,"y":428.18130493164,"z":145.68542480469}', '{"x":374.37460327148,"y":428.18130493164,"z":145.68542480469}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":374.37460327148,"y":428.18130493164,"z":145.68542480469}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1232390);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(285, 'P?n. Conker AveApartment212', 'P?n. Conker Ave', '{"x":346.70053100586,"y":440.47616577148,"z":147.7117767334}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":346.70053100586,"y":440.47616577148,"z":147.7117767334}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1490760);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(286, 'P?n. Conker AveLuxApartment213', 'P?n. Conker Ave', '{"x":331.61361694336,"y":465.36212158203,"z":151.26136779785}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":331.61361694336,"y":465.36212158203,"z":151.26136779785}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1897980);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(287, 'P?n. Conker AveLuxApartment214', 'P?n. Conker Ave', '{"x":325.1318359375,"y":513.82110595703,"z":153.34008789063}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":325.1318359375,"y":513.82110595703,"z":153.34008789063}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1373220);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(288, 'P?n. Conker AveApartment215', 'P?n. Conker Ave', '{"x":325.08972167969,"y":537.11993408203,"z":153.86312866211}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":325.08972167969,"y":537.11993408203,"z":153.86312866211}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1174960);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(290, 'Whispymound DrLuxApartment217', 'Whispymound Dr', '{"x":232.10624694824,"y":672.11785888672,"z":189.9421081543}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":232.10624694824,"y":672.11785888672,"z":189.9421081543}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1394610);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(291, 'Whispymound DrApartment218', 'Whispymound Dr', '{"x":216.28184509277,"y":620.43402099609,"z":187.65324401855}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":216.28184509277,"y":620.43402099609,"z":187.65324401855}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1535510);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(294, 'Whispymound DrLuxApartment221', 'Whispymound Dr', '{"x":84.9169921875,"y":561.70373535156,"z":182.77201843262}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":84.9169921875,"y":561.70373535156,"z":182.77201843262}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1268260);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(296, 'Gentry LaneApartment223', 'Gentry Lane', '{"x":-0.93527561426163,"y":301.61825561523,"z":110.96363067627}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-0.93527561426163,"y":301.61825561523,"z":110.96363067627}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1563990);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(297, 'Gentry LaneApartment224', 'Gentry Lane', '{"x":8.3503379821777,"y":297.82403564453,"z":110.92953491211}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":8.3503379821777,"y":297.82403564453,"z":110.92953491211}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1170010);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(298, 'Las Lagunas BlvdApartment225', 'Las Lagunas Blvd', '{"x":18.348657608032,"y":319.07189941406,"z":111.05419921875}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":18.348657608032,"y":319.07189941406,"z":111.05419921875}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1649150);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(299, 'Didion DrApartment226', 'Didion Dr', '{"x":20.787830352783,"y":324.24334716797,"z":111.01435089111}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":20.787830352783,"y":324.24334716797,"z":111.01435089111}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1094470);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(300, 'Didion DrApartment227', 'Didion Dr', '{"x":11.827290534973,"y":328.82983398438,"z":111.04198455811}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":11.827290534973,"y":328.82983398438,"z":111.04198455811}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1662070);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(301, 'Didion DrApartment228', 'Didion Dr', '{"x":9.501932144165,"y":323.91033935547,"z":110.93145751953}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":9.501932144165,"y":323.91033935547,"z":110.93145751953}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1568090);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(302, 'Didion DrLuxApartment229', 'Didion Dr', '{"x":-73.08390045166,"y":428.55877685547,"z":113.03814697266}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-73.08390045166,"y":428.55877685547,"z":113.03814697266}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1968080);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(303, 'San Vitus BlvdLuxApartment230', 'San Vitus Blvd', '{"x":-197.73942565918,"y":86.266098022461,"z":69.756774902344}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-197.73942565918,"y":86.266098022461,"z":69.756774902344}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1655310);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(304, 'Spanish AveLuxApartment231', 'Spanish Ave', '{"x":-154.1383972168,"y":68.662422180176,"z":70.772178649902}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-154.1383972168,"y":68.662422180176,"z":70.772178649902}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1612570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(305, 'Spanish AveLuxApartment232', 'Spanish Ave', '{"x":-165.41844177246,"y":75.251914978027,"z":70.701850891113}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-165.41844177246,"y":75.251914978027,"z":70.701850891113}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1480090);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(306, 'Spanish AveLuxApartment233', 'Spanish Ave', '{"x":-142.90879821777,"y":62.414569854736,"z":70.84098815918}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-142.90879821777,"y":62.414569854736,"z":70.84098815918}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1561550);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(307, 'Las Lagunas BlvdApartment234', 'Las Lagunas Blvd', '{"x":-102.27494049072,"y":-31.667770385742,"z":66.444046020508}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-102.27494049072,"y":-31.667770385742,"z":66.444046020508}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1658050);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(308, 'Las Lagunas BlvdLowApartament235', 'Las Lagunas Blvd', '{"x":-102.26653289795,"y":-31.611782073975,"z":70.44766998291}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-102.26653289795,"y":-31.611782073975,"z":70.44766998291}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 302940);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(309, 'Las Lagunas BlvdApartment236', 'Las Lagunas Blvd', '{"x":-37.804767608643,"y":-59.705665588379,"z":64.057670593262}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-37.804767608643,"y":-59.705665588379,"z":64.057670593262}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1172130);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(310, 'Las Lagunas BlvdApartment237', 'Las Lagunas Blvd', '{"x":-17.944694519043,"y":-68.814056396484,"z":61.791320800781}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-17.944694519043,"y":-68.814056396484,"z":61.791320800781}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1173920);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(311, 'Las Lagunas BlvdLowApartament238', 'Las Lagunas Blvd', '{"x":-15.901127815247,"y":-61.568153381348,"z":61.699893951416}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-15.901127815247,"y":-61.568153381348,"z":61.699893951416}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 257550);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(312, 'Las Lagunas BlvdApartment239', 'Las Lagunas Blvd', '{"x":-9.2824945449829,"y":-49.140361785889,"z":67.170433044434}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-9.2824945449829,"y":-49.140361785889,"z":67.170433044434}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1611610);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(313, 'Las Lagunas BlvdLowApartament240', 'Las Lagunas Blvd', '{"x":-25.40393447876,"y":-52.708240509033,"z":67.592247009277}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-25.40393447876,"y":-52.708240509033,"z":67.592247009277}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 252320);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(314, 'Las Lagunas BlvdLowApartament241', 'Las Lagunas Blvd', '{"x":-27.785688400269,"y":-60.501205444336,"z":67.592247009277}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-27.785688400269,"y":-60.501205444336,"z":67.592247009277}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 298460);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(315, 'Meteor StMotel242', 'Meteor St', '{"x":346.88110351563,"y":-199.28630065918,"z":54.221813201904}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":346.88110351563,"y":-199.28630065918,"z":54.221813201904}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(316, 'Meteor StMotel243', 'Meteor St', '{"x":344.73278808594,"y":-204.86650085449,"z":54.221817016602}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":344.73278808594,"y":-204.86650085449,"z":54.221817016602}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(317, 'Meteor StMotel244', 'Meteor St', '{"x":342.8017578125,"y":-209.85485839844,"z":54.221897125244}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":342.8017578125,"y":-209.85485839844,"z":54.221897125244}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(322, 'Meteor StLowApartament249', 'Meteor St', '{"x":331.67849731445,"y":-226.03994750977,"z":54.221782684326}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":331.67849731445,"y":-226.03994750977,"z":54.221782684326}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 305610);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(323, 'Hawick AveLowApartament250', 'Hawick Ave', '{"x":329.54116821289,"y":-225.22193908691,"z":54.221782684326}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":329.54116821289,"y":-225.22193908691,"z":54.221782684326}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 303450);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(324, 'Hawick AveMotel251', 'Hawick Ave', '{"x":329.61010742188,"y":-225.17398071289,"z":58.0192527771}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":329.61010742188,"y":-225.17398071289,"z":58.0192527771}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(333, 'Meteor StLuxApartment260', 'Meteor St', '{"x":321.50765991211,"y":-197.11494445801,"z":54.226448059082}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":321.50765991211,"y":-197.11494445801,"z":54.226448059082}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1268010);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(334, 'Meteor StMotel261', 'Meteor St', '{"x":319.46166992188,"y":-196.3282623291,"z":54.226451873779}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":319.46166992188,"y":-196.3282623291,"z":54.226451873779}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(335, 'Meteor StMotel262', 'Meteor St', '{"x":316.21572875977,"y":-195.08331298828,"z":54.226451873779}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":316.21572875977,"y":-195.08331298828,"z":54.226451873779}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(336, 'Hawick AveMotel263', 'Hawick Ave', '{"x":313.29223632813,"y":-198.25207519531,"z":54.22180557251}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":313.29223632813,"y":-198.25207519531,"z":54.22180557251}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(340, 'Hawick AveLowApartament267', 'Hawick Ave', '{"x":307.57000732422,"y":-213.28730773926,"z":54.221801757813}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":307.57000732422,"y":-213.28730773926,"z":54.221801757813}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 301040);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(345, 'Hawick AveLowApartament272', 'Hawick Ave', '{"x":307.68725585938,"y":-216.80749511719,"z":58.019241333008}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":307.68725585938,"y":-216.80749511719,"z":58.019241333008}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 268130);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(348, 'Hawick AveMotel275', 'Hawick Ave', '{"x":311.25433349609,"y":-203.6672668457,"z":58.019237518311}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":311.25433349609,"y":-203.6672668457,"z":58.019237518311}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(349, 'Hawick AveMotel276', 'Hawick Ave', '{"x":313.251953125,"y":-198.4338684082,"z":58.019237518311}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":313.251953125,"y":-198.4338684082,"z":58.019237518311}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(350, 'Meteor StMotel277', 'Meteor St', '{"x":315.81994628906,"y":-194.86753845215,"z":58.019241333008}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":315.81994628906,"y":-194.86753845215,"z":58.019241333008}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(353, 'Fudge LnLowApartament280', 'Fudge Ln', '{"x":1437.0454101563,"y":-1491.7249755859,"z":63.622005462646}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1437.0454101563,"y":-1491.7249755859,"z":63.622005462646}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 291060);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(354, 'Fudge LnLowApartament281', 'Fudge Ln', '{"x":1381.9246826172,"y":-1544.8491210938,"z":57.105400085449}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1381.9246826172,"y":-1544.8491210938,"z":57.105400085449}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 308490);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(355, 'Fudge LnLowApartament282', 'Fudge Ln', '{"x":1360.6317138672,"y":-1555.5985107422,"z":56.32901763916}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1360.6317138672,"y":-1555.5985107422,"z":56.32901763916}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 276910);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(356, 'Fudge LnLowApartament283', 'Fudge Ln', '{"x":1341.7947998047,"y":-1527.1517333984,"z":54.408527374268}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1341.7947998047,"y":-1527.1517333984,"z":54.408527374268}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 276540);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(357, 'Fudge LnLowApartament284', 'Fudge Ln', '{"x":1315.9870605469,"y":-1526.4291992188,"z":51.805438995361}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1315.9870605469,"y":-1526.4291992188,"z":51.805438995361}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 255620);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(358, 'Senora RdApartment285', 'Senora Rd', '{"x":728.83306884766,"y":2312.8923339844,"z":51.763278961182}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":728.83306884766,"y":2312.8923339844,"z":51.763278961182}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1340280);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(359, 'Droga 68Motel286', 'Droga 68', '{"x":341.81930541992,"y":2615.09765625,"z":44.672298431396}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":341.81930541992,"y":2615.09765625,"z":44.672298431396}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(360, 'Droga 68Motel287', 'Droga 68', '{"x":347.24700927734,"y":2618.2766113281,"z":44.660820007324}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":347.24700927734,"y":2618.2766113281,"z":44.660820007324}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(366, 'Droga 68Motel293', 'Droga 68', '{"x":385.10507202148,"y":2632.3569335938,"z":44.668045043945}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":385.10507202148,"y":2632.3569335938,"z":44.668045043945}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(367, 'Droga 68Motel294', 'Droga 68', '{"x":391.90982055664,"y":2634.0942382813,"z":44.666080474854}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":391.90982055664,"y":2634.0942382813,"z":44.666080474854}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(368, 'Droga 68Motel295', 'Droga 68', '{"x":398.17224121094,"y":2637.3193359375,"z":44.677978515625}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":398.17224121094,"y":2637.3193359375,"z":44.677978515625}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(369, 'Senora RdMotel296', 'Senora Rd', '{"x":404.4319152832,"y":2584.3127441406,"z":43.519569396973}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":404.4319152832,"y":2584.3127441406,"z":43.519569396973}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(370, 'Senora RdMotel297', 'Senora Rd', '{"x":382.845703125,"y":2576.5075683594,"z":44.577518463135}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":382.845703125,"y":2576.5075683594,"z":44.577518463135}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(371, 'Senora RdLowApartament298', 'Senora Rd', '{"x":367.09020996094,"y":2571.5598144531,"z":44.541019439697}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":367.09020996094,"y":2571.5598144531,"z":44.541019439697}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 268830);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(372, 'Panorama DrLowApartament299', 'Panorama Dr', '{"x":1501.5028076172,"y":3695.2512207031,"z":35.212917327881}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1501.5028076172,"y":3695.2512207031,"z":35.212917327881}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 271730);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(373, 'Marina DrLowApartament300', 'Marina Dr', '{"x":1532.9234619141,"y":3722.419921875,"z":34.818103790283}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1532.9234619141,"y":3722.419921875,"z":34.818103790283}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 295240);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(374, 'Marina DrApartment301', 'Marina Dr', '{"x":1690.9951171875,"y":3865.9287109375,"z":34.909984588623}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1690.9951171875,"y":3865.9287109375,"z":34.909984588623}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1221630);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(375, 'Marina DrApartment302', 'Marina Dr', '{"x":1803.4709472656,"y":3914.0778808594,"z":37.056289672852}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1803.4709472656,"y":3914.0778808594,"z":37.056289672852}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1443730);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(376, 'Cholla Springs AveApartment303', 'Cholla Springs Ave', '{"x":1838.5505371094,"y":3907.2590332031,"z":33.256858825684}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":1838.5505371094,"y":3907.2590332031,"z":33.256858825684}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1014080);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(377, 'Niland AveLowApartament304', 'Niland Ave', '{"x":1859.3298339844,"y":3865.4619140625,"z":33.067054748535}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1859.3298339844,"y":3865.4619140625,"z":33.067054748535}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 282230);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(378, 'Niland AveLowApartament305', 'Niland Ave', '{"x":1862.1137695313,"y":3857.4235839844,"z":36.271701812744}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":1862.1137695313,"y":3857.4235839844,"z":36.271701812744}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 257290);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(379, 'Niland AveMotel306', 'Niland Ave', '{"x":1895.4327392578,"y":3873.7551269531,"z":32.750499725342}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":1895.4327392578,"y":3873.7551269531,"z":32.750499725342}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(380, 'Marina DrMotel307', 'Marina Dr', '{"x":1915.6982421875,"y":3909.2697753906,"z":33.441276550293}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":1915.6982421875,"y":3909.2697753906,"z":33.441276550293}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(381, 'Wsch. Joshua RdApartment308', 'Wsch. Joshua Rd', '{"x":2418.572265625,"y":4020.603515625,"z":36.834053039551}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":2418.572265625,"y":4020.603515625,"z":36.834053039551}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1322430);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(382, 'Senora FwyLowApartament309', 'Senora Fwy', '{"x":2232.0842285156,"y":5611.525390625,"z":54.863471984863}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":2232.0842285156,"y":5611.525390625,"z":54.863471984863}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 300720);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(384, 'P?n. Rockford DrMotel311', 'P?n. Rockford Dr', '{"x":-1905.5465087891,"y":252.82102966309,"z":86.450721740723}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-1905.5465087891,"y":252.82102966309,"z":86.450721740723}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(387, 'P?n. Rockford DrLuxApartment314', 'P?n. Rockford Dr', '{"x":-2009.1716308594,"y":367.78323364258,"z":94.814338684082}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-2009.1716308594,"y":367.78323364258,"z":94.814338684082}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1715950);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(388, 'P?n. Rockford DrLuxApartment315', 'P?n. Rockford Dr', '{"x":-1942.5894775391,"y":449.45529174805,"z":102.85068511963}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1942.5894775391,"y":449.45529174805,"z":102.85068511963}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1373220);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(389, 'P?n. Rockford DrApartment1', 'P?n. Rockford Dr', '{"x":-1974.6076660156,"y":630.57934570313,"z":122.53630828857}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-1974.6076660156,"y":630.57934570313,"z":122.53630828857}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1078280);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(392, 'Ace Jones DrApartment4', 'Ace Jones Dr', '{"x":-1495.8580322266,"y":437.02792358398,"z":112.49789428711}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-1495.8580322266,"y":437.02792358398,"z":112.49789428711}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1410160);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(393, 'Ace Jones DrLuxApartment5', 'Ace Jones Dr', '{"x":-1540.1124267578,"y":420.59603881836,"z":110.01358032227}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1540.1124267578,"y":420.59603881836,"z":110.01358032227}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1337240);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(394, 'Ace Jones DrLuxApartment6', 'Ace Jones Dr', '{"x":-1500.9202880859,"y":522.86676025391,"z":118.27220153809}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1500.9202880859,"y":522.86676025391,"z":118.27220153809}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1273580);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(395, 'Hangman AveLuxApartment7', 'Hangman Ave', '{"x":-1405.4499511719,"y":527.09710693359,"z":123.83117675781}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1405.4499511719,"y":527.09710693359,"z":123.83117675781}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 2207930);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(396, 'Hangman AveLuxApartment8', 'Hangman Ave', '{"x":-1404.2135009766,"y":561.86724853516,"z":125.40667724609}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1404.2135009766,"y":561.86724853516,"z":125.40667724609}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1531260);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(397, 'Hangman AveLuxApartment9', 'Hangman Ave', '{"x":-1346.181640625,"y":561.07745361328,"z":130.53150939941}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1346.181640625,"y":561.07745361328,"z":130.53150939941}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1963040);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(398, 'Hangman AveLuxApartment10', 'Hangman Ave', '{"x":-1367.341796875,"y":610.63732910156,"z":133.87973022461}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1367.341796875,"y":610.63732910156,"z":133.87973022461}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1830090);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(399, 'P?n. Sheldon AveApartment11', 'P?n. Sheldon Ave', '{"x":-1277.2396240234,"y":629.73565673828,"z":143.27952575684}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":341.81,"y":437.8,"z":149.89}', '{"x":-1277.2396240234,"y":629.73565673828,"z":143.27952575684}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":338.03,"y":437.2,"z":142.27}', 1491330);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(400, 'P?n. Sheldon AveLuxApartment12', 'P?n. Sheldon Ave', '{"x":-1291.6357421875,"y":650.58966064453,"z":141.49835205078}', '{"x":-680.124,"y":590.608,"z":143.392}', '{"x":-680.124,"y":590.608,"z":143.392}', '{"x":-1291.6357421875,"y":650.58966064453,"z":141.49835205078}', '[]', NULL, 1, 0, NULL, '{"x":-680.46,"y":588.6,"z":135.769}', 1638370);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(401, 'P?n. Sheldon AveMotel13', 'P?n. Sheldon Ave', '{"x":-1248.6848144531,"y":643.04150390625,"z":142.71192932129}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-1248.6848144531,"y":643.04150390625,"z":142.71192932129}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(402, 'P?n. Sheldon AveLuxApartment14', 'P?n. Sheldon Ave', '{"x":-1241.5283203125,"y":674.43054199219,"z":142.81106567383}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1241.5283203125,"y":674.43054199219,"z":142.81106567383}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1263930);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(407, 'P?n. Sheldon AveLuxApartment19', 'P?n. Sheldon Ave', '{"x":-1100.6909179688,"y":797.88598632813,"z":167.25624084473}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-1100.6909179688,"y":797.88598632813,"z":167.25624084473}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1998560);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(408, 'Hillcrest AveApartment20', 'Hillcrest Ave', '{"x":-908.77911376953,"y":693.75701904297,"z":151.43572998047}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-908.77911376953,"y":693.75701904297,"z":151.43572998047}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1591800);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(409, 'Hillcrest AveLuxApartment21', 'Hillcrest Ave', '{"x":-886.11828613281,"y":700.40753173828,"z":151.27990722656}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-886.11828613281,"y":700.40753173828,"z":151.27990722656}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1508570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(410, 'Hillcrest AveLuxApartment22', 'Hillcrest Ave', '{"x":-853.20806884766,"y":694.86029052734,"z":148.86224365234}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-853.20806884766,"y":694.86029052734,"z":148.86224365234}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1852570);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(411, 'Hillcrest AveApartment23', 'Hillcrest Ave', '{"x":-819.51477050781,"y":696.56060791016,"z":148.10968017578}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-819.51477050781,"y":696.56060791016,"z":148.10968017578}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1063910);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(412, 'Hillcrest AveApartment24', 'Hillcrest Ave', '{"x":-685.42840576172,"y":595.80883789063,"z":144.03924560547}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-685.42840576172,"y":595.80883789063,"z":144.03924560547}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1153670);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(413, 'Kimble Hill DrApartment25', 'Kimble Hill Dr', '{"x":-232.8346862793,"y":588.21148681641,"z":190.53634643555}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-232.8346862793,"y":588.21148681641,"z":190.53634643555}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1737970);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(414, 'Pyrite AveMotel26', 'Pyrite Ave', '{"x":-107.51248168945,"y":6339.8359375,"z":31.575212478638}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-107.51248168945,"y":6339.8359375,"z":31.575212478638}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(415, 'Pyrite AveMotel27', 'Pyrite Ave', '{"x":-106.76509094238,"y":6334.1318359375,"z":31.575618743896}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-106.76509094238,"y":6334.1318359375,"z":31.575618743896}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(416, 'Pyrite AveMotel28', 'Pyrite Ave', '{"x":-103.76139831543,"y":6331.1259765625,"z":31.576189041138}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-103.76139831543,"y":6331.1259765625,"z":31.576189041138}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(417, 'Pyrite AveLowApartament29', 'Pyrite Ave', '{"x":-102.14939117432,"y":6345.1142578125,"z":31.572832107544}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-102.14939117432,"y":6345.1142578125,"z":31.572832107544}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 285890);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(418, 'Pyrite AveLuxApartment30', 'Pyrite Ave', '{"x":-99.248336791992,"y":6348.1064453125,"z":31.575902938843}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-781.64,"y":319.48,"z":188.413}', '{"x":-99.248336791992,"y":6348.1064453125,"z":31.575902938843}', '["apa_v_mp_h_01_c"]', NULL, 1, 0, NULL, '{"x":-795.735,"y":326.757,"z":186.813}', 1515140);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(419, 'Great Ocean HwyMotel31', 'Great Ocean Hwy', '{"x":-93.480316162109,"y":6353.875,"z":31.575904846191}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-93.480316162109,"y":6353.875,"z":31.575904846191}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(426, 'Pyrite AveMotel38', 'Pyrite Ave', '{"x":-99.067077636719,"y":6348.2875976563,"z":35.500755310059}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-99.067077636719,"y":6348.2875976563,"z":35.500755310059}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(428, 'Great Ocean HwyMotel40', 'Great Ocean Hwy', '{"x":-90.611923217773,"y":6356.728515625,"z":35.500755310059}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-90.611923217773,"y":6356.728515625,"z":35.500755310059}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(429, 'Great Ocean HwyMotel41', 'Great Ocean Hwy', '{"x":-84.622512817383,"y":6362.7329101563,"z":35.500755310059}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-84.622512817383,"y":6362.7329101563,"z":35.500755310059}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(430, 'Cascabel AveMotel42', 'Cascabel Ave', '{"x":-167.41613769531,"y":6439.359375,"z":31.916017532349}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-167.41613769531,"y":6439.359375,"z":31.916017532349}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(431, 'Cascabel AveMotel43', 'Cascabel Ave', '{"x":-159.55145263672,"y":6432.3149414063,"z":31.91596031189}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-159.55145263672,"y":6432.3149414063,"z":31.91596031189}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(432, 'Cascabel AveMotel44', 'Cascabel Ave', '{"x":-149.74781799316,"y":6422.5493164063,"z":31.915880203247}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-149.74781799316,"y":6422.5493164063,"z":31.915880203247}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(433, 'Paleto BlvdMotel45', 'Paleto Blvd', '{"x":-149.84197998047,"y":6416.2041015625,"z":31.916105270386}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-149.84197998047,"y":6416.2041015625,"z":31.916105270386}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(434, 'Paleto BlvdMotel46', 'Paleto Blvd', '{"x":-156.94389343262,"y":6409.1689453125,"z":31.922286987305}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":151.45,"y":-1007.57,"z":-99.50}', '{"x":-156.94389343262,"y":6409.1689453125,"z":31.922286987305}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, NULL, '', 150000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(435, 'Procopio DrApartment47', 'Procopio Dr', '{"x":-437.75042724609,"y":6272.365234375,"z":30.065538406372}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-437.75042724609,"y":6272.365234375,"z":30.065538406372}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1487150);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(436, 'Procopio DrLowApartament48', 'Procopio Dr', '{"x":-407.21759033203,"y":6314.16796875,"z":28.941095352173}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":151.35,"y":-1007.83,"z":-99.0}', '{"x":-407.21759033203,"y":6314.16796875,"z":28.941095352173}', '[]', NULL, 1, 0, NULL, '{"x":151.36,"y":-1003.21,"z":-99.0}', 299700);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(437, 'Procopio DrApartment49', 'Procopio Dr', '{"x":-359.45709228516,"y":6334.736328125,"z":29.848962783813}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":117.2,"y":559.8,"z":184.3}', '{"x":-359.45709228516,"y":6334.736328125,"z":29.848962783813}', '[]', NULL, 1, 0, NULL, '{"x":118.4,"y":566.01,"z":176.7}', 1278260);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table extendedmode.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table extendedmode.securitycams
CREATE TABLE IF NOT EXISTS `securitycams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `camname` varchar(50) DEFAULT NULL,
  `camgroup` varchar(50) DEFAULT NULL,
  `camid` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext NOT NULL DEFAULT '0',
  `heading` longtext NOT NULL DEFAULT '0',
  `mods` varchar(200) DEFAULT '{}',
  `status` int(11) DEFAULT 1,
  `ownername` varchar(255) NOT NULL DEFAULT 'Unknown',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.securitycams: ~0 rows (approximately)
/*!40000 ALTER TABLE `securitycams` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitycams` ENABLE KEYS */;

-- Dumping structure for table extendedmode.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.shops: ~21 rows (approximately)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(1, 'TwentyFourSeven', 'bread', 30);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(2, 'TwentyFourSeven', 'water', 15);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(3, 'RobsLiquor', 'bread', 30);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(4, 'RobsLiquor', 'water', 15);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(5, 'LTDgasoline', 'bread', 30);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(6, 'LTDgasoline', 'water', 15);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(7, 'AmmuNation', 'clip', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(9, 'AmmuNation', 'grip', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(10, 'AmmuNation', 'Suppressor', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(11, 'AmmuNation', 'flashlight', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(12, 'AmmuNation', 'tactitalmuzle', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(13, 'AmmuNation', 'holografik', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(14, 'AmmuNation', 'largescope', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(15, 'AmmuNation', 'mediumscope', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(16, 'AmmuNation', 'celownikdluga', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(17, 'AmmuNation', 'MountedScope', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(18, 'AmmuNation', 'kompensator', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(19, 'AmmuNation', 'powiekszonymagazynek', 2000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(20, 'AmmuNation', 'kevlar', 10000);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(21, 'AmmuNation', 'plomo', 7500);
INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(22, 'AmmuNation', 'paja', 5000);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Dumping structure for table extendedmode.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7976 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table extendedmode.sody_clubs
CREATE TABLE IF NOT EXISTS `sody_clubs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.sody_clubs: ~0 rows (approximately)
/*!40000 ALTER TABLE `sody_clubs` DISABLE KEYS */;
INSERT INTO `sody_clubs` (`name`, `label`) VALUES
	('lmc', 'Lost Motorcycle Club');
/*!40000 ALTER TABLE `sody_clubs` ENABLE KEYS */;

-- Dumping structure for table extendedmode.sody_clubs_ranks
CREATE TABLE IF NOT EXISTS `sody_clubs_ranks` (
  `id` tinyint(5) NOT NULL,
  `club_name` varchar(50) NOT NULL,
  `club_rank` tinyint(5) NOT NULL,
  `club_rank_name` varchar(30) NOT NULL,
  `club_rank_label` varchar(50) NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.sody_clubs_ranks: ~5 rows (approximately)
/*!40000 ALTER TABLE `sody_clubs_ranks` DISABLE KEYS */;
INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
	(0, 'lmc', 0, 'biker', 'Biker', 1500);
INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
	(0, 'lmc', 1, 'saa', 'Sergeant at Arms', 2000);
INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
	(0, 'lmc', 2, 'vicepresident', 'Vice President', 2500);
INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
	(0, 'lmc', 3, 'treasurer', 'Treasurer', 2500);
INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
	(0, 'lmc', 4, 'owner', 'President', 1000);
/*!40000 ALTER TABLE `sody_clubs_ranks` ENABLE KEYS */;

-- Dumping structure for table extendedmode.treasure_boxes
CREATE TABLE IF NOT EXISTS `treasure_boxes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `coords` varchar(255) NOT NULL,
  `contents` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.treasure_boxes: ~0 rows (approximately)
/*!40000 ALTER TABLE `treasure_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `treasure_boxes` ENABLE KEYS */;

-- Dumping structure for table extendedmode.truckingloads
CREATE TABLE IF NOT EXISTS `truckingloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `vehicles` varchar(500) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL,
  `json` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.truckingloads: ~10 rows (approximately)
/*!40000 ALTER TABLE `truckingloads` DISABLE KEYS */;
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(918, 'PDM', '["mule","boxville2"]', 1, '{"x":-15.93,"y":-1104.25,"z":25.67}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(920, 'Airport', '["benson"]', 2, '{"x":-1136.81,"y":-2688.62,"z":13.94}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(921, 'Gas (Postal 802)', '["mule","boxville2"]', 2, '{"x":1780.95,"y":3330.17,"z":40.25}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(922, 'Airport', '["benson"]', 2, '{"x":-1136.81,"y":-2688.62,"z":13.94}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(923, 'Xero 24 (Postal 4027)', '["mule","boxville2"]', 2, '{"x":264.38,"y":-1244.98,"z":28.14}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(924, '24/7 (Mount Chiliad)', '["mule"]', 3, '{"x":1718.34,"y":6423.8,"z":33.21}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(925, 'Airport', '["benson"]', 1, '{"x":-1136.81,"y":-2688.62,"z":13.94}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(926, 'Airport', '["benson"]', 1, '{"x":-1136.81,"y":-2688.62,"z":13.94}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(927, 'Luxury Autos', '["mule","boxville2"]', 1, '{"x":-810.84,"y":-228.29,"z":36.21}');
INSERT INTO `truckingloads` (`id`, `name`, `vehicles`, `tier`, `json`) VALUES
	(928, 'Airport', '["benson"]', 1, '{"x":-1136.81,"y":-2688.62,"z":13.94}');
/*!40000 ALTER TABLE `truckingloads` ENABLE KEYS */;

-- Dumping structure for table extendedmode.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `data` text COLLATE utf8mb4_bin NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.trunk_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Dumping structure for table extendedmode.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `accounts` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT 'user',
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT '{"x":-1042.67,"y":-2746.16,"z":21.36,"heading":334.32}',
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pet` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `skills` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_connected` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `house` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `xmasgift` int(11) NOT NULL DEFAULT 0,
  `club` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `club_rank` tinyint(5) DEFAULT NULL,
  `xp` bigint(20) NOT NULL DEFAULT 0,
  `arrested_time` longtext COLLATE utf8mb4_bin DEFAULT '{"pjail":0,"prison":0}',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table extendedmode.user_convictions
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` varchar(255) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.user_convictions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions` ENABLE KEYS */;

-- Dumping structure for table extendedmode.user_documents
CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(45) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.user_documents: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_documents` ENABLE KEYS */;

-- Dumping structure for table extendedmode.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table extendedmode.user_mdt
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  `bail` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.user_mdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_mdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mdt` ENABLE KEYS */;

-- Dumping structure for table extendedmode.uteknark
CREATE TABLE IF NOT EXISTS `uteknark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stage` int(3) unsigned NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stage` (`stage`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.uteknark: ~1 rows (approximately)
/*!40000 ALTER TABLE `uteknark` DISABLE KEYS */;
/*!40000 ALTER TABLE `uteknark` ENABLE KEYS */;

-- Dumping structure for table extendedmode.uteknark_coke
CREATE TABLE IF NOT EXISTS `uteknark_coke` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stage` int(3) unsigned NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stage` (`stage`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=5637 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.uteknark_coke: ~0 rows (approximately)
/*!40000 ALTER TABLE `uteknark_coke` DISABLE KEYS */;
/*!40000 ALTER TABLE `uteknark_coke` ENABLE KEYS */;

-- Dumping structure for table extendedmode.uteknark_heroin
CREATE TABLE IF NOT EXISTS `uteknark_heroin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stage` int(3) unsigned NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stage` (`stage`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.uteknark_heroin: ~0 rows (approximately)
/*!40000 ALTER TABLE `uteknark_heroin` DISABLE KEYS */;
/*!40000 ALTER TABLE `uteknark_heroin` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vcac_ban
CREATE TABLE IF NOT EXISTS `vcac_ban` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(400) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `report_id` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vcac_ban: ~0 rows (approximately)
/*!40000 ALTER TABLE `vcac_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcac_ban` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.vehicles: ~283 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 240000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Akuma', 'akuma', 56000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Alpha', 'alpha', 125000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Asbo', 'asbo', 70000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Asea', 'asea', 34000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Autarch', 'autarch', 400000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Avarus', 'avarus', 50000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bagger', 'bagger', 46000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller', 'baller2', 120000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller Sport', 'baller3', 130000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee', 'banshee', 190000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee 900R', 'banshee2', 300000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801', 'bati', 64000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801RR', 'bati2', 70000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bestia GTS', 'bestiagts', 200000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BF400', 'bf400', 62000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bf Injection', 'bfinjection', 24000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bifta', 'bifta', 34000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bison', 'bison', 12000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blade', 'blade', 8000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer', 'blazer', 40000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer Sport', 'blazer4', 50000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blista', 'blista', 4000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BMX (velo)', 'bmx', 1000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bobcat XL', 'bobcatxl', 11000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brawler', 'brawler', 74000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brioso R/A', 'brioso', 93000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype', 'btype', 40000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Hotroad', 'btype2', 60000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Luxe', 'btype3', 50000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer', 'buccaneer', 50000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer Rider', 'buccaneer2', 60000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo', 'buffalo', 120000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo S', 'buffalo2', 140000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bullet', 'bullet', 200000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'burrito3', 14000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Camper', 'camper', 7000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Caracara 4x4', 'caracara2', 250000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbonizzare', 'carbonizzare', 270000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbon RS', 'carbonrs', 58000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Casco', 'casco', 50000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cavalcade', 'cavalcade2', 40000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cheetah', 'cheetah', 385000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chimera', 'chimera', 40000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino', 'chino', 50000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino Luxe', 'chino2', 65000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cliffhanger', 'cliffhanger', 48000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Club', 'club', 17000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti Cabrio', 'cogcabrio', 150000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti', 'cognoscenti', 200000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet', 'comet2', 180000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet 5', 'comet5', 195000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Contender', 'contender', 166000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette', 'coquette', 140000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette Classic', 'coquette2', 120000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette BlackFin', 'coquette3', 130000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('D10', 'coquette4', 387000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cruiser (velo)', 'cruiser', 1200, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cyclone', 'cyclone', 290000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon', 'daemon', 47000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon High', 'daemon2', 48000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Defiler', 'defiler', 60000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dominator', 'dominator', 80000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dominator GX', 'dominator3', 200000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Double T', 'double', 57000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('8F Drafter', 'drafter', 190000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta', 'dubsta', 140000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta Luxuary', 'dubsta2', 160000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bubsta 6x6', 'dubsta3', 200000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dukes', 'dukes', 80000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Beater Dukes', 'dukes3', 31500, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dune Buggy', 'dune', 4000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dynasty', 'dynasty', 150000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Elegy', 'elegy2', 150000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Emerus', 'emerus', 200000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Emperor', 'emperor', 12000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Enduro', 'enduro', 62000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Entity XF', 'entity2', 350000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Esskey', 'esskey', 60000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Everon', 'everon', 475000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Exemplar', 'exemplar', 42000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('F620', 'f620', 54000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction', 'faction', 50000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction Rider', 'faction2', 54000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction XL', 'faction3', 85000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faggio', 'faggio', 4000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vespa', 'faggio3', 2000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon', 'felon', 144000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon GT', 'felon2', 154000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Feltzer', 'feltzer2', 156000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stirling GT', 'feltzer3', 126000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fixter (velo)', 'fixter', 1200, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Toyota FJ40', 'fj40', 2000, 'trabajo');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('FMJ', 'fmj', 326000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('PR4', 'formula', 600000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('R88 (F1)', 'formula2', 675000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fhantom', 'fq2', 60000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fugitive', 'fugitive', 32000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Furia', 'furia', 425000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Furore GT', 'furoregt', 100000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fusilade', 'fusilade', 85000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gargoyle', 'gargoyle', 56000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet', 'gauntlet', 64000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet Classic', 'gauntlet3', 160000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet Hellfire', 'gauntlet4', 250000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet Classic Custom', 'gauntlet5', 80000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gang Burrito', 'gburrito', 48000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'gburrito2', 50000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Glendale', 'glendale', 11000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Glendale Custom', 'glendale2', 15000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Grabger', 'granger', 110000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gresley', 'gresley', 80000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('GT 500', 'gt500', 90000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Guardian', 'guardian', 70000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hakuchou', 'hakuchou', 70000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hellion', 'hellion', 185000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hermes', 'hermes', 66000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hexer', 'hexer', 60000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hotknife', 'hotknife', 60000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Huntley S', 'huntley', 80000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hustler', 'hustler', 62000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Imorgon', 'imorgon', 455000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Infernus', 'infernus', 225000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Innovation', 'innovation', 50000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Intruder', 'intruder', 25000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Issi', 'issi2', 8000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Issi Sport', 'issi7', 45000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jackal', 'jackal', 16000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester', 'jester', 240000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester(Racecar)', 'jester2', 240001, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Journey', 'journey', 7000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jugular', 'jugular', 220000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kamacho', 'kamacho', 345000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blista Kanjo', 'Kanjo', 95000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Khamelion', 'khamelion', 46000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Komoda', 'Komoda', 175000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Krieger', 'krieger', 480000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kuruma', 'kuruma', 54000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Landstalker', 'landstalker', 60000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Landstalker XL', 'landstalker2', 227000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('RE-7B', 'le7b', 450000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Locust', 'locust', 189000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Lynx', 'lynx', 110000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mamba', 'mamba', 86000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manana', 'manana', 62000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manana Custom', 'manana2', 23500, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manchez', 'manchez', 56000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro', 'massacro', 110000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro(Racecar)', 'massacro2', 120000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa', 'mesa', 64000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa Trail', 'mesa3', 68000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Minivan', 'minivan2', 30000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Monroe', 'monroe', 194000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam', 'moonbeam', 25000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam Rider', 'moonbeam2', 31000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nebula Turbo', 'nebula', 775000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nemesis', 'nemesis', 46000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Neo', 'neo', 310000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Neon', 'neon', 266000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nero', 'nero2', 355000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightblade', 'nightblade', 70000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightshade', 'nightshade', 80000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F', 'ninef', 160000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F Cabrio', 'ninef2', 165000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Novak', 'novak', 170000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Omnis', 'omnis', 150000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BR8', 'openwheel1', 800000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('DR1', 'openwheel2', 300000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Oracle XS', 'oracle2', 46000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Osiris', 'osiris', 334000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Outlaw', 'outlaw', 225000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Panto', 'panto', 10000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Paradise', 'paradise', 6000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Paragon R', 'paragon', 420000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pariah', 'pariah', 126000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Patriot', 'patriot', 66000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('PCJ-600', 'pcj', 38000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Penumbra', 'penumbra', 22000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Penumbra FF', 'penumbra2', 77000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Peyote Gasser', 'peyote2', 425000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Peyote Custom', 'peyote3', 25000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pfister', 'pfister811', 235000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Phoenix', 'phoenix', 150000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Picador', 'picador', 40000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pigalle', 'pigalle', 58000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Prairie', 'prairie', 12000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Premier', 'premier', 20000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Primo Custom', 'primo2', 30000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('X80 Proto', 'prototipo', 650000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Radius', 'radi', 22000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('raiden', 'raiden', 48000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT', 'rapidgt', 80000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT Convertible', 'rapidgt2', 80000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT3', 'rapidgt3', 100000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Reaper', 'reaper', 210000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rebel', 'rebel2', 54000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rebla GTS', 'rebla', 325000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Regina', 'regina', 15000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Retinue', 'retinue', 31000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Retinue MKII', 'retinue2', 100000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Revolter', 'revolter', 94000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('riata', 'riata', 82000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rocoto', 'rocoto', 37000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tricycle', 'rrocket', 90000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ruffian', 'ruffian', 60000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rumpo Trail', 'rumpo3', 74000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('S80RR', 's80', 700000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre Turbo', 'sabregt', 66000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre GT', 'sabregt2', 68000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez', 'sanchez', 53000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez Sport', 'sanchez2', 56000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanctus', 'sanctus', 58000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sandking', 'sandking', 80000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('SC 1', 'sc1', 150000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter', 'schafter2', 22000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter V12', 'schafter3', 27000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Scorcher (velo)', 'scorcher', 1000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seminole', 'seminole', 58000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Frontier', 'seminole2', 125000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel', 'sentinel', 40000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel XS', 'sentinel2', 40000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel3', 'sentinel3', 23000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seven 70', 'seven70', 166000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('ETR1', 'sheava', 210000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Slam Van', 'slamvan3', 60000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sovereign', 'sovereign', 52000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger', 'stinger', 130000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger GT', 'stingergt', 135000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Streiter', 'streiter', 110000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stretch', 'stretch', 600000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stryder', 'stryder', 100000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sugoi', 'sugoi', 125000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan', 'sultan', 50000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan Classic', 'sultan2', 185000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan RS', 'sultanrs', 75000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Super Diamond', 'superd', 140000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surano', 'surano', 170000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surfer', 'surfer', 17000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('T20', 't20', 270000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tailgater', 'tailgater', 35000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tampa', 'tampa', 80000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Drift Tampa', 'tampa2', 90000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Thrax', 'thrax', 650000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Thrust', 'thrust', 66000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tigon', 'tigon', 403000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tri bike (velo)', 'tribike3', 1250, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck', 'trophytruck', 120000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck Limited', 'trophytruck2', 128000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tropos', 'tropos', 198000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Turismo R', 'turismor', 310000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tyrus', 'tyrus', 294000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vacca', 'vacca', 250000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vader', 'vader', 58000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vagrant', 'vagrant', 100000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Verlierer', 'verlierer2', 154000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vigero', 'vigero', 60000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Virgo', 'virgo', 62000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Visione', 'visione', 390000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voltic', 'voltic', 150000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voodoo', 'voodoo', 61000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vortex', 'vortex', 74000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('V-STR', 'vstr', 310000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Warrener', 'warrener', 16500, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Washington', 'washington', 19000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor', 'windsor', 140000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor Drop', 'windsor2', 125000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Woflsbane', 'wolfsbane', 66000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('XLS', 'xls', 122000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Yosemite', 'yosemite', 80000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Yosemite', 'yosemite2', 280000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Yosemite Rancher', 'yosemite3', 55000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga', 'youga', 12000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga Luxuary', 'youga2', 15000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga Classic 4x4', 'youga3', 60000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z190', 'z190', 142000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zentorno', 'zentorno', 386000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion', 'zion', 23000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion Cabrio', 'zion2', 26000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion Classic', 'zion3', 130000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie', 'zombiea', 63000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie Luxuary', 'zombieb', 64000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zorrusso', 'zorrusso', 300000, 'dlc');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z-Type', 'ztype', 138000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicles_for_sale
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicles_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicles_vip
CREATE TABLE IF NOT EXISTS `vehicles_vip` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` text DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table extendedmode.vehicles_vip: ~52 rows (approximately)
/*!40000 ALTER TABLE `vehicles_vip` DISABLE KEYS */;
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Toyota 4Runner', '4runner', 450, 'toyota', 'https://i.imgur.com/f2j9gnk.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('McLaren 675LT', '675lt', 450, 'mclaren', 'https://i.imgur.com/4mN4L18.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Aston Martin Vanquish', 'ast', 300, 'am', 'https://i.imgur.com/y0CCrvi.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Audi S8', 'audis8om', 350, 'audi', 'https://i.imgur.com/eesb5vm.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Bentley Continental GT', 'bcgt', 400, 'bentley', 'https://i.imgur.com/oBNRmHt.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Bugatti Divo', 'bdivo', 600, 'bugatti', 'https://i.imgur.com/wRj7DuQ.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('BMW M4 Competition', 'bmwm4', 600, 'bmw', 'https://i.imgur.com/epQq01c.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('BMW S1000RR', 'bmws', 350, 'bmw', 'https://i.imgur.com/Xq2y1in.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('BMW X7', 'bmwx7', 650, 'bmw', 'https://i.imgur.com/tqnqPXO.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Bugatti Centodieci', 'bugatticentodieci', 700, 'bugatti', 'https://i.imgur.com/XfKuu4c.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Bugatti Chiron', 'chiron17', 600, 'bugatti', 'https://i.imgur.com/gswZqiJ.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Cadillac CTS-V', 'ctsv16', 250, 'cadillac', 'https://i.imgur.com/9s1L5ZU.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ferrari F8 Spider', 'f8spider', 600, 'ferrari', 'https://i.imgur.com/QG5oz8Z.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ford Ranger Raptor', 'frr', 650, 'ford', 'https://i.imgur.com/7EXWklN.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Mercedes-AMG G63', 'g63amg6x6', 650, 'mb', 'https://i.imgur.com/sM0ncvW.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Mercedes-Benz G65 AMG', 'g65amg', 400, 'mb', 'https://i.imgur.com/785ZgRs.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Koenigsegg Gemera', 'gemera', 500, 'koenigsegg', 'https://i.imgur.com/9CyzYuL.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Mercedes-Benz GL63', 'gl63', 400, 'mb', 'https://i.imgur.com/2fDnsi1.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ford GT', 'gt17', 300, 'ford', 'https://i.imgur.com/TcjolzK.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Nissan GT-R', 'gtr', 250, 'nissan', 'https://i.imgur.com/dl80gEz.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('BMW i8', 'i8', 400, 'bmw', 'https://i.imgur.com/Pgk7Lbb.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Koenigsegg Jesko', 'jesko2020x', 600, 'koenigsegg', 'https://i.imgur.com/Lb1ap8Y.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('KTM RC 390', 'ktmrc39019', 500, 'ktm', 'https://i.imgur.com/prGx1XW.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ford Mustang Mach E', 'mache', 650, 'ford', 'https://i.imgur.com/ewIXmWG.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ford Mustang GT', 'mgt', 300, 'ford', 'https://i.imgur.com/LU2lU8U.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Nissan Titan Warrior', 'nissantitan17', 400, 'nissan', 'https://i.imgur.com/oxvV9hl.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('McLaren P1', 'p1', 600, 'mclaren', 'https://i.imgur.com/R8dHsVI.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Porsche 911 Turbo S', 'pts21', 600, 'porsche', 'https://i.imgur.com/NKkE44c.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Porsche Panamera Turbo S', 'pturismo', 400, 'porsche', 'https://i.imgur.com/dMNS8DG.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Yamaha R1', 'r1', 400, 'yamaha', 'https://i.imgur.com/WlOta7G.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Audi R8 V10', 'r8ppi', 600, 'audi', 'https://i.imgur.com/OPNtQfJ.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Dodge RAM 2500', 'ram2500', 650, 'dodge', 'https://i.imgur.com/A56cFRz.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lamborghini Centenario', 'rmodlp770', 600, 'lamborghini', 'https://i.imgur.com/KBfXHRf.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Pagani Huayra', 'rmodpagani', 600, 'pagani', 'https://i.imgur.com/ZG91ubr.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lamborghini Veneno', 'rmodveneno', 600, 'lamborghini', 'https://i.imgur.com/xG0d6Na.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('BMW X6', 'rmodx6', 650, 'bmw', 'https://i.imgur.com/cK3Vqkn.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Rolls-Royce Ghost', 'rrghost21', 650, 'rr', 'https://i.imgur.com/kRIy19E.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lamborghini SC18 Alston', 'sc18', 600, 'lamborghini', 'https://i.imgur.com/RQmYL3H.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Chevrolet Silverado', 'silv20', 650, 'chevrolet', 'https://i.imgur.com/reoWniv.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Audi SQ7', 'sq72016', 400, 'audi', 'https://i.imgur.com/XPO4i3v.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Jeep Grand Cherokee SRT8', 'srt8', 400, 'jeep', 'https://i.imgur.com/LBpNPDR.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Tesla Model X', 'teslax', 600, 'tesla', 'https://i.imgur.com/ymoNepD.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Tesla Roadster', 'tr22', 250, 'tesla', 'https://i.imgur.com/HDZ6Tof.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Audi TT RS', 'ttrs', 500, 'audi', 'https://i.imgur.com/x2c4tw5.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lamborghini Urus', 'urus', 400, 'lamborghini', 'https://i.imgur.com/FWCrOgJ.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Aston Martin Vulcan', 'vulcan', 400, 'am', 'https://i.imgur.com/BkgPFkl.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Toyota Land Cruiser VXR', 'vxr', 500, 'toyota', 'https://i.imgur.com/qTJZRNg.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lexus LX570 2018', 'wald2018', 400, 'lexus', 'https://i.imgur.com/eW1fbnf.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Ford Bronco Wildtrak', 'wildtrak', 600, 'ford', 'https://cdn.discordapp.com/attachments/475035463108001802/791750069539176448/unknown.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Zenvo ST1', 'zenvo', 600, 'zenvo', 'https://i.imgur.com/u4nyV49.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Chevrolet Camaro ZL1', 'zl12017', 400, 'chevrolet', 'https://i.imgur.com/HhWBVuu.png');
INSERT INTO `vehicles_vip` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Kawasaki ZX-10R', 'zx10r', 500, 'kawasaki', 'https://i.imgur.com/xM2Ca0z.png');
/*!40000 ALTER TABLE `vehicles_vip` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicles_vip_boat
CREATE TABLE IF NOT EXISTS `vehicles_vip_boat` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicles_vip_boat: ~10 rows (approximately)
/*!40000 ALTER TABLE `vehicles_vip_boat` DISABLE KEYS */;
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Nagasaki Dinghy', 'dinghy', 125, 'nagasaki', 'https://www.gtabase.com/images/gta-5/vehicles/boats/dinghy.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Shitzu Jetmax', 'jetmax', 125, 'shitzu', 'https://www.gtabase.com/images/gta-5/vehicles/boats/jetmax.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Dinka Marquis', 'marquis', 425, 'dinka', 'https://www.gtabase.com/images/gta-5/vehicles/boats/marquis.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Speedophile Seashark', 'seashark', 125, 'speedophile', 'https://www.gtabase.com/images/gta-5/vehicles/boats/seashark.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Sea Ray 650 Fly', 'sr650fly', 1600, 'yate', 'https://i.imgur.com/7LKU3yS.png');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Sumergible', 'submersible', 575, 'sumergible', 'https://www.gtabase.com/images/gta-5/vehicles/boats/submersible.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Sumergible Kraken', 'sumbersible2', 575, 'sumergible', 'https://www.gtabase.com/images/gta-5/vehicles/boats/kraken.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Lampadati Toro', 'toro', 225, 'lampadati', 'https://www.gtabase.com/images/gta-5/vehicles/boats/toro.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Shitzu Tropic', 'tropic', 225, 'shitzu', 'https://www.gtabase.com/images/gta-5/vehicles/boats/tropic.jpg');
INSERT INTO `vehicles_vip_boat` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('SuperYate Galaxy', 'yaluxe', 2200, 'yate', 'https://i.imgur.com/bnKujL1.png');
/*!40000 ALTER TABLE `vehicles_vip_boat` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicles_vip_plane
CREATE TABLE IF NOT EXISTS `vehicles_vip_plane` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicles_vip_plane: ~13 rows (approximately)
/*!40000 ALTER TABLE `vehicles_vip_plane` DISABLE KEYS */;
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Western Company Cargobob', 'cargobob', 1400, 'wc', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/cargobob.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Nagasaki Havok', 'havok', 1200, 'nagasaki', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/havok.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Luxor', 'luxor', 1600, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/luxor.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Luxor Deluxe', 'luxor2', 1600, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/luxor-deluxe.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Nagasaki Ultraligero', 'microlight', 1500, 'nagasaki', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/ultralight.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Miljet', 'miljet', 1600, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/miljet.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Western Company Seabreeze', 'seabreeze', 1600, 'wc', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/seabreeze.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Sea Sparrow', 'seasparrow', 1200, NULL, 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/sea-sparrow.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham SuperVolito Carbon', 'supervolito2', 1300, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/super-volito-carbon.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Swift', 'swift', 1400, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/swift.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Swift Deluxe', 'swift2', 1500, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/swift-deluxe.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Vestra', 'vestra', 1600, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/planes/main/vestra.jpg');
INSERT INTO `vehicles_vip_plane` (`name`, `model`, `price`, `category`, `imglink`) VALUES
	('Buckingham Volatus', 'volatus', 1400, 'buckingham', 'https://www.gtabase.com/images/gta-5/vehicles/helicopters/main/volatus.jpg');
/*!40000 ALTER TABLE `vehicles_vip_plane` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table extendedmode.vehicle_categories: ~13 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compactos');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('coupes', 'Coupe');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('dlc', 'DLCs');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('motorcycles', 'Motos');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('muscle', 'Muscle');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('offroad', 'Off Road');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sedans', 'Sedan');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sports', 'Deportivo');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sportsclassics', 'Deportivo Clasico');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('super', 'Super');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('suvs', 'SUVs');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('trabajo', 'Trabajo');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_categories_vip
CREATE TABLE IF NOT EXISTS `vehicle_categories_vip` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicle_categories_vip: ~24 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories_vip` DISABLE KEYS */;
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('am', 'Aston Martin');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('audi', 'Audi');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('bentley', 'Bentley');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('bmw', 'BMW');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('bugatti', 'Bugatti');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('cadillac', 'Cadillac');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('chevrolet', 'Chevrolet');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('dodge', 'Dodge');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('ferrari', 'Ferrari');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('ford', 'Ford');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('jeep', 'Jeep');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('kawasaki', 'Kawasaki');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('koenigsegg', 'Koenigsegg');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('ktm', 'KTM');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('lamborghini', 'Lamborghini');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('lexus', 'Lexus');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('mb', 'Mercedes-Benz');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('mclaren', 'McLaren');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('nissan', 'Nissan');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('pagani', 'Pagani');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('porsche', 'Porsche');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('rr', 'Rolls-Royce');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('tesla', 'Tesla');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('toyota', 'Toyota');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('yamaha', 'Yamaha');
INSERT INTO `vehicle_categories_vip` (`name`, `label`) VALUES
	('zenvo', 'Zenvo');
/*!40000 ALTER TABLE `vehicle_categories_vip` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_categories_vip_boat
CREATE TABLE IF NOT EXISTS `vehicle_categories_vip_boat` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicle_categories_vip_boat: ~6 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories_vip_boat` DISABLE KEYS */;
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('dinka', 'Dinka');
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('lampadati', 'Lampadati');
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('shitzu', 'Shitzu');
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('speedophile', 'Speedophile');
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('sumergible', 'Sumergible');
INSERT INTO `vehicle_categories_vip_boat` (`name`, `label`) VALUES
	('yate', 'Yate');
/*!40000 ALTER TABLE `vehicle_categories_vip_boat` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_categories_vip_plane
CREATE TABLE IF NOT EXISTS `vehicle_categories_vip_plane` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table extendedmode.vehicle_categories_vip_plane: ~3 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories_vip_plane` DISABLE KEYS */;
INSERT INTO `vehicle_categories_vip_plane` (`name`, `label`) VALUES
	('buckingham', 'Buckingham');
INSERT INTO `vehicle_categories_vip_plane` (`name`, `label`) VALUES
	('nagasaki', 'Nagasaki');
INSERT INTO `vehicle_categories_vip_plane` (`name`, `label`) VALUES
	('wc', 'Western Company');
/*!40000 ALTER TABLE `vehicle_categories_vip_plane` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_mdt
CREATE TABLE IF NOT EXISTS `vehicle_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `stolen` bit(1) DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.vehicle_mdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_mdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_mdt` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vs_aircrafts
CREATE TABLE IF NOT EXISTS `vs_aircrafts` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vs_aircrafts: ~0 rows (approximately)
/*!40000 ALTER TABLE `vs_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_aircrafts` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vs_aircraft_categories
CREATE TABLE IF NOT EXISTS `vs_aircraft_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vs_aircraft_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `vs_aircraft_categories` DISABLE KEYS */;
INSERT INTO `vs_aircraft_categories` (`name`, `label`) VALUES
	('heli', 'Helicopters');
INSERT INTO `vs_aircraft_categories` (`name`, `label`) VALUES
	('plane', 'Planes');
/*!40000 ALTER TABLE `vs_aircraft_categories` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vs_boats
CREATE TABLE IF NOT EXISTS `vs_boats` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vs_boats: ~0 rows (approximately)
/*!40000 ALTER TABLE `vs_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_boats` ENABLE KEYS */;

-- Dumping structure for table extendedmode.vs_boat_categories
CREATE TABLE IF NOT EXISTS `vs_boat_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table extendedmode.vs_boat_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `vs_boat_categories` DISABLE KEYS */;
INSERT INTO `vs_boat_categories` (`name`, `label`) VALUES
	('boat', 'Boats');
INSERT INTO `vs_boat_categories` (`name`, `label`) VALUES
	('subs', 'Submersibles');
/*!40000 ALTER TABLE `vs_boat_categories` ENABLE KEYS */;

-- Dumping structure for table extendedmode.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table extendedmode.weashops: ~6 rows (approximately)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 35000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(5, 'GunShop', 'WEAPON_MACHETE', 15000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(9, 'GunShop', 'WEAPON_BAT', 12000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(41, 'GunShop', 'WEAPON_SNSPISTOL', 23000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(42, 'GunShop', 'WEAPON_ASSAULTSMG', 90000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(43, 'GunShop', 'WEAPON_KNIFE', 12000);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
