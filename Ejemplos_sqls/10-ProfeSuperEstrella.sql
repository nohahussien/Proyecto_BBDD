SELECT d.nombre AS docente, COUNT(dp.idpromocion) AS total_promociones
FROM docente d
JOIN docentepromocion dp ON d.docente_id = dp.iddocente
GROUP BY d.nombre
ORDER BY total_promociones DESC;