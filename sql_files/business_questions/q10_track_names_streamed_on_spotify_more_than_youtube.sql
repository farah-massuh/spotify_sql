/*----------
Q10. Retrieve the track names that have been streamed on Spotify more than Youtube.
------------*/
WITH tracks_played_count AS (
        SELECT
            track,
            COALESCE(SUM(CASE WHEN most_played_on = 'Spotify' THEN stream END), 0) spotify_count,
            COALESCE(SUM(CASE WHEN most_played_on = 'YouTube' THEN stream END), 0) youtube_count 
        FROM spotify
        GROUP BY 1
)
SELECT
    track,
    spotify_count
FROM tracks_played_count
WHERE 
    spotify_count > youtube_count
