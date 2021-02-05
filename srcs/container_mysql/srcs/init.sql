use mysql;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS `wordpress`;

CREATE  USER IF NOT EXISTS 'admin' IDENTIFIED BY 'admin' ;

GRANT ALL PRIVILEGES ON wordpress.* TO 'admin';
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';

FLUSH PRIVILEGES;