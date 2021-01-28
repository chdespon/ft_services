use mysql;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS `wordpress`;

CREATE USER 'user' IDENTIFIED BY 'user' ;

GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON wordpress.* TO 'user';

FLUSH PRIVILEGES;