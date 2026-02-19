USE games_systems;

-- 1. Listar todos os jogos
SELECT * 
FROM games AS g;

-- 2. Contar quantos jogos existem na base de dados
SELECT COUNT(*)
FROM games AS g;

-- 3. Calcular o preço médio de todos os jogos
SELECT AVG(g.preco) AS valor_medio
FROM games AS g;

-- 4. Encontrar o jogo mais caro
SELECT *
FROM games AS g
ORDER BY g.preco DESC
LIMIT 1;

-- 5. Encontrar o jogo com a menor nota de avaliação
SELECT *
FROM games AS g
ORDER BY g.preco ASC
LIMIT 5;

-- 6. Listar os 5 jogos mais vendidos
SELECT *
FROM games AS g
ORDER BY g.copias_vendidas ASC
LIMIT 5;

-- 7. Contar quantos jogos existem por plataforma
SELECT g.plataforma, COUNT(*) AS jogos_plataforma
FROM games AS g
GROUP BY g.plataforma;

-- 8. Calcular a soma total de cópias vendidas de todos os jogos
SELECT SUM(g.copias_vendidas) AS total_copias_vendidas
FROM games AS g;

-- 9. Calcular o preço médio dos jogos por género, ordenado do mais caro para o mais barato
SELECT g.genero, AVG(g.preco) AS preco_medio
FROM games AS g
GROUP BY g.genero
ORDER BY preco_medio DESC;


-- 10. Listar as plataformas que têm mais de 2 jogos cadastrados
SELECT g.plataforma, COUNT(*) AS total_jogos
FROM games AS g
GROUP BY g.plataforma
HAVING total_jogos > 2;