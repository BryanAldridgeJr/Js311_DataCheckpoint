use sportsbook;
DROP TABLE IF EXISTS usersBet, users, sports;

CREATE TABLE users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(50),
  email_name VARCHAR(50),
  password VARCHAR(50),
  PRIMARY KEY (user_id)
);

CREATE TABLE sports (
  sport_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),   
  PRIMARY KEY (sport_id)
);

CREATE TABLE usersBet (
  bet_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  sport_id INT NOT NULL,
  bet VARCHAR(50),
  time VARCHAR(50),
  outcome VARCHAR(50),
  PRIMARY KEY (bet_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (sport_id) REFERENCES sports (sport_id)
);


INSERT INTO users 
	(user_name, email_name, password) 
VALUES
	('John Doe', 'john.doe@example.com', 'password123'),
	('Alice Smith', 'alice.smith@example.com', 'secret456'),
	('Bob Johnson', 'bob.johnson@example.com', 'secure789');


INSERT INTO sports 
   (name) 
VALUES
	('NFL'),
	('NBA'),
  ('NCAABB'),
	('NCAAFB'),
  ('BOXING'),
	('MLB');

INSERT INTO usersBet 
   (bet_id, user_id, sport_id, bet, time, outcome) 
VALUES
	(1, 1, 1, '49ers vs Cheifs', '2024-01-31 15:00:00', '49ers won'),
	(2, 2, 2, 'Lakers vs Warriors', '2024-02-01 20:30:00', 'Lakers won'),
	(3, 3, 3, 'Texas vs Houston', '2024-02-05 12:00:00', 'Houston won'),
  (4, 1, 4, 'Texas vs Alabama', '2024-02-05 12:00:00', 'Texas won'),
  (5, 2, 5, 'Tank vs Garcia', '2024-02-05 12:00:00', 'Tank won'),
  (6, 3, 6, 'Astros vs Dodgers', '2024-02-05 12:00:00', 'Astros won');
    


