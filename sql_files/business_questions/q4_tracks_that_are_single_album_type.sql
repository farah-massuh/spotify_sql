/*----------
Q4. Find all tracks that belong to the album type single.
------------*/
SELECT
    track
FROM spotify
WHERE album_type = 'single';