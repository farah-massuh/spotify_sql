DROP TABLE IF EXISTS spotify;

CREATE TABLE spotify
(
    artist           VARCHAR(255),
    track            VARCHAR(255),
    album            VARCHAR(255),
    album_type       VARCHAR(50),
    danceablity      FLOAT,
    energy           FLOAT,
    loudness         FLOAT,
    speechiness      FLOAT,
    acousticness     FLOAT,
    instrumentalness FLOAT,
    liveness         FLOAT,
    valence          FLOAT,
    tempo            FLOAT,
    duration_min     FLOAT,
    title            VARCHAR(255),
    channel          VARCHAR(255),
    views            FLOAT,
    likes            BIGINT,
    comments         BIGINT,
    licensed         BOOLEAN,
    official_video   BOOLEAN,
    stream           BIGINT,
    energy_liveness  FLOAT,
    most_played_on   VARCHAR(50)
);
ALTER TABLE spotify
ALTER COLUMN likes TYPE FLOAT;
ALTER TABLE spotify
ALTER COLUMN comments TYPE FLOAT;
ALTER TABLE spotify
ALTER COLUMN stream TYPE FLOAT;