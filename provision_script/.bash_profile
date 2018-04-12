# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=/var/docker/scripts:$PATH:$HOME/bin
export PATH
export DOCKER_HOST="tcp://0.0.0.0:2375"

