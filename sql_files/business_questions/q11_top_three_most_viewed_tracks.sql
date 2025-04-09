/*----------
Q11. Find the top 3 most-viewed tracks for each artist
------------*/
WITH artist_ranking AS (
    SELECT
        artist,
        track,
        SUM(views) total_views,
        DENSE_RANK() OVER(PARTITION BY artist ORDER BY SUM(views) DESC) rank
    FROM spotify
    GROUP BY 1, 2
    ORDER BY 1, 3 DESC
)
SELECT *
FROM artist_ranking
WHERE rank <= 3;