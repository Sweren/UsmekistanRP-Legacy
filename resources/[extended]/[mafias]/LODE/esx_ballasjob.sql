INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_LODE', 'LODE', 1)
;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_LODE_black', 'LODE_black', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_LODE', 'LODE', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_LODE', 'LODE', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('LODE', 'LODE')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('LODE',0,'recruit','Recluta',20,'{}','{}'),
	('LODE',1,'gangster','Gangster',40,'{}','{}'),
	('LODE',2,'bandit','Bandido',60,'{}','{}'),
	('LODE',3,'boss','Jefe',100,'{}','{}')
;

CREATE TABLE `fine_types_LODE` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_LODE` (label, amount, category) VALUES 
	('Multa',3000,0),
	('Multa',5000,0),
	('Multa',10000,1),
	('Multa',20000,1),
	('Multa',50000,2),
	('Multa',150000,3),
	('Multa',350000,3)
;