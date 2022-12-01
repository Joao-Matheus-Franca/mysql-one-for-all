SELECT u.name AS usuario, COUNT(s.title) AS qt_de_musicas_ouvidas, ROUND(SUM(s.length / 60), 2) AS total_minutos
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.id
INNER JOIN SpotifyClone.songs AS s
ON h.song_id = s.id
GROUP BY u.name
ORDER BY u.name;