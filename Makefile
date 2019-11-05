clone:
	git submodule update --init --recursive

linux: clone
	sudo curl https://get.docker.com/ | sh
	sudo curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

windows: clone
	@echo windows containers are only supported trough Hyper-V.
	@echo I suggest using a VM, but a manual installation can aslo be done.
	@echo Please refert to the docker documentation.
osx: clone
	docker --version || (echo "You must install the docker engine for osx, it can be found at the docker website!"; exit 1)

kali: clone
	curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
	echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list
	apt-get update
	apt-get install docker-ce
	sudo curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

start: networks
	sudo service docker start
	docker-compose up

networks:
	sudo sysctl net.ipv4.conf.all.forwarding=1
	sudo iptables -P FORWARD ACCEPT
