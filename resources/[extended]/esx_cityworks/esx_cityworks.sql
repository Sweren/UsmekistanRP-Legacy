INSERT INTO `jobs` (`name`, `label`) VALUES
('works', 'Servicios Público');

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('works', 0, 'interim', 'Empleado', 150, '{}', '{}');

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('pay_works', 'Boleta de Pago', 15, 0, 1);
