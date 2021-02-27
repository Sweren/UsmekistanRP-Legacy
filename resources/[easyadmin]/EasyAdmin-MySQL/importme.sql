 CREATE TABLE IF NOT EXISTS `ea_bans`
  (
     `banid`       INT(11) NOT NULL UNIQUE auto_increment,
     `expire`      DOUBLE NOT NULL DEFAULT '10444633200',
     `identifiers` TEXT NOT NULL,
     `reason`      TEXT NOT NULL,
	 `banner`      TEXT NOT NULL,
     PRIMARY KEY(`banid`)
  )  