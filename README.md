# vagrant-centos-7.1-dev-docker
Vagrantbox with CentOS 7.1, docker development based on "bento/centos-7.1" image

[![GitHub version](https://badge.fury.io/gh/elegoevvag%2Fvagrant-centos-7.1-dev-docker.svg)](https://badge.fury.io/gh/elegoevvag%2Fvagrant-centos-7.1-dev-docker)
[![Stories in Ready](https://badge.waffle.io/elegoevvag/vagrant-centos-7.1-dev-docker.png?label=ready&title=Ready)](https://waffle.io/elegoevvag/vagrant-centos-7.1-dev-docker)

## Box Environment
* Operation System: CentOS 7.1
* Users `root/vagrant` & `vagrant/vagrant`

## Prerequisites

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

### Packer
[Packer](https://www.packer.io/) is a tool for creating machine and container images for multiple platforms from a single source configuration.

1. [Download] (https://www.packer.io/downloads.html) the installer for your operating system using the links below.
1. Run the installer

## Applications
1. [ruby 2.2.3](https://www.ruby-lang.org/de/)
1. [ultrahook](http://www.ultrahook.com/)
1. [docker 1.9](https://www.docker.com/)
1. [docker-compose 1.5.2](https://docs.docker.com/compose/)
1. [git 2.6.4](https://git-scm.com/)
1. [atom 1.2.4 editor](https://atom.io/)

## Scripts
#### packer-build.sh
Create new vagrant box based on virtual machine `vagrant-centos-7.1-dev-docker`
#### vagrant_dev-docker_provision.sh
Vagrant provisioning script
#### packer_dev-docker_provision.sh
Packer provisioning script

## configuration
### xrdp
* km-0807.ini - swiss german keyboard file
* xrdp.repo - xrdp repo configuration file

#### packer
* packer-vagrant-centos-7.1-dev-docker.json - packer configuration file

## How to create & test vagrant box
* create vagrant box with `vagrant up`
* test & modify created vagrant box
* package vagrant box and push it to atlas `./packer-build.sh`
* test uploaded vagrant box `cd test; ./test-vagrantbox.sh`

## Configuration
### atom plugins
* language-docker
* language-mongodb
* language-coffee-script-angular
* language-nginx
* emmet
* javascript-snippets
* javascript-standard-snippets
* angularjs
* angularjs-helper
* angular-jonpapa-snippets
* angularjs-snippets
* standard-angularjs-snippets
* angularjs-boilerplate-snippets
* markdown-preview-plus-opener

## Provisioning
### vagrant_dev-docker_provisioning.sh
* Copy bash environment (.bash_profile & .bashrc)
* Copy git prompt script (git-prompt.sh)
* Installs all referenced applications
* Copy script directory to /var/docker/scripts
* Starts docker deamon

### Scripts
#### do_nsenter.sh
Shell script to `nsenter` into a container (usage: do_nsenter.sh "container name")
#### git_removetag.sh
Shell script to delete a tag (local & remote) (usage: git_removetag.sh "tag name")

### Aliases
* go_script - go to script directory

## Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

## Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoevvag/vagrant-centos-7.1-dev-docker/blob/master/CHANGELOG.md)

## License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoevvag/vagrant-centos-7.1-dev-docker/blob/master/LICENSE) file.

## Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoevvag/vagrant-centos-7.1-dev-docker/issues)
