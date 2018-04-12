# vagrant-centos-7.1-dev-android- docker
Vagrantbox con CentOS 7.1, basado sobre "bento/centos-7.1" image

[![GitHub version](https://badge.fury.io/gh/elegoevvag%2Fvagrant-centos-7.1-dev-docker.svg)](https://badge.fury.io/gh/elegoevvag%2Fvagrant-centos-7.1-dev-docker)
[![Stories in Ready](https://badge.waffle.io/elegoevvag/vagrant-centos-7.1-dev-docker.png?label=ready&title=Ready)](https://waffle.io/elegoevvag/vagrant-centos-7.1-dev-docker)


## Objetivo

Crear un ambiente de desarrollo de integracion continua para android, utilizando contenedores docker, Ademas de una prueba de concepto que se pueda verificar la instalacion.

## Ambiente
* Systema Operativo: CentOS 7.1
* Usuario `root/vagrant` & `vagrant/vagrant`

## Prerequisitos

1. Virtualbox 5.0.12 with guest edition
1. Vagrant 1.8.0

### Virtualbox

VirtualBox is an open source virtualizer, an application that can run an entire operating system within its own virtual machine.

1. Download the installer for your operating system using the links below.
    * [VirtualBox for Windows Hosts](http://download.virtualbox.org/virtualbox/5.0.12/VirtualBox-5.0.12-104815-Win.exe)
    * [VirtualBox for OS X hosts](http://download.virtualbox.org/virtualbox/5.0.12/VirtualBox-5.0.12-104815-OSX.dmg)
    * [VirtualBox for Linux hosts](https://www.virtualbox.org/wiki/Linux_Downloads) (requires that you pick your distro)
1. Run the installer, choosing all of the default options.
    * Windows: Grant the installer access every time you receive a security prompt.
    * Mac: Enter your admin password.
    * Linux: Enter your root password if prompted.

### Vagrant
[Vagrant](https://www.vagrantup.com/) is an open source command line utility for managing developer environments.

1. Download the installer for your operating system using the links below.
    * [Vagrant for Windows hosts](https://releases.hashicorp.com/vagrant/1.8.0/vagrant_1.8.0.msi)
    * [Vagrant for OS X hosts](https://releases.hashicorp.com/vagrant/1.8.0/vagrant_1.8.0.dmg)
    * [Vagrant for Linux hosts](https://www.vagrantup.com/downloads.html) (requires that you pick your distro)
1. Run the installer, choosing all defaults.
1. Reboot your if prompted to do so when installation completes.

## Aplicaciones instaladas en CentOS

1. [Docker version 18.04.0-ce](https://www.docker.com/)
1. [docker-compose version 1.9.0](https://docs.docker.com/compose/)
1. [git version 1.8.3.1](https://git-scm.com/)


## Scripts
#### vagrant_dev-docker_provision.sh
Instalacion de docker, docker-compose, docker, utilerias, etc.


## Creacion de la infraestructura de integracion continua.
* vagrant up -d
Con este comando levantamos nuestro ambiente de desarrollo.

## Configuration

* Configurar jenkins, crear un usuario y password de administracion, seguir los pasos definidos en http://localhost:8081 de su instancia ya ejecutandose en su equipo.



## Repositorios de github necesarios.
El codigo fuente de la aplicacion y su pipeline.  [![](https://github.com/fcaudillo/DockerCD)

## Mas información.
Dentro de este repositorio se encuentra un documento word para un mayor detalle.


## Mejoras al proyecto

Por el momento al provisionar la maquina virtual con vagrant, se levanta el docker-compose, este tendria que ejecutarse mejor durante el arranque del centos.