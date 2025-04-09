/*----------
Q3. List all albums along with their respective artists.
------------*/
SELECT
    album,
    artist
FROM spotify
GROUP BY 1, 2;