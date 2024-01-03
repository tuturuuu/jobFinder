CREATE DATABASE asm2;

CREATE TABLE asm2.Company (
    company_id INT(11) NOT NULL AUTO_INCREMENT,
    address VARCHAR(255) DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    email VARCHAR(255) DEFAULT NULL,
    logo LONGBLOB DEFAULT NULL,
    company_name VARCHAR(255) DEFAULT NULL,
    phone_number VARCHAR(50) DEFAULT NULL,
    status INT DEFAULT NULL,
    PRIMARY KEY (company_id)
);

CREATE TABLE asm2.User (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    address varchar(255),
    description varchar(255),
    email varchar(255),
    full_name varchar(255),
    image LONGBLOB DEFAULT NULL,
    cv LONGBLOB DEFAULT NULL,
    cv_name varchar(255) DEFAULT NULL,
    cv_description varchar(255) DEFAULT NULL,
    password varchar(255),
    phone_number varchar(255),
    role int NOT NULL,
    company_id int(11),
    PRIMARY KEY (`id`),
	CONSTRAINT `fk_user_cv` FOREIGN KEY (company_id) REFERENCES asm2.Company(company_id) on delete cascade
);

#1 == manager

CREATE TABLE IF NOT EXISTS asm2.Category (
	category_id int(11)  NOT NULL AUTO_INCREMENT,
    category_name varchar(255),
    PRIMARY KEY(category_id)
);

CREATE TABLE IF NOT EXISTS asm2.Recruitment (
  recruit_id INT(11) NOT NULL AUTO_INCREMENT,
  address VARCHAR(255) NOT NULL,
  created_at DATE NOT NULL,
  description VARCHAR(255) NOT NULL,
  experience VARCHAR(255) NOT NULL,
  quantity INT(11) NOT NULL DEFAULT 1,
  salary VARCHAR(255) NOT NULL,
  status tinyint(1) NOT NULL DEFAULT 1,
  title VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  company_id INT(11) NOT NULL,
  category_id INT(11) NOT NULL, 
  deadline VARCHAR(255) NOT NULL,
  PRIMARY KEY (recruit_id),
  CONSTRAINT `fk_recruit_catergory` FOREIGN KEY (category_id) REFERENCES asm2.Category(category_id) on delete cascade,
  CONSTRAINT `fk_recruit_company` FOREIGN KEY (company_id) REFERENCES asm2.Company(company_id) on delete cascade
);

CREATE TABLE IF NOT EXISTS asm2.Application (
	application_id int(11)  NOT NULL AUTO_INCREMENT,
    created_at DATE NOT NULL,
    recruitment_id int(11) NOT NULL,
    user_id int(11) NOT NULL,
    status tinyint(1) NOT NULL DEFAULT 1,
    introduction varchar(255),
    
    PRIMARY KEY(application_id),
	CONSTRAINT `fk_application_recruitment` FOREIGN KEY (recruitment_id) REFERENCES asm2.Recruitment(recruit_id) on delete cascade,
    CONSTRAINT `fk_application_user_id` FOREIGN KEY (user_id) REFERENCES asm2.User(id) on delete cascade
);

/* status -> 0 = hired
		  -> 1 = havent checked
          -> -1 = haven't applied
*/
