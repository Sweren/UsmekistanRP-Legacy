INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_darklotus', 'darklotus', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_darklotus', 'darklotus', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_darklotus', 'darklotus', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('darklotus', 'darklotus')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('darklotus',0,'recruit','Recluta',20,'{}','{}'),
	('darklotus',1,'gangster','Gangster',40,'{}','{}'),
	('darklotus',2,'bandit','Bandido',60,'{}','{}'),
	('darklotus',3,'boss','Jefe',100,'{}','{}')
;

CREATE TABLE `fine_types_darklotus` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_darklotus` (label, amount, category) VALUES 
	('Multa',3000,0),
	('Multa',5000,0),
	('Multa',10000,1),
	('Multa',20000,1),
	('Multa',50000,2),
	('Multa',150000,3),
	('Multa',350000,3)
;