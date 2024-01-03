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
