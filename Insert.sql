
-- Задание 1

INSERT INTO musician(name)
VALUES ('Penelope Lope'),
       ('Nick'),
       ('Ed'),
       ('Jennifer Nifer'),
       ('Johnny'),
       ('Bette Tess'),
       ('Grace'),
       ('Joe');

INSERT INTO genre(name)
VALUES ('jazz'),
       ('Electronic'), 
       ('rock'),
       ('reggae'),
       ('hip hop');
      
INSERT INTO musiciansgenres
VALUES (1, 1),
       (2, 2), 
       (3, 3),
       (4, 4),
       (5, 5), 
       (6, 2),
       (7, 1),
       (8, 5),
       (1, 5),
       (2, 3),
       (3, 2);      

INSERT INTO album(name, album_year)
VALUES ('Duck Racer', 2020),
       ('Enemy Odds', 2015),
       ('Fantasia Park', 2018),
       ('Ghostbusters Elf', 2021),
       ('Gladiator Westward', 2019),
       ('Gold River', 2018),
       ('Jason Trap', 2019),
       ('Lady Stage', 2017),
       ('bonus album 1', 2020),
       ('bonus album 2', 2020);
       
INSERT INTO albumsmusicians
VALUES (1, 1),
       (2, 2), 
       (3, 3),
       (4, 4),
       (5, 5), 
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 2),
       (10, 3);
       
INSERT INTO track(name, duration, album_id)
VALUES ('Duck Track 1', 110, 1),
       ('My Duck Track 2', 185, 1),
       ('Duck Track 3', 61, 1),
       ('Enemy Odds track 1', 107, 2),
       ('Enemy Odds track 2', 217, 2),
       ('Enemy Odds track 3', 122, 2),
       ('Enemy Odds track 4', 90, 2),
       ('Fantasia Park track 1', 51, 3),
       ('Fantasia Park track 2', 227, 3),
       ('Ghostbusters Elf my track 1', 3, 4),
       ('Ghostbusters Elf track 2', 70, 4),
       ('Ghostbusters Elf track 3', 300, 4),
       ('Ghostbusters Elf track 4', 255, 4),
       ('Gladiator Westward tack 1', 81, 5),
       ('Gladiator Westward tack 2', 66, 5),       
       ('Gold River best track 1', 146, 6),
       ('Gold River best track 2', 101, 6),
       ('Gold River best track 3', 200, 6),
       ('Jason Trap track 1', 114, 7),
       ('Jason Trap track 2', 59, 7),
       ('Jason Trap track 3', 124, 7),
       ('Jason Trap track 4', 51, 7),
       ('Lady Stage track back 1', 87, 8),
       ('Lady Stage track back 2', 750, 8),
       ('Lady Stage track back 3', 240, 8);
 
INSERT INTO collection(name, collection_year)
VALUES ('Collection number 1', 2020),
       ('Collection number 2', 2015),
       ('Collection number 3', 2018),
       ('Collection number 4', 2021),
       ('Collection number 5', 2019),
       ('Collection number 6', 2018);
             
INSERT INTO collectionstracks
VALUES (1, 1),
       (1, 7),
       (1, 10),
       (2, 15),
       (2, 2),
       (2, 12),
       (3, 20), 
       (3, 5),
       (4, 4),
       (4, 8),
       (5, 14),
       (5, 13),
       (6, 24),
       (6, 3),
       (6, 21);  
