insert into musical_executor(name, pseudonym)
values
('Наталья Чистякова-Ионова', 'GlюкоZa'),
('MarShal Brus Matters III', 'Eminem'),
('Натан Миров','Natan'),
('Джонни', 'Johny');

insert into musical_genre(name)
values
('Поп-музыка'),
('RAP'),
('Electro');

insert into executor_genre(executor_id, genre_id)
values
(1,1),
(1,3),
(2,2),
(3,2),
(3,1),
(4,1),
(4,2);

insert into album(name, release_date)
values
('Family', '2019-01-18'),
('В моем сердце', '2020-05-12'),
('За тебя', '2013-06-06'),
('Rain on Dark', '2024-02-18'),
('Система', '2013-12-21');

insert into executor_album(executor_id, album_id)
values
(1,2),
(1,5),
(2,1),
(3,3),
(3,4),
(4,3),
(4,5);

insert into single(name, duration, album_id)
values
('Мама',4,2),
('Мой путь',4,3),
('My Brother',2, 1),
('In my Heart', 3, 1),
('Звезда',6,4),
('Домофон',4,5);

insert into collection(name, release_date)
values
('Family','2013-01-01'),
('Россия','2019-01-01'),
('Ветер','2018-03-13'),
('Сердце','2024-05-12');

insert into collection_single(single_id,collection_id)
values
(1,4),
(2,1),
(3,2),
(4,2),
(5,4),
(6,3);
