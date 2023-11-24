.read data.sql


CREATE TABLE bluedog AS
  -- i want table selecting
  SELECT color,pet FROM students WHERE color= "blue" AND pet="dog";

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song FROM students WHERE color= "blue" AND pet="dog";


CREATE TABLE smallest_int_having AS
  SELECT time,min(smallest) FROM students GROUP BY smallest HAVING count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, b.song, a.color, b.color FROM students AS a JOIN students AS b WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;

