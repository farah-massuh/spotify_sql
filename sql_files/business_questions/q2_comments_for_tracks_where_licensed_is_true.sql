/*----------
Q2. Get the total number of comments for tracks where licensed = TRUE
------------*/
SELECT
    SUM(comments) num_comments_with_licensed_being_true
FROM spotify
WHERE licensed = TRUE;