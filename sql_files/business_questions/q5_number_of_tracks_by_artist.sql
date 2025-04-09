/*----------
Q5. Count the total number of tracks by each artist.
------------*/
SELECT
    artist,
    COUNT(track) total_tracks
FROM spotify
GROUP BY 1
ORDER BY 2 DESC;