-- Consulta 1:
-- SELECT COUNT(*) FROM users;
-- Cuenta el total de filas de la tabla users.
-- El asterisco cuenta todos los registros sin importar el contenido.
SELECT COUNT(*) FROM users;

-- Consulta 2:
-- SELECT COUNT(age) FROM users;
-- Cuenta cuántos registros tienen un valor en la columna age.
-- Los valores NULL no se cuentan en COUNT(columna).
SELECT COUNT(age) FROM users;

