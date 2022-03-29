sqlite> .tables
sqlite> CREATE TABLE Users(
   ...> id INTEGER NOT NULL
   ...> PRIMARY KEY AUTOINCREMENT,
   ...> name VARCHAR(128),
   ...> email VARCHAR(128)
   ...> );
sqlite> .tables
Users
sqlite> .schema Users
CREATE TABLE Users(
id INTEGER NOT NULL
PRIMARY KEY AUTOINCREMENT,
name VARCHAR(128),
email VARCHAR(128)
);
sqlite> 