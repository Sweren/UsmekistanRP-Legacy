INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_vercetti', 'vercetti', 1)
;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_vercetti_black', 'vercetti_black', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_vercetti', 'vercetti', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_vercetti', 'vercetti', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('vercetti', 'vercetti')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('vercetti',0,'recruit','Recluta',20,'{}','{}'),
	('vercetti',1,'gangster','Gangster',40,'{}','{}'),
	('vercetti',2,'bandit','Bandido',60,'{}','{}'),
	('vercetti',3,'boss','Jefe',100,'{}','{}')
;

CREATE TABLE `fine_types_vercetti` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_vercetti` (label, amount, category) VALUES 
	('Multa',3000,0),
	('Multa',5000,0),
	('Multa',10000,1),
	('Multa',20000,1),
	('Multa',50000,2),
	('Multa',150000,3),
	('Multa',350000,3)
;