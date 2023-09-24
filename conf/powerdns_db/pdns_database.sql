CREATE DATABASE pdns;
GRANT ALL ON pdns.* TO 'pdns_user'@'%' IDENTIFIED BY 'pdns_secret';
FLUSH PRIVILEGES;