-- question 1
select * from CS621Week2_2019 where (sensorTemp < 0) and (country = 'Jersey');

--Write an SQL Query to find all sensor observations where the observation was made during March 2019 and the sensor pressure is greater or equal to 990.
select * from CS621Week2_2019 where (sensorTime >= '2019-03-01') and (sensorTime <= '2019-03-31') and (sensorPressure >= 990) order by sensorPressure;

--Write an SQL Query to find all sensor observations where the checkCode contains
--the characters C and S. These two characters must be together and must be either
--both uppercase or lowercase.
SELECT checkCode from CS621Week2_2019 where ((checkCode like '%CS%') or (checkCode like '%cs%'));

--Write an SQL Query to find all sensor observations made in on the Isle of Man where the sensorTemp is an even number greater than 10?
SELECT * from CS621Week2_2019 where (country = 'Isle of Man') and (sensorTemp % 2 == 0) and (sensorTemp > 10);

-- Write an SQL query to find all sensor observations where the checkCode is either three or four characters long?

SELECT * from CS621Week2_2019 where (checkCode like '___') or (checkCode like '____');

--Write an SQL query to find all sensor observations where the checkCode begins
--with a capital letter C and the checkCode is at least four characters in length? It
--does not matter what the other characters are in the checkCode [ANS 76 rows returned]
select * from CS621Week2_2019 where (checkCode like 'C___%');


--Write an SQL query to find the sensorTemp and sensorPressure in the country
--Scotland anytime during the year 2018. Provide the checkCode of the sensor
--observation belonging to the 2nd observation made in Scotland during this time
--period. What are the sensorTemp and sensorPressure during this time?
--ANSWER checkCode M525JT2674H, temp 15, pressure 997
select * from CS621Week2_2019 WHERE (country = 'Scotland') and (sensorTime >= '2018-01-01') and (sensorTime <= '2018-12-31') ORDER By sensorTime asc LIMIT 2;
