create table if not exists pefomer (
id SERIAL primary key,
perfomer_name VARCHAR(40) not null,
albums VARCHAR(40) not null,
genre_id text not null references genres(id)
);

create table if not exists genres (
id SERIAL primary key,
perfomer VARCHAR(40) not null
);

create table if not exists perfomer_genre (
id SERIAL primary key,
genre_id integer references genres(id),
perfomer_id integer references perfomer(id)
);

create table if not exists track (
id SERIAL primary key,
track_name text not null,
track_lenght integer not null,
album VARCHAR(40) not null,
compilation_id integer not null references compilation(id)
);

create table if not exists albums (
id SERIAL primary key,
album_name VARCHAR(40) not null,
album_year integer not null,
track_list integer references track(id),
perfomer_id integer references perfomer(id)
);

create table if not exists perfomer_albums (
id SERIAL primary key,
album_id integer references albums(id),
perfomer_id integer references perfomer(id)
);

create table if not exists track_list (
id SERIAL primary key,
track_id integer not null references track(id),
compilation_id integer not null references compilation(id)
);

create table if not exists compilation (
id SERIAL primary key,
track text not null,
compilation_year integer not null
);
