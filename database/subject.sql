

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
   `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Link`   varchar(255) NOT NULL,
  `SubjectName` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `Type`  varchar(255) NOT NULL,
  `year` int(100) NOT NULL,
  
PRIMARY KEY (Id,SubjectName)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
