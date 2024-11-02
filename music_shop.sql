create table if not EXISTS musical_executor(
	executor_id serial primary key,
	name varchar(255) not null,
	pseudonym varchar(255)
);

create table if not EXISTS musical_genre(
	genre_id serial primary key,
	name varchar(255) not null
);

create table if not EXISTS album(
	album_id serial primary key,
	name varchar(255) not null,
	release_date date not null
);

create table if not EXISTS collection(
	collection_id serial primary key,
	name varchar(255) not null,
	release_date date not null
);

create table if not EXISTS single(
	single_id serial primary key,
	name varchar(255) not null,
	duration integer,
	album_id integer not null references album(album_id)
);

create table if not EXISTS executor_genre(
	id serial primary key,
	executor_id integer not null references musical_executor(executor_id),
	genre_id integer not null references musical_genre(genre_id)
);

create table if not EXISTS executor_album(
	id serial primary key,
	executor_id integer not null references musical_executor(executor_id),
	album_id integer not null references album(album_id)
);

create table if not EXISTS collection_single(
	id serial primary key,
	single_id integer not null references single(single_id),
	collection_id integer not null references collection(collection_id)
);