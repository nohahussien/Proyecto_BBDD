SELECT v.nombre, c.ciudad, p."fechaComienzo",
       pr.nombre AS proyecto
FROM proyectosporpromocion pz
INNER JOIN proyecto pr ON pr.idproyecto = pz.idproyecto
INNER JOIN promocion p on p.idpromocion = pz.idpromocion
INNER JOIN vertical v ON v.idvertical = pr.idvertical
INNER JOIN campus c ON c.idcampus = p.idcampus
ORDER BY pz.idpromocion, pr.nombre;