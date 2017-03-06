# README

##Brief
"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

##My take
This implementation of the spec primarily utilizes a class that uses class methods and variables to act as a proxy for a ORM object. This means the changes needed to implement a database is a simple Ctrl-f replace through the codebase. (as well as any normal database setup)

##intallation
