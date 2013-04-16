default:
	@echo "Please specify a target"
	
ubuntu-setup:
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
	sudo $(echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list)
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install python-software-properties python g++ make redis-server nodejs mongodb-10gen nodejs npm
	sudo npm install -g coffee-script iced-coffee-script supervisor

osx-setup: osx-brew-setup

osx-brew-setup:
	brew update
	brew install python redis nodejs mongodb nodejs npm || true
	npm install -g coffee-script iced-coffee-script supervisor

