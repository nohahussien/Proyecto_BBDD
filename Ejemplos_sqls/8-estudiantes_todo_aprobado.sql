SELECT e.nombre
FROM estudiante e
JOIN estudiantepromocion ep ON e.idestudiante = ep.idestudiante
JOIN proyectosporpromocion pp ON ep.idpromocion = pp.idpromocion
LEFT JOIN calificacionproyectoalumno ca
       ON ca.idestudiante = e.idestudiante
      AND ca.idproyecto  = pp.idproyecto
GROUP BY e.nombre
HAVING COUNT(pp.idproyecto) = 
       SUM(CASE WHEN ca.calificacion = 'A' THEN 1 ELSE 0 END);