SELECT p.idpromocion,
       c.ciudad AS campus,
       v.nombre AS vertical,
       p."fechaComienzo"
FROM promocion p
JOIN campus c ON p.idcampus = c.idcampus
JOIN vertical v ON p.idvertical = v.idvertical
ORDER BY p.idpromocion;