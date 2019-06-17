Install wordpress
sudo su
#!/bin/bash
yum update -y
yum install httpd php php-mysql -y
wget https://wordpress.org/wordpress-5.0.2.tar.gz
tar -xzf wordpress-5.0.2.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf wordpress-5.0.2.tar.gz
cd /var/www/html/
chmod -R 755 wp-content
chown -R apache:apache wp-content
service httpd start
chkconfig httpd on


if you update .htaccess, then set AllowRewriterule All in file /etc/httpd/conf/httpd.conf 