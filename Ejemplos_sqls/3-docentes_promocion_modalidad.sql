SELECT dp.idpromocion,
       d.nombre AS docente,
       dp."rolDocente",
       m.nombremodalidad AS modalidad
FROM docentepromocion dp
JOIN docente d ON dp.iddocente = d.docente_id
JOIN modalidad m ON dp.idmodalidad = m.idmodalidad
ORDER BY dp.idpromocion, docente;