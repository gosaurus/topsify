-- How many tracks are longer than 5 minutes?
SELECT COUNT(*)
FROM tracks
WHERE ROUND((duration_ms/1000), 1) > 300;
