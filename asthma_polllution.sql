CREATE TABLE "pollution" (
	id INT PRIMARY KEY,
    "county" varchar(200)   NOT NULL,
    "state" varchar(200)   NOT NULL,
    "city" varchar(200)   NOT NULL,
    "date_local" varchar(200)   NOT NULL,
	"year" int NOT NULL,
    "NO2_mean" int   NOT NULL,
    "O3_mean" int   NOT NULL,
    "SO2_mean" int   NOT NULL,
    "CO_mean" int   NOT NULL
)

--DROP TABLE pollution;

SELECT * FROM asthma
limit 1;

SELECT * FROM pollution
limit 1;



SELECT asthma.age, asthma.county, asthma.number_of_visits, asthma.year, pollution.year
FROM pollution 
JOIN asthma
ON asthma.county = pollution.county
LIMIT 5;
	
	
	
	