#!/bin/bash
echo Wystratowanie Instalacji Panelu Kloxo-MR ( Przygotowanie Do Instalacji ) ...
read -p "Nacisnij [enter] I uruchomi sie Instalator Panelu Kloxo-MR 2017..."
cd /tmp
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
wget https://github.com/mustafaramadhan/kloxo/raw/rpms/release/neutral/noarch/mratwork-release-0.0.1-1.noarch.rpm --no-check-certificate
rpm -ivh mratwork-release-0.0.1-1.noarch.rpm
echo Hlup Hlup .. Czyszczenie Systemu ze smieci i Aktualizujemy i Instalujemy Dalej....
yum clean all
yum update mratwork-* -y
yum install kloxomr7 -y
sh /script/upcp

read -p "Instalacja Ukonczona Pomyslnie ! Brawo ! Teraz Zrestartuj System VPS.. "
