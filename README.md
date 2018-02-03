## **About the program**
The database is created with Ruby and uses HashMap-based indexes to store data.

When run, the program comes with the following built-in commands:
- 'set' saves the input key and value. Example: `set 1 test`
- 'get' gets the value of the given key input. Example: `get 1`
- 'ls' prints out all the content of the database.
- 'exit' exits the program.
- 'help' prints out a list of valid commands.

## **Running the program**

1) Navigate to the folder containing the file named `simple_db.rb`
2) Run the file by using either of the commands below

**Without Ruby installed:**
```
$ docker run -it --rm -v "$(pwd):/src" -w /src helgecph/pythonruby sh -c "ruby simple_db.rb"
```

**With Ruby and GDBM installed:**
```
$ ruby simple_db.rb
```
