SELECT u.name AS usuario,
IF (MAX(YEAR(h.date)) > 2020, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.id
GROUP BY u.name
ORDER BY u.name;