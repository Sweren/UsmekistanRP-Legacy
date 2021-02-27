USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_bus','Bus',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_bus','Bus',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('bus','Bus')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('bus',0,'recrue','Recrue',1200,'{}','{}'),
  ('bus',1,'novice','Novice',1350,'{}','{}'),
  ('bus',2,'experimente','Experimente',1600,'{}','{}'),
  ('bus',3,'driver','Chauffeur',1900,'{}','{}'),
  ('bus',4,'boss','Patron',2250,'{}','{}')
;
