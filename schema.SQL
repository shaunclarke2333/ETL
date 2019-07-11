DROP TABLE pollution;

--DROP TABLE asthma;


CREATE TABLE "pollution" (
	id INT PRIMARY KEY,
    "county" varchar(200)   NOT NULL,
	"year" int NOT NULL,
    "no2_mean" dec   NOT NULL,
    "o3_mean" dec   NOT NULL,
    "so2_mean" dec   NOT NULL,
    "co_mean" dec   NOT NULL
)

CREATE TABLE "asthma" (
	id INT PRIMARY KEY,
    "county" varchar(200)   NOT NULL,
	"year" int NOT NULL,
    "number_of_visits" int   NOT NULL,
    "age" varchar(200) NOT NULL
)


SELECT * FROM asthma limit 10;

SELECT * FROM pollution;

SELECT a.year, a.number_of_visits, p.county,  p.no2_mean, p.O3_mean, p.so2_mean
FROM asthma a
JOIN pollution p
	ON a.county = p.county