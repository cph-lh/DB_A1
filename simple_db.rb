require 'gdbm'

is_running = true
hash = {}

gdbm = GDBM.new("a1_database.db")
gdbm.each_pair do |key, value|
	hash[key] = value            
end
puts "*** Welcome to the simple database! ***"
puts "Type 'help' for a list of commands."
while(is_running) do
	input = gets
	input = input.split(' ')
	case input[0]
	when "get"
		puts "Value: "+hash[input[1]]
	when "set"
		hash[input[1]] = input[2]
		gdbm[input[1]] = input[2]
		puts input[2]+" was added to the database."
	when "ls"
		hash.each do |key,value|
			puts key+": "+value
		end 
	when "exit"
		is_running = false
		puts "Exiting database. Goodbye!"
	when "help"
		puts "List of commands:"
		puts "Type 'set' to save data to the DB. Ex: 'set 1 data'."
		puts "Type 'get' to get data from the DB. Ex: 'get 1'."
		puts "Type 'ls' to list the data in the DB."
		puts "Type 'exit' to exit the database." 
	else
		puts "Command not recognized - try again."
		puts "Type 'help' for a list of commands."
	end
end
gdbm.close
