SELECT a.name AS artista, ab.name AS album
FROM SpotifyClone.albuns AS ab
INNER JOIN SpotifyClone.artists AS a
ON ab.artist_id = a.id
WHERE a.name = 'Elis Regina'
ORDER BY album;