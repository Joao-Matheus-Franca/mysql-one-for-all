SELECT COUNT(DISTINCT s.title) AS cancoes, COUNT(DISTINCT a.artist_id) AS artistas, COUNT(DISTINCT a.name) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albuns AS a
ON s.album_id = a.id;