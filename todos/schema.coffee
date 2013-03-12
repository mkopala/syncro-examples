TodoList = 
	name: String

Todo =
	name: 
		type: String
		required: true
	description: String
	done:
		type: Boolean
	todolist: 
		type: 'TodoList'
		required: true

User =
	userid:
		type: String
		index: 
			unique: true
		required: true
	password:
		type: String
		required: true
		private: true
	token:
		type: String
		index: true
		private: true
	firstname: String
	lastname: String

@dbschema =
	schema:
		Todo: Todo
		TodoList: TodoList
		User: User
	map: 
		TodoList: true
		Todo: 'TodoList'

# Export schema for node.js
unless @location
	module.exports = @dbschema
