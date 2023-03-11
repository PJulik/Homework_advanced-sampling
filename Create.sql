CREATE TABLE IF NOT EXISTS Singer(
	Singer_id SERIAL PRIMARY KEY,
	Singer_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre(
	Genre_id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_Genre(
	Singer_id INTEGER REFERENCES Singer(Singer_id),
	Genre_id INTEGER REFERENCES Genre(Genre_id),
	CONSTRAINT pg PRIMARY KEY (Singer_id, Genre_id)
);

CREATE TABLE IF NOT EXISTS Album(
	Album_id SERIAL PRIMARY KEY,
	Album_name VARCHAR(60) NOT NULL,
	Year_of_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Album_Singer(
	Album_id INTEGER REFERENCES Album(Album_id),
	Singer_id INTEGER REFERENCES Singer(Singer_id),
	CONSTRAINT pv PRIMARY KEY (Album_id, Singer_id)
);

CREATE TABLE IF NOT EXISTS Track(
	Track_id SERIAL PRIMARY KEY,
	Track_name VARCHAR(60) NOT NULL,
	Duration INTEGER NOT NULL,
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id) 
);

CREATE TABLE IF NOT EXISTS Compilation(
	Compilation_id SERIAL PRIMARY KEY,
	Compilation_name VARCHAR (60) NOT NULL,
	Year_of_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Compilation(
	Track_id INTEGER REFERENCES Track(Track_id),
	Compilation_id INTEGER REFERENCES Compilation(Compilation_id),
	CONSTRAINT pk PRIMARY KEY (Track_id, Compilation_id)
); 