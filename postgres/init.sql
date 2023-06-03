CREATE TABLE person (
    person_id        INTEGER,
    name             VARCHAR NOT NULL,
    year             SMALLINT,
    comment          VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE TABLE band (
    band_id          INTEGER,
    name             VARCHAR NOT NULL,
    year             SMALLINT,
    comment          VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE TABLE band_person
(
    band_id    INTEGER,
    person_id  INTEGER
);

CREATE TABLE album
(
    album_id  INTEGER,
    name      VARCHAR,
    band_id   INTEGER,
    year      SMALLINT
);

CREATE TABLE music_instrument(
    id            INTEGER,
    parent_id     INTEGER,
    name          VARCHAR,
    type          INTEGER
);

CREATE TABLE list1(
  id INTEGER
);

CREATE TABLE mytable_int(
    a INTEGER,
    b INTEGER
);

CREATE TABLE mytable_str(
    str_a VARCHAR,
    str_b VARCHAR
);


CREATE TABLE band_extended (
    band_id   INTEGER,
    name      VARCHAR NOT NULL,
    year      SMALLINT,
    comment   VARCHAR(255) NOT NULL DEFAULT '',
    n_albums  INTEGER,
    n_songs   INTEGER
);

CREATE TABLE album_archive
(
    album_id INTEGER,
    name     VARCHAR,
    band_id  INTEGER,
    year     SMALLINT
);

CREATE TABLE band_old (
    band_id      INTEGER,
    name         VARCHAR NOT NULL,
    year         SMALLINT,
    comment      VARCHAR(255) NOT NULL DEFAULT ''
);

CREATE TABLE calendar_year(
  year INTEGER
);

CREATE TABLE album_small
(
    album_id INTEGER,
    name     VARCHAR,
    band_id  INTEGER,
    year     SMALLINT
);

CREATE TABLE band_small (
    band_id   INTEGER,
    name      VARCHAR NOT NULL,
    year      SMALLINT,
    comment   VARCHAR(255) NOT NULL DEFAULT ''
);

copy  album            from '/tmp/musicdatabase/album.txt';
copy  album_archive    from '/tmp/musicdatabase/album_archive.txt';
copy  album_small      from '/tmp/musicdatabase/album_small.txt';
copy  band             from '/tmp/musicdatabase/band.txt';
copy  band_extended    from '/tmp/musicdatabase/band_extended.txt';
copy  band_old         from '/tmp/musicdatabase/band_old.txt';
copy  band_person      from '/tmp/musicdatabase/band_person.txt';
copy  band_small       from '/tmp/musicdatabase/band_small.txt';
copy  calendar_year    from '/tmp/musicdatabase/calendar_year.txt';
copy  list1            from '/tmp/musicdatabase/list1.txt';
copy  music_instrument from '/tmp/musicdatabase/music_instrument.txt';
copy  mytable_int      from '/tmp/musicdatabase/mytable_int.txt';
copy  mytable_str      from '/tmp/musicdatabase/mytable_str.txt';
copy  person           from '/tmp/musicdatabase/person.txt';

/*
drop table  album;
drop table  album_archive;
drop table  album_small;
drop table  band;
drop table  band_extended;
drop table  band_old;
drop table  band_person;
drop table  band_small;
drop table  calendar_year;
drop table  list1;
drop table  music_instrument;
drop table  mytable_int;
drop table  mytable_str;
drop table  person;
*/
