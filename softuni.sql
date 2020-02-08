CREATE TABLE `towns`(
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR (30) NOT NULL 
);

CREATE TABLE `addresses`(
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`address_text` VARCHAR (255),
`town_id` INT,
CONSTRAINT  fk_addresses_towns
FOREIGN KEY `addresses` ( `town_id`)
REFERENCES `towns` (`id`)
); 

CREATE TABLE `departments`(
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR (50) NOT NULL 
);

CREATE TABLE `employees` 
(`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `first_name` VARCHAR (45),
 `middle_name` VARCHAR(45), 
 `last_name` VARCHAR(45),
 `job_title` VARCHAR(45), 
 `department_id` INT, 
 `hire_date` DATE,
 `salary` DECIMAL (10,2), 
 `address_id` INT,
 
 CONSTRAINT  fk_employess_departments
FOREIGN KEY `employees` ( `department_id`)
REFERENCES `departments` (`id`),

CONSTRAINT  fk_employess_addresses
FOREIGN KEY `employees` ( `address_id`)
REFERENCES `addresses` (`id`)
 );
 INSERT INTO `towns`
(`id`,`name`)
VALUES
(1,'Sofia'),
(2,'Plovdiv'),
(3,'Varna'),
(4,'Burgas');

INSERT INTO `departments`
(`id`,`name`)
VALUES
(1,'Engineering'),
(2, 'Sales'), 
(3, 'Marketing'), 
(4, 'Software Development'), 
(5, 'Quality Assurance');

INSERT INTO `employees`
(`id`,`first_name`,`middle_name`,`last_name`,`job_title`,`department_id`,`hire_date`,`salary`)
VALUES
(1 , 'Ivan', 'Ivanov', 'Ivanov',	'.NET Developer', 4, '2013/02/01', 3500.00),
(2 , 'Petar', 'Petrov', 'Petrov',	'Senior Engineer', 1, '2004/03/02', 4000.00),
(3 , 'Maria', 'Petrova', 'Ivanova',	'Intern', 5, '2016/08/28', 525.25),
(4 , 'Georgi', 'Terziev', 'Ivanov',	'CEO', 2, '2007/12/09', 3000.00),
(5 , 'Peter', 'Pan', 'Pan',	'Intern', 3, '2016/08/28', 599.88);

SELECT * FROM `towns`;
SELECT * FROM `departments`;
SELECT * FROM `employees`;

SELECT `name` FROM `towns`
ORDER BY `name`;

SELECT `first_name` , `last_name`, `salary` FROM `employees`;

UPDATE `employees`
SET
`salary` = `salary` * 1.1 ;
select `salary` from `employees`;INSERT INTO `soft_uni`.`departments`
(`id`,
`name`)
VALUES
(<{id: }>,
<{name: }>);








