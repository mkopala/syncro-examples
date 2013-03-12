WATCH = .
SUP = supervisor -q -w $(WATCH) -n error --extensions "coffee|iced" --exec "iced"
DBNAME = todos

web:
	$(SUP) server.coffee

db:
	coffee -pb newuser.coffee > newuser.js
	mongo localhost:27017/$(DBNAME) newuser.js
	rm newuser.js
