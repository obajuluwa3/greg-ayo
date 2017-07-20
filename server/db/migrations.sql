--run this file with psql -a -f db/migrations.sql

CREATE DATABASE thebirds2;

\c thebirds2;

CREATE TABLE birds (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	color VARCHAR(255),
	location VARCHAR(255),
	picture VARCHAR(255)
);

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255),
	password VARCHAR(255)
);

INSERT INTO birds (name, color, location, picture) VALUES ('Cardinal', 'red', 'Janets Yard', 'https://upload.wikimedia.org/wikipedia/commons/d/da/Cardinal.jpg');
INSERT INTO birds (name, color, location, picture) VALUES ('Blue Jay', 'blue', 'Grocery Store Parking Lot', 'http://d2fbmjy3x0sdua.cloudfront.net/cdn/farfuture/A484QzUsyNmjoGhtMlsbYQ-qlso4HqMlWAVLaVWU_mY/mtime:1422550093/sites/default/files/Blue_Jay_b57-4-030_l_1.jpg');

INSERT INTO users (username, password) VALUES ('Ayo', 'soccer123');
INSERT INTO users (username, password) VALUES ('Greg', 'football123');
