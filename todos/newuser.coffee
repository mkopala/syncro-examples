db.users.remove()
db.todos.remove()
db.todolists.remove()
db.rights.remove()

newobj = (data) ->

	hist = {}
	for key,val of data when key isnt '_id'
		hist[key] = val

	data.created = new Date()
	data.edited = new Date()
	data.history = [
		_id: new ObjectId()
		created: new Date()
		changes: hist
	]
	data

# IDs
userid = new ObjectId()
listid = ObjectId "51119418e7999617edbb93a2" # new ObjectId()

# Objects
user = newobj
	_id: userid
	userid: 'test'
	token: 'secretcode'

list = newobj
	_id: listid
	name: "My List"

perm =
	user: userid
	type: 'TodoList'
	objid: listid
	access: 'full'

db.users.save(user)
db.todolists.save(list)
db.rights.save(perm)