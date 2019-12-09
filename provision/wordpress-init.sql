CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspassword';
GRANT ALL ON wordpress.* TO 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspassword';
FLUSH PRIVILEGES;
