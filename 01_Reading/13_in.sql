-- Consulta 1:
-- SELECT * FROM users WHERE name IN ('sabrina');
-- Busca todos los usuarios cuyo nombre es exactamente sabrina.
-- IN permite comparar un valor con una lista de opciones.
SELECT * FROM users WHERE name IN ('sabrina');

-- Consulta 2:
-- SELECT * FROM users WHERE name IN ('sabrina','alex');
-- Busca usuarios cuyo nombre sea sabrina o alex.
-- Es una forma más corta de escribir varias comparaciones con OR.
SELECT * FROM users WHERE name IN ('sabrina','alex');

