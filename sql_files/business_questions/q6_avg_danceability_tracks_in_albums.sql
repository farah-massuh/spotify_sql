/*----------
Q6. Calculate the average danceability of tracks in each album.
------------*/
SELECT
    album,
    ROUND(AVG(danceablity)::NUMERIC, 2) avg_danceability
FROM spotify
GROUP BY 1
ORDER BY 2 DESC;