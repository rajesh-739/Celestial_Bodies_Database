CREATE DATABASE universe;

\c universe;

--/home/codeally/project/test.sql
CREATE TABLE galaxy (
    galaxy_id SERIAL NOT NULL,
    star_id INTEGER  NOT NULL,
    name VARCHAR(29) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE star (
    star_id SERIAL NOT NULL,
    galaxy_id INTEGER NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE planet (
    planet_id SERIAL NOT NULL,
    star_id INTEGER  NOT NULL,
    moon_id INTEGER  NOT NULL,
    name VARCHAR(29) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE moon (
    moon_id SERIAL NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE more_info (
    more_info_id SERIAL NOT NULL,
    object_id INTEGER,
    name VARCHAR(20) UNIQUE NOT NULL,
    description TEXT
);


INSERT INTO galaxy VALUES 
(1, 1, 'Andromeda Galaxy', 500, 750, 1500.75, 'solid', true, true),
(2, 2, 'Canis Major Dwarf Galaxy', 500, 750, 1500.75, 'solid', true, true),
(3, 3, 'Cygnus A', 500, 750, 1500.75, 'solid', true, true),
(4, 4, 'Maffei I and II', 500, 750, 1500.75, 'solid', true, true),
(5, 5, 'Magellanic Clouds', 500, 750, 1500.75, 'solid', true, true),
(6, 6, 'Milky Way Galaxy', 500, 750, 1500.75, 'solid', true, true);

INSERT INTO star VALUES
(1, 1, 1, 'Absolutno', 500, 750, 1500.75, 'solid', true, true),
(2, 2, 2, 'Acamar', 500, 750, 1500.75, 'solid', true, true),
(3, 3, 3, 'Avior', 500, 750, 1500.75, 'solid', true, true),
(4, 4, 4, 'Ceibo', 500, 750, 1500.75, 'solid', true, true),
(5, 5, 5, 'Chalawan', 500, 750, 1500.75, 'solid', true, true),
(6, 6, 6, '	Citala', 500, 750, 1500.75, 'solid', true, true);

INSERT INTO planet VALUES
(1,  1,  1, 'Mercury', 500, 750, 1500.75, 'solid', true, true),
(2,  2,  2, 'Venus', 500, 750, 1500.75, 'solid', true, true),
(3,  3,  3, 'Saturn', 500, 750, 1500.75, 'solid', true, true),
(4,  4,  4, 'Earth', 500, 750, 1500.75, 'solid', true, true),
(5,  5,  5, 'Neptune', 500, 750, 1500.75, 'solid', true, true),
(6,  6,  6, 'Uranus', 500, 750, 1500.75, 'solid', true, true),
(7,  6,  7, 'Jupiter', 500, 750, 1500.75, 'solid', true, true),
(8,  6,  8, 'Cerus', 500, 750, 1500.75, 'solid', true, true),
(9,  6,  9, 'Neptunes', 500, 750, 1500.75, 'solid', true, true),
(10, 6, 10, 'Pluto', 500, 750, 1500.75, 'solid', true, true),
(11, 6, 11, 'Charon', 500, 750, 1500.75, 'solid', true, true),
(12, 6, 12, 'Habibi', 500, 750, 1500.75, 'solid', true, true);

INSERT INTO moon VALUES 
(1,   1, 'Luna', 500, 750, 1500.75, 'solid', true, true),
(2,   2, 'Phobos', 500, 750, 1500.75, 'solid', true, true),
(3,   3, 'Exmos', 500, 750, 1500.75, 'solid', true, true),
(4,   4, 'Phileba', 500, 750, 1500.75, 'solid', true, true),
(5,   5, 'Guremo', 500, 750, 1500.75, 'solid', true, true),
(6,   6, 'rosal', 500, 750, 1500.75, 'solid', true, true),
(7,   7, 'Maliv', 500, 750, 1500.75, 'solid', true, true),
(8,   8, 'Haber', 500, 750, 1500.75, 'solid', true, true),
(9,   9, 'Juno', 500, 750, 1500.75, 'solid', true, true),
(10, 10, 'Exceri', 500, 750, 1500.75, 'solid', true, true),
(11, 11, 'Plamo', 500, 750, 1500.75, 'solid', true, true),
(12, 11, 'Cruo', 500, 750, 1500.75, 'solid', true, true),
(13, 11, 'Mera', 500, 750, 1500.75, 'solid', true, true),
(14, 11, 'Zilo', 500, 750, 1500.75, 'solid', true, true),
(15, 11, 'Juzo', 500, 750, 1500.75, 'solid', true, true),
(16, 11, 'Koala 343', 500, 750, 1500.75, 'solid', true, true),
(17, 11, 'verusa12', 500, 750, 1500.75, 'solid', true, true),
(18, 11, 'moon xbxw1', 500, 750, 1500.75, 'solid', true, true),
(19, 11, 'moonCGQL', 500, 750, 1500.75, 'solid', true, true),
(20, 11, 'moon OPsd', 500, 750, 1500.75, 'solid', true, true);

INSERT INTO more_info VALUES
(1, 1, 'info1', 'its a moon'),
(2, 2, 'info2', 'its aplanet'),
(3, 3, 'info3', 'its a galaxy'),
(4, 4, 'info4', 'ots a star'),
(5, 5, 'info5', 'its a blak hole');


ALTER TABLE galaxy ADD PRIMARY KEY(galaxy_id);
ALTER TABLE star ADD PRIMARY KEY(star_id);
ALTER TABLE planet ADD PRIMARY KEY(planet_id);
ALTER TABLE moon ADD PRIMARY KEY(moon_id);
ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);

ALTER TABLE galaxy ADD FOREIGN KEY (star_id) REFERENCES star(star_id);
ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);
ALTER TABLE star ADD FOREIGN KEY (planet_id) REFERENCES planet(planet_id);
ALTER TABLE planet ADD FOREIGN KEY (star_id) REFERENCES star(star_id);
ALTER TABLE planet ADD FOREIGN KEY (moon_id) REFERENCES moon(moon_id);
ALTER TABLE moon ADD FOREIGN KEY (planet_id) REFERENCES planet(planet_id);
