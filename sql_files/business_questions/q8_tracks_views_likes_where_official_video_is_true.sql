/*----------
Q8. List all tracks along with their views and likes where official_video = TRUE.
------------*/
SELECT
    track,
    SUM(views) total_views,
    SUM(likes) total_likes
FROM spotify
WHERE official_video = TRUE
GROUP BY 1;