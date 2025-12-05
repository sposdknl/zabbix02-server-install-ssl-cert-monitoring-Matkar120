#!/bin/bash
set -e

DB_PASS="password"

apt update -y

apt install -y mysql-server

wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu24.04_all.deb
dpkg -i zabbix-release_latest_7.0+ubuntu24.04_all.deb
apt update -y

apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent2

apt install -y zabbix-agent2-plugin-mongodb zabbix-agent2-plugin-mssql zabbix-agent2-plugin-postgresql || true

mysql <<EOF
CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE USER 'zabbix'@'localhost' IDENTIFIED WITH mysql_native_password BY '$DB_PASS';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';
SET GLOBAL log_bin_trust_function_creators = 1;
EOF

zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p$DB_PASS zabbix

mysql -e "SET GLOBAL log_bin_trust_function_creators = 0;"

sed -i "s/# DBPassword=.*/DBPassword=$DB_PASS/" /etc/zabbix/zabbix_server.conf

systemctl restart zabbix-server zabbix-agent2 apache2 mysql
systemctl enable zabbix-server zabbix-agent2 apache2 mysql