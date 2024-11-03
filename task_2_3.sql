select name, duration from single
where duration = (select max(duration) from single);

select name, duration from single
where duration >= 210;

select name, release_date from collection
where extract(year from release_date) between '2018' and '2020';

select name from musical_executor
where name not like '% %';

/*1 вариант запроса на "мой" или "my" в названии трека */
select name from single
where name ilike 'мой %'
or name ilike '% мой %'
or name ilike '% мой'
or name ilike 'мой'
or name ilike 'my %'
or name ilike '% my %'
or name ilike '% my'
or name ilike 'my';

/*2 вариант запроса на "мой" или "my" в названии трека */
select name from single
where string_to_array(lower(name), ' ') && array ['мой', 'my'];

SELECT name, count(executor_id) FROM musical_genre
left join executor_genre on executor_genre.genre_id = musical_genre.genre_id
group by musical_genre.name;

select count(single_id) from album
left join single on album.album_id = single.album_id
where extract(year from album.release_date) between '2018' and '2020';

select album.name, avg(single.duration) from album
left join single on album.album_id = single.album_id
group by album.name;

select distinct name from musical_executor
where name not in (select distinct musical_executor.name from musical_executor
left join executor_album on musical_executor.executor_id = executor_album.executor_id
left join album on executor_album.album_id = album.album_id
where extract(year from album.release_date) = '2020');

select collection.name from collection
left join collection_single on collection.collection_id = collection_single.collection_id
left join single on collection_single.single_id = single.single_id
left join album on single.album_id = album.album_id
left join executor_album on executor_album.album_id = album.album_id
left join musical_executor on musical_executor.executor_id = executor_album.executor_id
where musical_executor.name = 'Натан Миров';