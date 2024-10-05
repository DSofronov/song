INSERT INTO genre
VALUES (1,'Jazz'), (2, 'Rock'), (3, 'Reggae'
);
INSERT INTO performer(name)
VALUES ('Louis Daniel Armstrong'), ('Sting'), ('AC/DC') ,('Bob Marley'
);
INSERT INTO artist_genre
VALUES (1, 1, 1), (2, 1, 2), (3, 2, 3), (4, 3, 4
);
INSERT INTO album 
VALUES (1, 'Ten Summoner’s Tales', '09.03.1993'), (2, 'Power Up', '13.11.2020'), (3, 'The Early Years', '22.07.2019'), (4, 'C`est si bon', '01.01.1991'
);
INSERT INTO album_artist(album_id, performer_id)
VALUES (1, 2), (2, 3), (3, 4), (4, 1
);
INSERT INTO track(album_id, name, duration_sec) 
VALUES (1, 'Shape of My Heart', 4.39), (1, 'Fields Of Gold', 3.38), (2, 'Systems Down', 3.13), (3, 'Touch Me', 3.06), (3, 'My Cup', 3.07), (4, 'Go Down Moses', 3.41
);
INSERT INTO compilation 
VALUES (1, 'Anthology Vol. #1', '27.05.2018'), (2, 'Anthology Vol. #2', '27.05.2019'), (3, 'Anthology Vol. #3', '27.05.2020'), (4, 'Anthology Vol. #4', '27.05.2021'
);
INSERT INTO compilation_tracks(compilation_id, track_id) 
VALUES (1, 1), (1, 3), (2, 2), (2, 4), (3, 4), (3, 5), (4, 1), (4, 6
); 