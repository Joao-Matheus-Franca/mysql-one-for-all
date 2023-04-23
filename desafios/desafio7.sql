SELECT a.name AS artista, ab.name AS album, COUNT(f.user_id) AS seguidores
FROM SpotifyClone.follow AS f
INNER JOIN SpotifyClone.artists AS a
ON f.artist_id = a.id
INNER JOIN SpotifyClone.albuns AS ab
ON ab.artist_id = a.id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;