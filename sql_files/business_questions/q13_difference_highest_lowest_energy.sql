/*----------
Q13. Calculate the difference between the
     highest and lowest energy values for tracks in each album.
------------*/
WITH album_max_low_energies AS (
    SELECT
        album,
        MAX(energy) highest_energy,
        MIN(energy) lowest_energy
    FROM spotify
    GROUP BY 1
)
SELECT
    album,
    highest_energy - lowest_energy energy_diff
FROM album_max_low_energies
ORDER BY 2 DESC;