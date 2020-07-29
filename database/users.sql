DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
`mobile_no` varchar(255) DEFAULT NULL,  
PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
