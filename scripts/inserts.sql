/**********************************************
                 TABLA ESTUDIANTE
*************************************************/

INSERT INTO public.estudiante (nombre, email) VALUES
('Jafet Casals', 'Jafet_Casals@gmail.com'),
('Jorge Manzanares', 'Jorge_Manzanares@gmail.com'),
('Onofre Adadia', 'Onofre_Adadia@gmail.com'),
('Merche Prada', 'Merche_Prada@gmail.com'),
('Pilar Abella', 'Pilar_Abella@gmail.com'),
('Leoncio Tena', 'Leoncio_Tena@gmail.com'),
('Odalys Torrijos', 'Odalys_Torrijos@gmail.com'),
('Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com'),
('Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com'),
('Clementina Santos', 'Clementina_Santos@gmail.com'),
('Daniela Falcó', 'Daniela_Falcó@gmail.com'),
('Abraham Vélez', 'Abraham_Vélez@gmail.com'),
('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com'),
('Anita Heredia', 'Anita_Heredia@gmail.com'),
('Eli Casas', 'Eli_Casas@gmail.com'),
('Guillermo Borrego', 'Guillermo_Borrego@gmail.com'),
('Sergio Aguirre', 'Sergio_Aguirre@gmail.com'),
('Carlito Carrión', 'Carlito_Carrión@gmail.com'),
('Haydée Figueroa', 'Haydée_Figueroa@gmail.com'),
('Chita Mancebo', 'Chita_Mancebo@gmail.com'),
('Joaquina Asensio', 'Joaquina_Asensio@gmail.com'),
('Cristian Sarabia', 'Cristian_Sarabia@gmail.com'),
('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com'),
('Desiderio Jordá', 'Desiderio_Jordá@gmail.com'),
('Rosalina Llanos', 'Rosalina_Llanos@gmail.com'),
('Amor Larrañaga', 'Amor_Larrañaga@gmail.com'),
('Teodoro Alberola', 'Teodoro_Alberola@gmail.com'),
('Cleto Plana', 'Cleto_Plana@gmail.com'),
('Aitana Sebastián', 'Aitana_Sebastián@gmail.com'),
('Dolores Valbuena', 'Dolores_Valbuena@gmail.com'),
('Julie Ferrer', 'Julie_Ferrer@gmail.com'),
('Mireia Cabañas', 'Mireia_Cabañas@gmail.com'),
('Flavia Amador', 'Flavia_Amador@gmail.com'),
('Albino Macias', 'Albino_Macias@gmail.com'),
('Ester Sánchez', 'Ester_Sánchez@gmail.com'),
('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com'),
('Loida Arellano', 'Loida_Arellano@gmail.com'),
('Heraclio Duque', 'Heraclio_Duque@gmail.com'),
('Herberto Figueras', 'Herberto_Figueras@gmail.com'),
('Teresa Laguna', 'Teresa_Laguna@gmail.com'),
('Estrella Murillo', 'Estrella_Murillo@gmail.com'),
('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com'),
('Daniela Guitart', 'Daniela_Guitart@gmail.com'),
('Timoteo Trillo', 'Timoteo_Trillo@gmail.com'),
('Ricarda Tovar', 'Ricarda_Tovar@gmail.com'),
('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com'),
('Daniel Rosselló', 'Daniel_Rosselló@gmail.com'),
('Rita Olivares', 'Rita_Olivares@gmail.com'),
('Cleto Montes', 'Cleto_Montes@gmail.com'),
('Marino Castilla', 'Marino_Castilla@gmail.com'),
('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com'),
('Noemí Vilanova', 'Noemí_Vilanova@gmail.com');

/**********************************************
                 TABLA CAMPUS
*************************************************/

INSERT INTO public.campus (ciudad) VALUES
('Madrid'),
('Valencia');

/**********************************************
                 TABLA VERTICAL
*************************************************/

INSERT INTO public.vertical (nombre) VALUES
('DS'),
('FS');

/**********************************************
                 TABLA DOCENTE
*************************************************/

INSERT INTO public.docente (nombre, rol) VALUES
('Noa Yáñez', 'TA'),
('Saturnina Benitez', 'TA'),
('Anna Feliu', 'TA'),
('Rosalva Ayuso', 'TA'),
('Ana Sofía Ferrer', 'TA'),
('Angélica Corral', 'TA'),
('Ariel Lledó', 'TA'),
('Mario Prats', 'LI'),
('Luis Ángel Suárez', 'LI'),
('María Dolores Diaz', 'LI');

/**********************************************
                 TABLA MODALIDAD
*************************************************/

INSERT INTO public.modalidad (nombremodalidad) VALUES
('Presencial'),
('Online');

/**********************************************
                 TABLA PROMOCION
*************************************************/

