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

