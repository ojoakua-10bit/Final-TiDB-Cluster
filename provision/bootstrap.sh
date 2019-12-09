# Update the repositories
# sudo dnf update -y

# Copy open files limit configuration
sudo cp /vagrant/config/tidb.conf /etc/security/limits.d/

# Enable max open file
sudo sysctl -w fs.file-max=1000000

# Extract the archive
tar xvf /vagrant/archives/tidb-v3.0-linux-amd64.tar.gz
tar xvf /vagrant/archives/node_exporter-0.18.1.linux-amd64.tar.gz

# Install text editor, wget, htop and enabling EPEL repo
sudo dnf install -y vim wget epel-release
sudo dnf install -y htop

# Disabling firewall, SELinux and swap
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo setenforce 0
sudo swapoff /swapfile

# Special provisioning for "pd-server-1"
if [[ $HOSTNAME == "pd-server-1" ]]; then

	# Install nginx, PHP, and mysql-client (mariadb)
#	sudo dnf install -y nginx mariadb php-cli php-fpm php-pdo php-mysqlnd php-opcache php-xml php-gd php-devel php-intl php-mbstring php-bcmath php-json php-iconv php-soap php-pecl-zip php-xmlrpc
	#bash /vagrant/provision/composer-install.sh
	#sudo mv composer.phar /usr/local/bin/composer -v

#	sudo mkdir -pv /var/www/html
#	tar xvf /vagrant/archives/wordpress-latest.tar.gz
#	sudo mv -v wordpress/* /var/www/html && rm -r wordpress
#	sudo mv -v /vagrant/config/wp-config.php /var/www/html
#	sudo chmod -Rv 777 /var/www/html
#	sudo restorecon -rv /var/www

#	sudo cp -v /vagrant/config/nginx.conf /etc/nginx/nginx.conf
#	sudo systemctl restart nginx php-fpm
	
	sudo dnf install java-1.8.0-openjdk
	cp /vagrant/archives/accounting-1.1.0-SNAPSHOT.jar .

	sudo dnf install -y /vagrant/archives/sysbench-1.0.17-3.el8.x86_64.rpm

	tar xvf /vagrant/archives/prometheus-2.2.1.linux-amd64.tar.gz
	tar xvf /vagrant/archives/grafana-4.6.3.linux-x64.tar.gz

	cp -v /vagrant/config/prometheus.yml prometheus-2.2.1.linux-amd64
	cp -v /vagrant/config/grafana.ini grafana-4.6.3/conf
fi
