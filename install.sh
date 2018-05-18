#!/bin/bash

cat <<"EOF"
    ____  __             ____           __        ____
   / __ \/ /_  ____     /  _____  _____/ /_____ _/ / ___  _____
  / /_/ / __ \/ __ \    / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
 / ____/ / / / /_/ /  _/ // / / (__  / /_/ /_/ / / /  __/ /
/_/   /_/ /_/ .___/  /___/_/ /_/____/\__/\__,_/_/_/\___/_/
           /_/             By Kavinda Rasanjana


EOF

echo  "This will download and install PHP , Apache Server & mySQL with a sample test webpage"
echo " DO you wont to proceed ? (Y/N)"
read ans

if [ "$ans" == "Y" ]; then
        if [ -x /usr/bin/php ]; then
                echo "PHP Is already  Insatalled"
        else
                #install Apache
                sudo yum install httpd
                sudo systemctl enable httpd
                sudo systemctl start httpd
                echo "<?php phpinfo(); ?> " > /var/www/html/index.php
                #Intall MySQl
                sudo yum install mysql-server
                sudo service mysqld start

                #install PHP
                sudo yum install php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
        fi
else
        echo "Thank you"
fi
~
