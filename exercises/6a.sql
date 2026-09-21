-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)

WITH all_artists AS (
SELECT id, name
FROM artists
)
SELECT
    aa.name as artist_name,
    COUNT(*) as count_albums
FROM all_artists aa
JOIN albums al ON al.artist_id = aa.id
GROUP BY aa.name
ORDER BY aa.id;

