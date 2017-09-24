/*
	GRANT作成用SQL
	DB名、ユーザ名、パスワードを入れること
*/
GRANT ALL PRIVILEGES ON `app_development`.* TO `dbuser`@localhost IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON `app_development`.* TO `dbuser`@'192.168.%' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON `app_development`.* TO `dbuser`@'172.%' IDENTIFIED BY '12345678';
GRANT FILE ON *.* TO `dbuser`@'172.%';

