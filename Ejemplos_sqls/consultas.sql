-- Obtener el total de los alumnos por campus
SELECT campus.ciudad, COUNT(estudiante.idestudiante) FROM estudiante
INNER JOIN estudiantepromocion ON estudiantepromocion.idestudiante = estudiante.idestudiante
INNER JOIN promocion ON promocion.idpromocion = estudiantepromocion.idpromocion
INNER JOIN campus ON campus.idcampus = promocion.idcampus
GROUP BY campus.ciudad


-- Ver los estudiantes que aprobaron el proyecto de FrontEnd
SELECT estudiante.nombre, proyecto.nombre, calificacionproyectoalumno.calificacion 
FROM estudiante
INNER JOIN calificacionproyectoalumno ON calificacionproyectoalumno.idestudiante = estudiante.idestudiante
INNER JOIN proyecto ON calificacionproyectoalumno.idproyecto = proyecto.idproyecto
WHERE proyecto.nombre = 'Proyecto_FrontEnd' AND calificacionproyectoalumno.calificacion = 'A'

-- Ver los docentes que imparten en Madrid
SELECT docente.nombre, campus.ciudad
from docente
INNER JOIN docentepromocion ON docente.docente_id = docentepromocion.iddocente
INNER JOIN promocion ON docentepromocion.idpromocion = promocion.idpromocion
INNER JOIN campus ON promocion.idcampus = campus.idcampus
WHERE campus.ciudad = 'Madrid'

-- Cuantas personas tienen algun suspenso en cada vertical
select vertical.nombre, count(calificacionproyectoalumno.idestudiante)
from vertical
INNER JOIN promocion ON promocion.idvertical = vertical.idvertical
INNER JOIN proyectosporpromocion ON proyectosporpromocion.idpromocion = promocion.idpromocion
INNER JOIN proyecto ON proyecto.idproyecto = proyectosporpromocion.idproyecto
INNER JOIN calificacionproyectoalumno ON calificacionproyectoalumno.idproyecto = proyecto.idproyecto
WHERE calificacionproyectoalumno.calificacion = 'N'
Group BY vertical.nombre

