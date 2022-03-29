'''This assignment is to be run using the SQLite command line tool on a Linux system like the bash shell on https://www.pythonanywhere.com/.

$ cd ~
$ sqlite3 pitch.sqlite3
SQLite version 3.24.0 2018-06-04 14:10:15
Enter ".help" for usage hints.
sqlite>
Create a table in the database called "Ages":

CREATE TABLE Ages ( 
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  name VARCHAR(128), 
  age INTEGER
);
Then make sure the table is empty by deleting any rows that you previously inserted, and insert these rows and only these rows with the following commands:

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Konstancja', 20);
INSERT INTO Ages (name, age) VALUES ('Selina', 23);
INSERT INTO Ages (name, age) VALUES ('Jai', 36);
INSERT INTO Ages (name, age) VALUES ('Victory', 31);
INSERT INTO Ages (name, age) VALUES ('Ericlee', 26);
Once the inserts are done, run the following SQL command:
SELECT hex(name || age) AS X FROM Ages ORDER BY X;
Find the first row in the resulting record set and enter the long string that looks like 53656C696E613333.
If you are using the SQLite command line interface, you can use the ".quit" command to exit the program.

Note: This assignment must be done using SQLite - in particular, the SELECT query above will not work in any other database. So you cannot use MySQL or Oracle for this assignment.

'''

 ~ $ cd ~
 ~ $ sqlite3 pitch.sqlite3
SQLite version 3.31.1 2020-01-27 19:55:54
Enter ".help" for usage hints.
sqlite> CREATE TABLE Ages ( 
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
   ...>   name VARCHAR(128), 
   ...>   age INTEGER
   ...> );
sqlite> .table Ages
Ages
sqlite> .schema Ages
CREATE TABLE Ages ( 
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  name VARCHAR(128), 
  age INTEGER
);
sqlite> DELETE FROM Ages;
sqlite> INSERT INTO Ages (name, age) VALUES ('Konstancja', 20);
sqlite> INSERT INTO Ages (name, age) VALUES ('Selina', 23);
sqlite> INSERT INTO Ages (name, age) VALUES ('Jai', 36);
sqlite> INSERT INTO Ages (name, age) VALUES ('Victory', 31);
sqlite> INSERT INTO Ages (name, age) VALUES ('Ericlee', 26);
sqlite> SELECT hex(name || age) AS X FROM Ages ORDER BY X;