WATCH = .
SUP = supervisor -q -w $(WATCH) -n error --extensions "coffee|iced" --exec "iced"
DBNAME = todos

web:
	$(SUP) server.coffee

packages:
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
	sudo $(echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list)
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install python-software-properties python g++ make redis-server nodejs mongodb-10gen nodejs npm
	sudo npm install -g coffee-script

db:
	coffee -pb newuser.coffee > newuser.js
	mongo localhost:27017/$(DBNAME) newuser.js
	rm newuser.js
