DROP TABLE IF EXISTS "country";
	CREATE TABLE country(
		id INT PRIMARY KEY,
		name TEXT);

DROP TABLE IF EXISTS "league";
	CREATE TABLE league(
		id INT PRIMARY KEY,
		country_id INT,
		name TEXT);

DROP TABLE IF EXISTS "team";
	CREATE TABLE team(
		id INT PRIMARY KEY,
		team_api_id INT,
		team_long_name TEXT,
		team_short_name TEXT);

DROP TABLE IF EXISTS "match";
	CREATE TABLE match(
		id INT PRIMARY KEY,
		country_id INT,
		season TEXT,
		stage INT,
		date DATE,
		hometeam_id INT,
		awayteam_id INT,
		home_goal INT,
		away_goal INT);

COPY country
	FROM PROGRAM 'curl "https://assets.datacamp.com/production/repositories/3580/datasets/d45e88bcc456623696fcfd8779c5a7ddbb3e0033/country.csv"' (DELIMITER ',', FORMAT CSV, HEADER);

COPY league
	FROM PROGRAM 'curl "https://assets.datacamp.com/production/repositories/3580/datasets/c58f4296f0f51145e6cc17dd2dbaa9484664c28e/league.csv"' (DELIMITER ',', FORMAT CSV,  HEADER);

COPY team
	FROM PROGRAM 'curl "https://assets.datacamp.com/production/repositories/3580/datasets/aa3b0a28ed24e43fd0973f26794110af4af9457b/team.csv"' (DELIMITER ',', FORMAT CSV,  HEADER);

COPY match
	FROM PROGRAM 'curl "https://assets.datacamp.com/production/repositories/3580/datasets/169353fdbb5fef7f1ed858e97c60fc7ee14c2bff/match.csv"' (DELIMITER ',', FORMAT CSV,  HEADER);
