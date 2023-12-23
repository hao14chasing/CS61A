.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet From students Where color='blue' And pet='dog';

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song From students Where color='blue' And pet='dog';


CREATE TABLE smallest_int_having AS
  SELECT time, smallest From students GROUP BY smallest HAVING count(*)=1 ;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color,b.color From
          students AS a, students AS b
          WHERE a.pet=b.pet AND a.song=b.song AND a.time<b.time;

