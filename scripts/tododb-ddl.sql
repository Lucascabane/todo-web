--TAREA--

CREATE TABLE `tarea` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `descripcion` varchar(200) NOT NULL,
 `fecha_limite` date DEFAULT NULL,
 `persona_id` int(11) NOT NULL,
 `realizada` tinyint(1) NOT NULL,
 `fecha_realizada` date NOT NULL,
 PRIMARY KEY (`id`),
 KEY `persona_id` (`persona_id`),
 CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

--PERSONA--

CREATE TABLE `persona` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `alias` varchar(25) NOT NULL,
 `nombre` varchar(25) NOT NULL,
 `apellido` varchar(25) DEFAULT NULL,
 `email` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1
