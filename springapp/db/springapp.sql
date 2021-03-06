CREATE DATABASE springapp;

CREATE USER 'springappuser'@'%' IDENTIFIED BY 'pspringappuser';
CREATE USER 'springappuser'@localhost IDENTIFIED BY 'pspringappuser';

GRANT ALL PRIVILEGES ON springapp.* TO springappuser@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON springapp.* TO springappuser@localhost WITH GRANT OPTION;

USE springapp;