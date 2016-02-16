DROP TABLE IF EXISTS people;
CREATE TABLE people

(
Name varchar(255),
Description text,
Age int,
Id int PRIMARY KEY,
dob int,
dod int,
hair varchar(255),
eyes varchar(255),
mother varchar(255),
father varchar(255),
birthCity varchar (255)
);

INSERT INTO people
(Name,Description,Age,Id,dob,dod,hair,eyes,mother,father,birthCity)
VALUES ("Dante Rossi","Dante Amos Mario Rossi Sr.",46,1,1933,1987,"Black","Hazel","Rossi","Rossi","Carrera, Italy");

INSERT INTO people
(Name,Description,Age,Id,dob,dod,hair,eyes,mother,father,birthCity)
VALUES ("Talia Lyn Holcomb","I hold you",3,2,2013,2999,"Brown","Blue","Kristina Holcomb","Tyler Holcomb","Tyler, Texas");

INSERT INTO people
(Name,Description,Age,Id,dob,dod,hair,eyes,mother,father,birthCity)
VALUES ("Tessa Ann Holcomb","Thank you",2,3,2013,2999,"Blonde","Blue","Kristina Holcomb","Tyler Holcomb","Berlin, Vermont");