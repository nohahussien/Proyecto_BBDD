SELECT p."fechaComienzo", v.nombre,
       COUNT(ep.idestudiante) AS numero_estudiantes
FROM estudiantepromocion ep
inner join promocion p on ep.idpromocion = p.idpromocion
inner join vertical v on v.idvertical = p.idvertical
GROUP BY p."fechaComienzo", v.nombre;