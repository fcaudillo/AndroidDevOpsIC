# -*- mode: ruby -*-

# vi: set ft=ruby :



# All Vagrant configuration is done below. The "2" in Vagrant.configure

# configures the configuration version (we support older styles for

# backwards compatibility). Please don't change it unless you know what

# you're doing.



$descriptionString="

vagrant-centos-7.1-dev-docker #{ENV['version']} based on CentOS 7.1

base image bento/centos-7.1

build for Virtual Box 5.0.12

- Container Jenkins

- Container androidsdk

- docker-compose

- docker

- git

"



Vagrant.configure(2) do |config|



    # The most common configuration options are documented and commented below.

    # For a complete reference, please see the online documentation at

    # https://docs.vagrantup.com.



    config.vm.define "devdocker" do |devdocker|

        # Every Vagrant development environment requires a box. You can search for

        # boxes at https://atlas.hashicorp.com/search.

        devdocker.vm.box = "bento/centos-7.1"

		    devdocker.vm.box_check_update=true



        # Create a private network, which allows host-only access to the machine

        # using a specific IP.

        # config.vm.network "private_network", ip: "192.168.33.10"

	      devdocker.vm.network "private_network", ip: "192.168.2.12", virtualbox__intnet: "dev_network"



        # Create a forwarded port mapping which allows access to a specific port

        # within the machine from a port on the host machine. In the example below,

        # accessing "localhost:8080" will access port 80 on the guest machine.

		devdocker.vm.network "forwarded_port", guest: 8080, host: 8081
		devdocker.vm.network "forwarded_port", guest: 5000, host: 5001
		
        devdocker.vm.network "forwarded_port", guest: 3389, host: 8889
		
        devdocker.vm.network "forwarded_port", guest: 6080, host: 6080
        devdocker.vm.network "forwarded_port", guest: 5554, host: 5554
        devdocker.vm.network "forwarded_port", guest: 5555, host: 5555

        devdocker.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: true

        devdocker.vm.network "forwarded_port", guest: 22, host: 2231, auto_correct: true



        # Provider-specific configuration so you can fine-tune various

        # backing providers for Vagrant. These expose provider-specific options.

        # Example for VirtualBox:

        #

        devdocker.vm.provider "virtualbox" do |vb|

            # set virtualbox vm name

	          vb.name = "vagrant-centos-7.1-dev-docker"

            # set virtualbox vm description

			      vb.customize ["modifyvm", :id, "--description", $descriptionString]

            # Display the VirtualBox GUI when booting the machine

            vb.gui = false

            # Customize the cpus on the VM:

            vb.cpus = "1"

            # Customize the amount of memory on the VM:

            vb.memory = "2048"

			      # set display params

		    vb.customize ["modifyvm", :id, "--vram", "128"]
			
			vb.customize ["modifyvm", :id, "--usb", "on"]
            vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'SAMSUNG_Android [0400]', '--vendorid', '0x04e8', '--productid', '0x6860',"--manufacturer", "SAMSUNG","--product", "SAMSUNG_Android"]
			

        end

        #

        # View the documentation for the provider you are using for more

        # information on available options.



        # Define ssh configuration

        devdocker.ssh.insert_key = false

		    devdocker.ssh.username = "root"

		    devdocker.ssh.password = "vagrant"



        # Enable provisioning with a shell script. Additional provisioners such as

        # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the

        # documentation for more information about their specific syntax and use.

        # docker-compose.vm.provision "shell", inline: <<-SHELL

		    #   yum -y update

        # SHELL
      devdocker.vm.provision "shell", path: "./provision_script/vagrant_dev-docker_provision.sh"



    end



end

