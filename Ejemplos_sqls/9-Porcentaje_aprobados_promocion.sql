SELECT c.ciudad, v.nombre, p."fechaComienzo",
       ROUND(
           (SUM(CASE WHEN ca.calificacion = 'A' THEN 1 ELSE 0 END)::decimal /
            COUNT(*)) * 100, 2
       ) AS porcentaje_aprobados
FROM estudiantepromocion ep
INNER JOIN calificacionproyectoalumno ca ON ep.idestudiante = ca.idestudiante
INNER JOIN promocion p on p.idpromocion = ep.idpromocion
INNER JOIN vertical v ON v.idvertical = p.idvertical
INNER JOIN campus c ON c.idcampus = p.idcampus
GROUP BY c.ciudad, v.nombre, p."fechaComienzo"
ORDER BY porcentaje_aprobados DESC;