INSERT INTO public.promocion (idcampus, idvertical, "fechaComienzo") VALUES
-- Data Science - Septiembre 2023 - Madrid
(1, 1, '2023-09-18'),
-- Data Science - Febrero 2024 - Madrid
(1, 1, '2024-02-12'),
-- FullStack - Septiembre 2023 - Madrid
(1, 2, '2023-09-18'),
-- FullStack - Febrero 2024 - Valencia
(2, 2, '2024-02-12');

/**********************************************
        TABLA ESTDUIANTE-PROMOCION
*************************************************/

-- DS Septiembre 2023 (idpromocion = 1)
INSERT INTO public.estudiantepromocion (idestudiante, idpromocion) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),
(11,1),(12,1),(13,1),(14,1),(15,1);

-- DS Febrero 2024 (idpromocion = 2)
INSERT INTO public.estudiantepromocion (idestudiante, idpromocion) VALUES
(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2);

-- FS Septiembre 2023 (idpromocion = 3)
INSERT INTO public.estudiantepromocion (idestudiante, idpromocion) VALUES
(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),
(36,3),(37,3),(38,3),(39,3);

-- FS Febrero 2024 (idpromocion = 4)
INSERT INTO public.estudiantepromocion (idestudiante, idpromocion) VALUES
(40,4),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),
(50,4),(51,4),(52,4);

/**********************************************
                 TABLA PROYECTO
*************************************************/

-- Proyectos Data Science (idvertical = 1)
INSERT INTO public.proyecto (idvertical, nombre) VALUES
(1, 'Proyecto_HLF'),
(1, 'Proyecto_EDA'),
(1, 'Proyecto_BBDD'),
(1, 'Proyecto_ML'),
(1, 'Proyecto_Deployment');

-- Proyectos FullStack (idvertical = 2)
INSERT INTO public.proyecto (idvertical, nombre) VALUES
(2, 'Proyecto_WebDev'),
(2, 'Proyecto_FrontEnd'),
(2, 'Proyecto_Backend'),
(2, 'Proyecto_React'),
(2, 'Proyecto_FullSatck');

/**********************************************
        TABLA CALIFICACION-PROYECTO-ALUMNO
*************************************************/

-- DS Septiembre 2023
INSERT INTO public.calificacionproyectoalumno (idestudiante, idproyecto, calificacion) VALUES
(1,1,'A'),(1,2,'N'),(1,3,'A'),(1,4,'A'),(1,5,'A'),
(2,1,'A'),(2,2,'N'),(2,3,'A'),(2,4,'A'),(2,5,'A'),
(3,1,'A'),(3,2,'A'),(3,3,'A'),(3,4,'N'),(3,5,'A'),
(4,1,'A'),(4,2,'N'),(4,3,'N'),(4,4,'A'),(4,5,'N'),
(5,1,'A'),(5,2,'N'),(5,3,'A'),(5,4,'A'),(5,5,'A'),
(6,1,'A'),(6,2,'A'),(6,3,'A'),(6,4,'A'),(6,5,'A'),
(7,1,'N'),(7,2,'A'),(7,3,'A'),(7,4,'A'),(7,5,'A'),
(8,1,'N'),(8,2,'A'),(8,3,'A'),(8,4,'A'),(8,5,'A'),
(9,1,'A'),(9,2,'A'),(9,3,'A'),(9,4,'N'),(9,5,'A'),
(10,1,'A'),(10,2,'N'),(10,3,'A'),(10,4,'A'),(10,5,'A'),
(11,1,'A'),(11,2,'A'),(11,3,'A'),(11,4,'A'),(11,5,'A'),
(12,1,'A'),(12,2,'N'),(12,3,'N'),(12,4,'A'),(12,5,'A'),
(13,1,'A'),(13,2,'N'),(13,3,'A'),(13,4,'A'),(13,5,'A'),
(14,1,'A'),(14,2,'A'),(14,3,'A'),(14,4,'A'),(14,5,'A'),
(15,1,'A'),(15,2,'A'),(15,3,'A'),(15,4,'A'),(15,5,'A');

-- DS Febrero 2024
INSERT INTO public.calificacionproyectoalumno (idestudiante, idproyecto, calificacion) VALUES
(16,1,'A'),(16,2,'N'),(16,3,'N'),(16,4,'A'),(16,5,'N'),
(17,1,'A'),(17,2,'N'),(17,3,'A'),(17,4,'A'),(17,5,'N'),
(18,1,'A'),(18,2,'N'),(18,3,'A'),(18,4,'A'),(18,5,'A'),
(19,1,'A'),(19,2,'A'),(19,3,'A'),(19,4,'A'),(19,5,'A'),
(20,1,'N'),(20,2,'A'),(20,3,'N'),(20,4,'A'),(20,5,'A'),
(21,1,'N'),(21,2,'N'),(21,3,'A'),(21,4,'A'),(21,5,'A'),
(22,1,'A'),(22,2,'A'),(22,3,'N'),(22,4,'A'),(22,5,'A'),
(23,1,'N'),(23,2,'A'),(23,3,'N'),(23,4,'A'),(23,5,'A'),
(24,1,'N'),(24,2,'A'),(24,3,'N'),(24,4,'N'),(24,5,'A'),
(25,1,'A'),(25,2,'A'),(25,3,'A'),(25,4,'A'),(25,5,'A');

