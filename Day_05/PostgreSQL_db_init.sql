-- INIT THE DATABASE
-- SQL script to solve Interview Query
-- Top 3 salaries
-- Question by Google

CREATE TABLE employees (
  id integer,
  first_name	VARCHAR,
  last_name	VARCHAR,
  salary	INTEGER,
  department_id	INTEGER
);

/*
insert into employees (id, first_name, last_name, salary, department_id) values (1, 'Alleyn', 'Ryal', 60517, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (2, 'Noami', 'Petrolli', 165408, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (3, 'Hollie', 'Ceresa', 198966, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (4, 'Annecorinne', 'Vondrasek', 75496, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (5, 'Ambrosio', 'Ebbins', 121675, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (6, 'Douglass', 'Trow', 76989, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (7, 'Cristiano', 'Lydon', 174629, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (8, 'Lorita', 'Dunster', 43291, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (9, 'Max', 'Girardi', 49836, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (10, 'Mame', 'Piccard', 49085, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (11, 'Tania', 'Playfair', 112270, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (12, 'Bambi', 'Remer', 46323, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (13, 'Anissa', 'Ellerman', 37995, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (14, 'Marcelle', 'Fullbrook', 70103, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (15, 'Moria', 'Hassey', 189457, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (16, 'Marice', 'Broomhall', 144172, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (17, 'Tracie', 'Archibould', 50291, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (18, 'Pauli', 'Stephen', 107528, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (19, 'Ginelle', 'Matveichev', 41350, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (20, 'Madeleine', 'Santora', 158933, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (21, 'Tamra', 'Sandwith', 64709, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (22, 'Benoit', 'Picker', 148623, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (23, 'Fredrika', 'McFaell', 244205, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (24, 'Tobit', 'Funnell', 79574, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (25, 'Tiffy', 'Martins', 134928, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (26, 'Karole', 'Carwardine', 244650, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (27, 'Norrie', 'McKinie', 179695, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (28, 'Ibbie', 'Bolland', 142062, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (29, 'Roberta', 'Peete', 31490, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (30, 'Ilise', 'Meneer', 92960, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (31, 'Petr', 'Antonoczyk', 201000, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (32, 'Caterina', 'Florence', 155611, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (33, 'Kylie', 'Levins', 17436, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (34, 'Wynne', 'Tidbald', 90363, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (35, 'Faustina', 'Caberas', 246132, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (36, 'Madonna', 'Biggadike', 35528, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (37, 'Collin', 'Scotti', 141288, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (38, 'Marris', 'Anselm', 248811, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (39, 'Anderea', 'Dhennin', 171533, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (40, 'Edlin', 'Raywood', 197780, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (41, 'Ophelia', 'Sillwood', 108129, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (42, 'Ajay', 'Slocomb', 147948, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (43, 'Danya', 'Mellon', 56062, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (44, 'Giraldo', 'Semmens', 171153, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (45, 'Cyril', 'Creese', 246104, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (46, 'Lian', 'Bergin', 148212, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (47, 'Atlanta', 'Medhurst', 33802, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (48, 'Pepito', 'Coots', 157403, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (49, 'Harry', 'Cresar', 232579, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (50, 'Darlleen', 'Sancho', 150322, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (51, 'Madelyn', 'Echalier', 123517, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (52, 'Nelli', 'Starcks', 222104, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (53, 'Latisha', 'Vasiltsov', 164769, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (54, 'Hillary', 'Mozzini', 123970, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (55, 'Caty', 'Tarburn', 21224, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (56, 'Cynthie', 'Bonney', 17285, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (57, 'Wade', 'Bonnefin', 27030, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (58, 'Josepha', 'Oxburgh', 64209, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (59, 'Tallie', 'Zorzoni', 10697, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (60, 'Benedetta', 'Jearum', 31030, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (61, 'Griffin', 'Cleghorn', 82309, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (62, 'Bird', 'Dank', 141648, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (63, 'Avrom', 'Harsnep', 158659, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (64, 'Nessa', 'Forsard', 108141, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (65, 'Clayton', 'Neylan', 32477, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (66, 'Beau', 'Withers', 185033, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (67, 'Harv', 'Paliser', 18418, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (68, 'Maxie', 'Warkup', 79530, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (69, 'Adela', 'Betje', 94588, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (70, 'Edita', 'Eaklee', 141739, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (71, 'Mandel', 'Drance', 135430, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (72, 'Karoly', 'Jeffs', 90754, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (73, 'Felecia', 'Cheltnam', 216112, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (74, 'Kristan', 'Oddey', 166626, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (75, 'Ellswerth', 'Seth', 186312, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (76, 'Godard', 'Proswell', 88130, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (77, 'Kameko', 'Kirtland', 126153, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (78, 'Aluino', 'Yurenev', 102225, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (79, 'Debor', 'Cleynaert', 207234, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (80, 'Kenneth', 'Gaveltone', 90420, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (81, 'Madalyn', 'Driver', 247377, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (82, 'Errick', 'Deere', 185788, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (83, 'Allis', 'Sherrett', 31532, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (84, 'Camella', 'Phillput', 234013, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (85, 'Herb', 'Lobell', 194860, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (86, 'Kelcie', 'Kupec', 172016, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (87, 'Bernardina', 'Twiggins', 47957, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (88, 'Valry', 'Panketh', 27311, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (89, 'Michele', 'Tirkin', 40494, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (90, 'Devlin', 'Daniel', 64237, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (91, 'Wynne', 'Reddel', 41202, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (92, 'Tye', 'Turfrey', 137383, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (93, 'Budd', 'Goodings', 59876, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (94, 'Dorey', 'Girardez', 216668, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (95, 'Woodman', 'Sweet', 113858, 3);
insert into employees (id, first_name, last_name, salary, department_id) values (96, 'Chandal', 'Othen', 229216, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (97, 'Dov', 'Vallis', 54469, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (98, 'Ingunna', 'Schukraft', 175259, 1);
insert into employees (id, first_name, last_name, salary, department_id) values (99, 'Johnny', 'Grigorio', 187115, 2);
insert into employees (id, first_name, last_name, salary, department_id) values (100, 'Vivianne', 'Roberds', 38025, 3);
*/

                           
CREATE TABLE departments (
  id	INTEGER,
  name	VARCHAR
);
/*
INSERT INTO departments values (1, 'IT');
INSERT INTO departments values (2, 'FINANCE');
INSERT INTO departments values (3, 'HR');
*/