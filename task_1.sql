INSERT INTO generes(name_genre)
    VALUES ('Кантри'),
        ('Phonk'),
        ('Лирика'),
        ('Классическая музыка'),
        ('Шансон');

INSERT INTO singers(alias)
    VALUES ('Johnny Cash'),
        ('Tim McGraw'),
        ('Pastel Ghoust'),
        ('Wilee'),
        ('XAN$X'),
        ('MiyaGi'),
        ('Syrex'),
        ('Пётр Ильич Чайковский '),
        ('Людвиг Ван Бетховен'),
        ('Михаил Шафутинский');

INSERT INTO singers_generes
    VALUES (1, 1),
        (2, 1),
        (3, 2),
        (4, 2),
        (5, 2),
        (6, 3),
        (7, 3),
        (8, 4),
        (9, 4),
        (10, 5);

INSERT INTO albums(name_album, date_album)
    VALUES ('American V: A Hundred Highways', 2006),
        ('One Of Those Nights: The Love Songs 2013-2021', 2022),
        ('Abyss', 2022),
        ('Night Drive', 2018),
        ('Cosmically', 2022),
        ('MiyaGi & Эндшпиль', 2021),
        ('Nightcore Gaming Music Vol.3', 2021),
        ('Детский альбом', 1878),
        ('Сонаты', 1798),
        ('3-е сентября', 1994);


INSERT INTO singers_albums(singer_id, album_id)
    VALUES (1, 1),
        (2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 8),
        (9, 9),
        (10, 10);


INSERT INTO tracks (name_track, duration, album_id)
    VALUES ('Gods Gonna Cut You Down', 159, 1),
        ('Futher On Up The Road', 204, 1),
        ('Loves Been Good To My Heart', 198, 1),
        ('Shotgun Rider', 236, 2),
        ('Good Taste In Women', 227, 2),  
        ('Humble And Kind', 252, 2),
        ('Top Of The World', 233, 2),
        ('Southern Girl', 276, 2),
        ('Keep Your Eyes On Me', 250, 2),
        ('Dark Beach', 222, 3),
        ('Shadows', 218, 3),
        ('Night Drive', 118, 4),
        ('Dark Side', 250, 5),
        ('Yaxa', 146, 5),
        ('Мой круговорот', 258, 6),
        ('Habits', 126, 7),
        ('Heads Will Roll', 232, 7),
        ('Зимнее Утро', 56, 8),
        ('Соната №6', 780, 9),
        ('3-е Сентября', 381, 10);

INSERT INTO collections(name_collection, year_collection)
    VALUES ('Зимняя', 2024),
        ('Плейст дня', 2024),
        ('Дежавю', 2024),
        ('Классика', 2020),
        ('Машина времени', 2010),
        ('Прогулка', 2023),
        ('За рулём', 2018),
        ('Осенняя', 2023);

INSERT INTO collections_tracks(collection_id, track_id) 
    VALUES (1, 1),
        (1, 2),
        (1, 3),
        (2, 4),
        (2, 5),
        (2, 6),
        (3, 7),
        (3, 8),
        (3, 9),
        (4, 10),
        (4, 11),
        (5, 12),
        (5, 13),
        (6, 14),
        (6, 15),
        (6, 16),
        (7, 17),
        (7, 18),
        (8, 19),
        (8, 20);