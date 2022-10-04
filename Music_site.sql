CREATE TABLE IF NOT EXISTS Genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executors(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	"year of issue" SERIAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	duration INTEGER NOT null
);

CREATE TABLE IF NOT EXISTS Compilations(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	"year of issue" SERIAL NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresExecutors(
	genre_id integer references Genres(id),
	executor_id integer references Executors(id),
	constraint pk primary key (genre_id, executor_id)
);

CREATE TABLE IF NOT EXISTS ExecutorsAlbums(
	executor_id integer references Executors(id),	
	album_id integer references Albums(id),
	constraint pk primary key (executor_id, album_id)
);

CREATE TABLE IF NOT EXISTS TracksCompilations(
	track_id integer references Tracks(id),
	compilation_id integer references Compilations(id),
	constraint pk primary key (track_id, compilation_id)
);