SELECT 
FORMAT(MIN(p.value), 2) AS faturamento_minimo,
FORMAT(MAX(p.value), 2) AS faturamento_maximo,
FORMAT(AVG(p.value), 2) AS faturamento_medio,
FORMAT(SUM(p.value), 2) AS faturamento_total
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON u.plan_id = p.id;