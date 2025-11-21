SELECT c.ciudad AS campus,
       v.nombre AS vertical,
	   e.nombre AS estudiante,
       p."fechaComienzo"
FROM estudiante e
JOIN estudiantepromocion ep ON e.idestudiante = ep.idestudiante
JOIN promocion p ON p.idpromocion = ep.idpromocion
JOIN campus c ON p.idcampus = c.idcampus
JOIN vertical v ON p.idvertical = v.idvertical
ORDER BY c.ciudad, v.nombre, p."fechaComienzo", e.nombre;