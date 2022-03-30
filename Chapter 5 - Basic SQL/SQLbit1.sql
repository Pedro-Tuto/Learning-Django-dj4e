CREATE TABLE "Users" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE, 
    "name" INTEGER,
    "email" TEXT)

INSERT INTO Users (name, email) VALUES ('Robson', 'robson@terra.com');
INSERT INTO Users (name, email) VALUES ('Kekus', 'kekus@bol.com');
INSERT INTO Users (name, email) VALUES ('Walter', 'walter@white.com');
INSERT INTO Users (name, email) VALUES ('Klaus', 'santa.klaus@northpole.com');
INSERT INTO Users (name, email) VALUES ('Wilson', 'wilson1@wilson.com');
INSERT INTO Users (name, email) VALUES ('Ozeb', 'ozeb@bing.hao123.com');
INSERT INTO Users (name, email) VALUES ('Chandler', 'chandler@bing.com')

SELECT * FROM Users;
DELETE FROM Users WHERE email = 'wilson1@wilson.com';

SELECT * FROM Users;
UPDATE Users SET name="Gabigolmes" WHERE email='robson@terra.com';

SELECT * FROM Users;
SELECT * FROM Users WHERE email='robson@terra.com';
SELECT * FROM Users ORDER BY email;

SELECT * FROM Users ORDER BY name DESC;

SELECT * FROM Users;
UPDATE Users SET name="Gabigolmes";

DROP TABLE Users

.quit