#!/bin/bash

#Para que pueda montar bien la carpeta compartida  de /vagrant
#fdcp1 yes|yum install kernel-devel-3.10.0-693.21.1.el7.x86_64

#Mejorar la linea de abajo para que solo instale gcc
#fdcp1 yes|yum update
#fdcp1 yes|yum groupinstall -y "Development Tools"


#fdcp1cd /opt/VBoxGuestAdditions-*/init
#fdcp1./vboxadd setup

# copy shell ebvironment
sudo cp /vagrant/provision_script/.bash_profile .bash_profile
sudo chmod 644 .bash_profile
echo "Bash environment copied ..."

# install docker
curl -sSL https://get.docker.com/ | sh
#wget -qO- https://get.docker.com/ | sh


#Comentado or fdcp 26/marzo/1971
#service docker start

#dockerd -H tcp://0.0.0.0:2375 && docker -v

#docker -v
#echo "docker installed ..."

#Prerequisitos para Instalar docker-compose
yes|yum install epel-release
yum repolist
yum -y install python-pip

# instal}l docker-compose

curl -L --tlsv1.2 https://github.com/docker/compose/releases/download/1.9.0/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
/usr/local/bin/docker-compose -version
echo "docker-compose installed ..."

# install git
yum -y install git
echo "Git installed ..."



mkdir -p /opt/jenkins_home/
chmod -R ugo+rw /opt/jenkins_home/

if [ ! -d /var/docker ]
then
    mkdir /var/docker
fi
echo "docker directory created ..."

# start docker deamon
#systemctl start docker.service
#systemctl enable docker.service

echo "Parando el servicio"
/bin/systemctl stop docker.service

sleep 3

echo "Export DOCKER_HOST"

yum install -y usbutils


nohup dockerd -H tcp://0.0.0.0:2375 &

docker -v
echo "docker installed ..."
echo "docker enabled and started ..."

export DOCKER_HOST="tcp://0.0.0.0:2375"

echo "Construyecto el docker compose"
cd /vagrant/stacks
/usr/local/bin/docker-compose build

echo "Cambiando permisos rw /opt/jenkins_home/"
chmod -R ugo+rw /opt/jenkins_home/

echo "Ejecutando el docker compose"
nohup /usr/local/bin/docker-compose up -d &



