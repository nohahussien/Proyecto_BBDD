SELECT e.nombre AS estudiante,
       pr.nombre AS proyecto,
       ca.calificacion
FROM calificacionproyectoalumno ca
JOIN estudiante e ON ca.idestudiante = e.idestudiante
JOIN proyecto pr ON ca.idproyecto = pr.idproyecto
ORDER BY estudiante, proyecto;






SELECT 
    e.nombre AS estudiante,

	COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_HLF'         THEN ca.calificacion END), '') AS HundirLaFlota,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_EDA'         THEN ca.calificacion END), '') AS eda,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_BBDD'        THEN ca.calificacion END), '') AS bbdd,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_ML'          THEN ca.calificacion END), '') AS MachineLearning,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_Deployment'  THEN ca.calificacion END), '') AS deployment,

    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_WebDev'      THEN ca.calificacion END), '') AS Webdev,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_FrontEnd'    THEN ca.calificacion END), '') AS Frontend,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_Backend'     THEN ca.calificacion END), '') AS Backend,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_React'       THEN ca.calificacion END), '') AS React,
    COALESCE(MAX(CASE WHEN pr.nombre = 'Proyecto_FullSatck'   THEN ca.calificacion END), '') AS Fullstack

    
FROM calificacionproyectoalumno ca
INNER JOIN estudiante e ON ca.idestudiante = e.idestudiante
INNER JOIN proyecto pr ON ca.idproyecto = pr.idproyecto
INNER JOIN proyectosporpromocion pp on pp.idproyecto = pr.idproyecto
INNER JOIN promocion p on pp.idpromocion = p.idpromocion
INNER JOIN vertical v ON p.idvertical = v.idvertical
GROUP BY v.nombre, e.nombre
ORDER BY v.nombre, e.nombre;