DROP TABLE IF EXISTS comments;
CREATE TABLE comments

(
Id int,
Author varchar(255),
Year int,
Comment text
);

INSERT INTO comments
(Id,Author,Year,Comment)
VALUES (2,"Zio Dante",2999,"Bye, Talia!");

INSERT INTO comments
(Id,Author,Year,Comment)
VALUES (2,"Zio Dante",2013,"Hi, Talia!");