-- FS Septiembre 2023
INSERT INTO public.calificacionproyectoalumno (idestudiante, idproyecto, calificacion) VALUES
(26,6,'A'),(26,7,'A'),(26,8,'A'),(26,9,'A'),(26,10,'N'),
(27,6,'N'),(27,7,'N'),(27,8,'A'),(27,9,'N'),(27,10,'A'),
(28,6,'A'),(28,7,'N'),(28,8,'A'),(28,9,'N'),(28,10,'A'),
(29,6,'A'),(29,7,'N'),(29,8,'A'),(29,9,'N'),(29,10,'A'),
(30,6,'A'),(30,7,'A'),(30,8,'A'),(30,9,'A'),(30,10,'N'),
(31,6,'N'),(31,7,'N'),(31,8,'N'),(31,9,'A'),(31,10,'N'),
(32,6,'N'),(32,7,'A'),(32,8,'A'),(32,9,'A'),(32,10,'A'),
(33,6,'A'),(33,7,'A'),(33,8,'N'),(33,9,'A'),(33,10,'A'),
(34,6,'N'),(34,7,'A'),(34,8,'A'),(34,9,'A'),(34,10,'A'),
(35,6,'N'),(35,7,'A'),(35,8,'A'),(35,9,'N'),(35,10,'A'),
(36,6,'N'),(36,7,'A'),(36,8,'A'),(36,9,'A'),(36,10,'A'),
(37,6,'A'),(37,7,'A'),(37,8,'A'),(37,9,'A'),(37,10,'A'),
(38,6,'A'),(38,7,'A'),(38,8,'N'),(38,9,'N'),(38,10,'N'),
(39,6,'A'),(39,7,'A'),(39,8,'A'),(39,9,'A'),(39,10,'A');


-- FS Febrero 2024
INSERT INTO public.calificacionproyectoalumno (idestudiante, idproyecto, calificacion) VALUES
(40,6,'A'),(40,7,'A'),(40,8,'A'),(40,9,'A'),(40,10,'A'),
(41,6,'A'),(41,7,'A'),(41,8,'N'),(41,9,'A'),(41,10,'A'),
(42,6,'A'),(42,7,'A'),(42,8,'A'),(42,9,'A'),(42,10,'A'),
(43,6,'A'),(43,7,'N'),(43,8,'N'),(43,9,'A'),(43,10,'A'),
(44,6,'N'),(44,7,'A'),(44,8,'A'),(44,9,'A'),(44,10,'N'),
(45,6,'A'),(45,7,'A'),(45,8,'A'),(45,9,'A'),(45,10,'A'),
(46,6,'N'),(46,7,'N'),(46,8,'N'),(46,9,'A'),(46,10,'A'),
(47,6,'N'),(47,7,'N'),(47,8,'A'),(47,9,'N'),(47,10,'N'),
(48,6,'N'),(48,7,'N'),(48,8,'N'),(48,9,'A'),(48,10,'A'),
(49,6,'A'),(49,7,'A'),(49,8,'N'),(49,9,'N'),(49,10,'A'),
(50,6,'N'),(50,7,'N'),(50,8,'A'),(50,9,'N'),(50,10,'N'),
(51,6,'A'),(51,7,'A'),(51,8,'N'),(51,9,'N'),(51,10,'A'),
(52,6,'A'),(52,7,'N'),(52,8,'N'),(52,9,'A'),(52,10,'A');

/***************************************************************************
        TABLA DOCENTE-PROMOCION (Le hemos metido la modalidad también)
****************************************************************************/

-- DS Septiembre 2023
INSERT INTO public.docentepromocion (iddocente, idpromocion, idmodalidad) VALUES
(1, 1, 1),
(2, 1, 1),
(7, 1, 1);

-- FS Septiembre 2023
INSERT INTO public.docentepromocion (iddocente, idpromocion, idmodalidad) VALUES
(3, 3, 1),
(9, 3, 2);

-- FS Febrero 2024
INSERT INTO public.docentepromocion (iddocente, idpromocion, idmodalidad) VALUES
(4, 4, 1),
(5, 4, 1),
(8, 4, 2);

/**********************************************
        TABLA PROYECTOS - PROMOCION
*************************************************/

-- Promociones Data Science → proyectos 1–5
INSERT INTO public.proyectospromocion (idpromocion, idproyecto) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),
(2,1),(2,2),(2,3),(2,4),(2,5);

-- Promociones FullStack → proyectos 6–10
INSERT INTO public.proyectospromocion (idpromocion, idproyecto) VALUES
(3,6),(3,7),(3,8),(3,9),(3,10),
(4,6),(4,7),(4,8),(4,9),(4,10);