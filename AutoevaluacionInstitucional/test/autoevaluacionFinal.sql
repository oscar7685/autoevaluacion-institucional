/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : autoevaluacion

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-09-04 00:25:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrativo
-- ----------------------------
DROP TABLE IF EXISTS `administrativo`;
CREATE TABLE `administrativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_administrativo_fuente1` (`fuente_id`),
  KEY `fk_administrativo_programa1` (`programa_id`),
  KEY `fk_administrativo_persona1` (`persona_id`),
  CONSTRAINT `fk_administrativo_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_administrativo_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_administrativo_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrativo
-- ----------------------------
INSERT INTO `administrativo` VALUES ('1', '13Muestra-0', '3', '1', null);
INSERT INTO `administrativo` VALUES ('2', '13Muestra-1', '3', '1', null);
INSERT INTO `administrativo` VALUES ('3', '13Muestra-2', '3', '1', null);
INSERT INTO `administrativo` VALUES ('4', '13Muestra-3', '3', '1', null);
INSERT INTO `administrativo` VALUES ('5', '13Muestra-4', '3', '1', null);
INSERT INTO `administrativo` VALUES ('6', '13Muestra-5', '3', '1', null);
INSERT INTO `administrativo` VALUES ('7', '13Muestra-6', '3', '1', null);
INSERT INTO `administrativo` VALUES ('8', '13Muestra-7', '3', '1', null);
INSERT INTO `administrativo` VALUES ('9', '13Muestra-8', '3', '1', null);
INSERT INTO `administrativo` VALUES ('10', '13Muestra-9', '3', '1', null);
INSERT INTO `administrativo` VALUES ('11', '13Muestra-10', '3', '1', null);
INSERT INTO `administrativo` VALUES ('12', '13Muestra-11', '3', '1', null);
INSERT INTO `administrativo` VALUES ('13', '13Muestra-12', '3', '1', null);
INSERT INTO `administrativo` VALUES ('14', '13Muestra-13', '3', '1', null);

-- ----------------------------
-- Table structure for agenciagubernamental
-- ----------------------------
DROP TABLE IF EXISTS `agenciagubernamental`;
CREATE TABLE `agenciagubernamental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_agenciagubernamental_fuente1` (`fuente_id`),
  KEY `fk_agenciagubernamental_persona1` (`persona_id`),
  CONSTRAINT `fk_agenciagubernamental_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agenciagubernamental_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agenciagubernamental
-- ----------------------------

-- ----------------------------
-- Table structure for asignacionencuesta
-- ----------------------------
DROP TABLE IF EXISTS `asignacionencuesta`;
CREATE TABLE `asignacionencuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proceso_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_asignacionencuesta_proceso1` (`proceso_id`),
  KEY `fk_asignacionencuesta_fuente1` (`fuente_id`),
  KEY `fk_asignacionencuesta_encuesta1` (`encuesta_id`),
  CONSTRAINT `fk_asignacionencuesta_encuesta1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacionencuesta_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacionencuesta_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asignacionencuesta
-- ----------------------------

-- ----------------------------
-- Table structure for caracteristica
-- ----------------------------
DROP TABLE IF EXISTS `caracteristica`;
CREATE TABLE `caracteristica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `factor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_caracteristica_factor1` (`factor_id`),
  CONSTRAINT `fk_caracteristica_factor1` FOREIGN KEY (`factor_id`) REFERENCES `factor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caracteristica
-- ----------------------------
INSERT INTO `caracteristica` VALUES ('1', 'Coherencia y pertinencia de la Misión', '1');
INSERT INTO `caracteristica` VALUES ('2', 'Orientaciones y estrategias del Proyecto Institucional ', '1');
INSERT INTO `caracteristica` VALUES ('3', 'Formación integral y construcción de la comunidad académica en el Proyecto Institucional', '1');
INSERT INTO `caracteristica` VALUES ('4', 'Deberes y derechos de los estudiantes', '2');
INSERT INTO `caracteristica` VALUES ('5', 'Admisión y permanencia de estudiantes', '2');
INSERT INTO `caracteristica` VALUES ('6', 'Sistemas de estímulos y créditos para estudiantes', '2');
INSERT INTO `caracteristica` VALUES ('7', 'Deberes y derechos del profesorado', '3');
INSERT INTO `caracteristica` VALUES ('8', 'Planta profesoral', '3');
INSERT INTO `caracteristica` VALUES ('9', 'Carrera docente', '3');
INSERT INTO `caracteristica` VALUES ('10', 'Desarrollo profesoral', '3');
INSERT INTO `caracteristica` VALUES ('11', 'Interacción académica de los profesores', '3');
INSERT INTO `caracteristica` VALUES ('12', 'Políticas académicas', '4');
INSERT INTO `caracteristica` VALUES ('13', 'Pertinencia académica y relevancia social', '4');
INSERT INTO `caracteristica` VALUES ('14', 'Procesos de creación, modificación y extensión de programas académicos', '4');
INSERT INTO `caracteristica` VALUES ('15', 'Inserción de la institución en contextos académicos nacionales e internacionales', '5');
INSERT INTO `caracteristica` VALUES ('16', 'Relaciones externas de profesores y estudiantes', '5');
INSERT INTO `caracteristica` VALUES ('17', 'Formación para la investigación', '6');
INSERT INTO `caracteristica` VALUES ('18', 'Investigación', '6');
INSERT INTO `caracteristica` VALUES ('19', 'Institución y entorno', '7');
INSERT INTO `caracteristica` VALUES ('20', 'Graduados e institución', '7');
INSERT INTO `caracteristica` VALUES ('21', 'Sistemas  de autoevaluación', '8');
INSERT INTO `caracteristica` VALUES ('22', 'Sistemas  de información', '8');
INSERT INTO `caracteristica` VALUES ('23', 'Evaluación de directivas, profesores y personal administrativo', '8');
INSERT INTO `caracteristica` VALUES ('24', 'Estructura y  funcionamiento del Bienestar Institucional', '9');
INSERT INTO `caracteristica` VALUES ('25', 'Administración y gestión', '10');
INSERT INTO `caracteristica` VALUES ('26', 'Procesos de comunicación ', '10');
INSERT INTO `caracteristica` VALUES ('27', 'Capacidad de gestión  ', '10');
INSERT INTO `caracteristica` VALUES ('28', 'Recursos de apoyo académico', '11');
INSERT INTO `caracteristica` VALUES ('29', 'Infraestructura física', '11');
INSERT INTO `caracteristica` VALUES ('30', 'Recursos, presupuesto y gestión financiera', '12');

-- ----------------------------
-- Table structure for criterio
-- ----------------------------
DROP TABLE IF EXISTS `criterio`;
CREATE TABLE `criterio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of criterio
-- ----------------------------

-- ----------------------------
-- Table structure for descripcioncriterio
-- ----------------------------
DROP TABLE IF EXISTS `descripcioncriterio`;
CREATE TABLE `descripcioncriterio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `criterio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_descripcioncriterio_criterio1` (`criterio_id`),
  CONSTRAINT `fk_descripcioncriterio_criterio1` FOREIGN KEY (`criterio_id`) REFERENCES `criterio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of descripcioncriterio
-- ----------------------------

-- ----------------------------
-- Table structure for directorprograma
-- ----------------------------
DROP TABLE IF EXISTS `directorprograma`;
CREATE TABLE `directorprograma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_directorprograma_fuente1` (`fuente_id`),
  KEY `fk_directorprograma_programa1` (`programa_id`),
  KEY `fk_directorprograma_persona1` (`persona_id`),
  CONSTRAINT `fk_directorprograma_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_directorprograma_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_directorprograma_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of directorprograma
-- ----------------------------
INSERT INTO `directorprograma` VALUES ('1', '14Muestra-0', '4', '1');
INSERT INTO `directorprograma` VALUES ('2', '14Muestra-1', '4', '1');
INSERT INTO `directorprograma` VALUES ('3', '14Muestra-2', '4', '1');
INSERT INTO `directorprograma` VALUES ('4', '14Muestra-3', '4', '1');
INSERT INTO `directorprograma` VALUES ('5', '14Muestra-4', '4', '1');
INSERT INTO `directorprograma` VALUES ('6', '14Muestra-5', '4', '1');
INSERT INTO `directorprograma` VALUES ('7', '14Muestra-6', '4', '1');
INSERT INTO `directorprograma` VALUES ('8', '14Muestra-7', '4', '1');
INSERT INTO `directorprograma` VALUES ('9', '14Muestra-8', '4', '1');
INSERT INTO `directorprograma` VALUES ('10', '14Muestra-9', '4', '1');
INSERT INTO `directorprograma` VALUES ('11', '14Muestra-10', '4', '1');
INSERT INTO `directorprograma` VALUES ('12', '14Muestra-11', '4', '1');
INSERT INTO `directorprograma` VALUES ('13', '14Muestra-12', '4', '1');
INSERT INTO `directorprograma` VALUES ('14', '14Muestra-13', '4', '1');

-- ----------------------------
-- Table structure for docente
-- ----------------------------
DROP TABLE IF EXISTS `docente`;
CREATE TABLE `docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_docente_fuente1` (`fuente_id`),
  KEY `fk_docente_programa1` (`programa_id`),
  KEY `fk_docente_persona1` (`persona_id`),
  CONSTRAINT `fk_docente_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_docente_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_docente_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of docente
-- ----------------------------
INSERT INTO `docente` VALUES ('1', '--', '1220-0', '2', '20');
INSERT INTO `docente` VALUES ('2', '--', '1220-1', '2', '20');
INSERT INTO `docente` VALUES ('3', '--', '1220-2', '2', '20');
INSERT INTO `docente` VALUES ('4', '--', '1220-3', '2', '20');
INSERT INTO `docente` VALUES ('5', '--', '1220-4', '2', '20');
INSERT INTO `docente` VALUES ('6', '--', '1220-5', '2', '20');
INSERT INTO `docente` VALUES ('7', '--', '1221-0', '2', '21');
INSERT INTO `docente` VALUES ('8', '--', '1221-1', '2', '21');
INSERT INTO `docente` VALUES ('9', '--', '1221-2', '2', '21');
INSERT INTO `docente` VALUES ('10', '--', '1221-3', '2', '21');
INSERT INTO `docente` VALUES ('11', '--', '1221-4', '2', '21');
INSERT INTO `docente` VALUES ('12', '--', '1221-5', '2', '21');
INSERT INTO `docente` VALUES ('13', '--', '1239-0', '2', '39');
INSERT INTO `docente` VALUES ('14', '--', '1239-1', '2', '39');
INSERT INTO `docente` VALUES ('15', '--', '1239-2', '2', '39');
INSERT INTO `docente` VALUES ('16', '--', '1239-3', '2', '39');
INSERT INTO `docente` VALUES ('17', '--', '1239-4', '2', '39');
INSERT INTO `docente` VALUES ('18', '--', '1239-5', '2', '39');
INSERT INTO `docente` VALUES ('19', '--', '1241-0', '2', '41');
INSERT INTO `docente` VALUES ('20', '--', '1241-1', '2', '41');
INSERT INTO `docente` VALUES ('21', '--', '1241-2', '2', '41');
INSERT INTO `docente` VALUES ('22', '--', '1241-3', '2', '41');
INSERT INTO `docente` VALUES ('23', '--', '1241-4', '2', '41');
INSERT INTO `docente` VALUES ('24', '--', '1241-5', '2', '41');
INSERT INTO `docente` VALUES ('25', '--', '1243-0', '2', '43');
INSERT INTO `docente` VALUES ('26', '--', '1243-1', '2', '43');
INSERT INTO `docente` VALUES ('27', '--', '1243-2', '2', '43');
INSERT INTO `docente` VALUES ('28', '--', '1243-3', '2', '43');
INSERT INTO `docente` VALUES ('29', '--', '1243-4', '2', '43');
INSERT INTO `docente` VALUES ('30', '--', '1243-5', '2', '43');
INSERT INTO `docente` VALUES ('31', '--', '1247-0', '2', '47');
INSERT INTO `docente` VALUES ('32', '--', '1247-1', '2', '47');
INSERT INTO `docente` VALUES ('33', '--', '1247-2', '2', '47');
INSERT INTO `docente` VALUES ('34', '--', '1247-3', '2', '47');
INSERT INTO `docente` VALUES ('35', '--', '1247-4', '2', '47');
INSERT INTO `docente` VALUES ('36', '--', '1247-5', '2', '47');
INSERT INTO `docente` VALUES ('37', '--', '1251-0', '2', '51');
INSERT INTO `docente` VALUES ('38', '--', '1251-1', '2', '51');
INSERT INTO `docente` VALUES ('39', '--', '1251-2', '2', '51');
INSERT INTO `docente` VALUES ('40', '--', '1251-3', '2', '51');
INSERT INTO `docente` VALUES ('41', '--', '1251-4', '2', '51');
INSERT INTO `docente` VALUES ('42', '--', '1251-5', '2', '51');
INSERT INTO `docente` VALUES ('43', '--', '1252-0', '2', '52');
INSERT INTO `docente` VALUES ('44', '--', '1252-1', '2', '52');
INSERT INTO `docente` VALUES ('45', '--', '1252-2', '2', '52');
INSERT INTO `docente` VALUES ('46', '--', '1252-3', '2', '52');
INSERT INTO `docente` VALUES ('47', '--', '1252-4', '2', '52');
INSERT INTO `docente` VALUES ('48', '--', '1252-5', '2', '52');
INSERT INTO `docente` VALUES ('49', '--', '1253-0', '2', '53');
INSERT INTO `docente` VALUES ('50', '--', '1253-1', '2', '53');
INSERT INTO `docente` VALUES ('51', '--', '1253-2', '2', '53');
INSERT INTO `docente` VALUES ('52', '--', '1253-3', '2', '53');
INSERT INTO `docente` VALUES ('53', '--', '1253-4', '2', '53');
INSERT INTO `docente` VALUES ('54', '--', '1253-5', '2', '53');
INSERT INTO `docente` VALUES ('55', '--', '1254-0', '2', '54');
INSERT INTO `docente` VALUES ('56', '--', '1254-1', '2', '54');
INSERT INTO `docente` VALUES ('57', '--', '1254-2', '2', '54');
INSERT INTO `docente` VALUES ('58', '--', '1254-3', '2', '54');
INSERT INTO `docente` VALUES ('59', '--', '1254-4', '2', '54');
INSERT INTO `docente` VALUES ('60', '--', '1254-5', '2', '54');
INSERT INTO `docente` VALUES ('61', '--', '12170-0', '2', '170');
INSERT INTO `docente` VALUES ('62', '--', '12170-1', '2', '170');

-- ----------------------------
-- Table structure for egresado
-- ----------------------------
DROP TABLE IF EXISTS `egresado`;
CREATE TABLE `egresado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_egresado_fuente1` (`fuente_id`),
  KEY `fk_egresado_programa1` (`programa_id`),
  KEY `fk_egresado_persona1` (`persona_id`),
  CONSTRAINT `fk_egresado_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egresado_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egresado_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of egresado
-- ----------------------------
INSERT INTO `egresado` VALUES ('1', '15Muestra-0', '5', '1');

-- ----------------------------
-- Table structure for empleador
-- ----------------------------
DROP TABLE IF EXISTS `empleador`;
CREATE TABLE `empleador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `sectorempresarial` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleador_fuente1` (`fuente_id`),
  KEY `fk_empleador_persona1` (`persona_id`),
  CONSTRAINT `fk_empleador_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleador_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empleador
-- ----------------------------
INSERT INTO `empleador` VALUES ('1', null, '16Muestra-0', '6', '1');

-- ----------------------------
-- Table structure for encabezado
-- ----------------------------
DROP TABLE IF EXISTS `encabezado`;
CREATE TABLE `encabezado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `persona_id` varchar(25) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `comentario` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_encabezado_persona1` (`persona_id`),
  KEY `fk_encabezado_proceso1` (`proceso_id`),
  KEY `fk_encabezado_encuesta1` (`encuesta_id`),
  KEY `fk_encabezado_fuente1` (`fuente_id`),
  CONSTRAINT `fk_encabezado_encuesta1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_encabezado_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_encabezado_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_encabezado_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of encabezado
-- ----------------------------

-- ----------------------------
-- Table structure for encuesta
-- ----------------------------
DROP TABLE IF EXISTS `encuesta`;
CREATE TABLE `encuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `instrucciones` varchar(1000) DEFAULT NULL,
  `mensaje` varchar(500) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of encuesta
-- ----------------------------
INSERT INTO `encuesta` VALUES ('1', 'ENCUESTA PARA ESTUDIANTES', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus  objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional.', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-04-28 16:06:06');
INSERT INTO `encuesta` VALUES ('2', 'ENCUESTA PARA DOCENTES', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional. ', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-05-28 09:28:06');
INSERT INTO `encuesta` VALUES ('3', 'ENCUESTA PARA EGRESADOS', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional. ', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-07-17 16:48:12');
INSERT INTO `encuesta` VALUES ('4', 'ENCUESTA PARA ADMINISTRATIVOS', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional. ', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-07-24 10:43:29');
INSERT INTO `encuesta` VALUES ('5', 'ENCUESTA PARA DIRECTIVOS', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional.', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-07-24 11:26:13');
INSERT INTO `encuesta` VALUES ('6', 'ENCUESTA PARA EMPLEADORES', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional. ', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-07-24 11:37:29');
INSERT INTO `encuesta` VALUES ('7', 'ENCUESTA PARA AGENCIAS GUBERNAMENTALES', 'Recolectar información sobre la percepción que la comunidad universitaria tiene de los procesos académicos y administrativos desarrollados por la Institución para el logro de sus objetivos misionales, con el fin de adelantar el proceso de autoevaluación institucional. ', 'A continuación encontrará una serie de preguntas y afirmaciones. Con relacion a las preguntas responda afirmativamente o negativamente de acuerdo a su criterio y en los casos donde se presentan afirmaciones, valorelos según su grado de acuerdo con la siguiente escala de calificación:\r\n5 - Completamente de acuerdo\r\n4 - De acuerdo\r\n3 - Parcialmente de acuerdo\r\n2 - En desacuerdo\r\n1 - Completamente en desacuerdo\r\n0 - No sabe', 'mensaje', '2012-07-24 11:42:59');

-- ----------------------------
-- Table structure for encuestahaspregunta
-- ----------------------------
DROP TABLE IF EXISTS `encuestahaspregunta`;
CREATE TABLE `encuestahaspregunta` (
  `encuesta_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  PRIMARY KEY (`encuesta_id`,`pregunta_id`),
  KEY `fk_encuestahaspregunta_encuesta1` (`encuesta_id`),
  KEY `fk_encuestahaspregunta_pregunta1` (`pregunta_id`),
  CONSTRAINT `fk_encuestahaspregunta_encuesta1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_encuestahaspregunta_pregunta1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of encuestahaspregunta
-- ----------------------------
INSERT INTO `encuestahaspregunta` VALUES ('1', '1');
INSERT INTO `encuestahaspregunta` VALUES ('1', '4');
INSERT INTO `encuestahaspregunta` VALUES ('1', '5');
INSERT INTO `encuestahaspregunta` VALUES ('1', '6');
INSERT INTO `encuestahaspregunta` VALUES ('1', '7');
INSERT INTO `encuestahaspregunta` VALUES ('1', '8');
INSERT INTO `encuestahaspregunta` VALUES ('1', '9');
INSERT INTO `encuestahaspregunta` VALUES ('1', '10');
INSERT INTO `encuestahaspregunta` VALUES ('1', '11');
INSERT INTO `encuestahaspregunta` VALUES ('1', '19');
INSERT INTO `encuestahaspregunta` VALUES ('1', '23');
INSERT INTO `encuestahaspregunta` VALUES ('1', '24');
INSERT INTO `encuestahaspregunta` VALUES ('1', '30');
INSERT INTO `encuestahaspregunta` VALUES ('1', '31');
INSERT INTO `encuestahaspregunta` VALUES ('1', '35');
INSERT INTO `encuestahaspregunta` VALUES ('1', '38');
INSERT INTO `encuestahaspregunta` VALUES ('1', '39');
INSERT INTO `encuestahaspregunta` VALUES ('1', '41');
INSERT INTO `encuestahaspregunta` VALUES ('1', '42');
INSERT INTO `encuestahaspregunta` VALUES ('1', '43');
INSERT INTO `encuestahaspregunta` VALUES ('1', '44');
INSERT INTO `encuestahaspregunta` VALUES ('1', '45');
INSERT INTO `encuestahaspregunta` VALUES ('1', '46');
INSERT INTO `encuestahaspregunta` VALUES ('1', '51');
INSERT INTO `encuestahaspregunta` VALUES ('1', '55');
INSERT INTO `encuestahaspregunta` VALUES ('1', '59');
INSERT INTO `encuestahaspregunta` VALUES ('1', '60');
INSERT INTO `encuestahaspregunta` VALUES ('1', '61');
INSERT INTO `encuestahaspregunta` VALUES ('1', '63');
INSERT INTO `encuestahaspregunta` VALUES ('1', '64');
INSERT INTO `encuestahaspregunta` VALUES ('1', '65');
INSERT INTO `encuestahaspregunta` VALUES ('1', '72');
INSERT INTO `encuestahaspregunta` VALUES ('2', '1');
INSERT INTO `encuestahaspregunta` VALUES ('2', '2');
INSERT INTO `encuestahaspregunta` VALUES ('2', '4');
INSERT INTO `encuestahaspregunta` VALUES ('2', '9');
INSERT INTO `encuestahaspregunta` VALUES ('2', '12');
INSERT INTO `encuestahaspregunta` VALUES ('2', '13');
INSERT INTO `encuestahaspregunta` VALUES ('2', '14');
INSERT INTO `encuestahaspregunta` VALUES ('2', '15');
INSERT INTO `encuestahaspregunta` VALUES ('2', '16');
INSERT INTO `encuestahaspregunta` VALUES ('2', '17');
INSERT INTO `encuestahaspregunta` VALUES ('2', '18');
INSERT INTO `encuestahaspregunta` VALUES ('2', '19');
INSERT INTO `encuestahaspregunta` VALUES ('2', '24');
INSERT INTO `encuestahaspregunta` VALUES ('2', '25');
INSERT INTO `encuestahaspregunta` VALUES ('2', '30');
INSERT INTO `encuestahaspregunta` VALUES ('2', '31');
INSERT INTO `encuestahaspregunta` VALUES ('2', '35');
INSERT INTO `encuestahaspregunta` VALUES ('2', '36');
INSERT INTO `encuestahaspregunta` VALUES ('2', '37');
INSERT INTO `encuestahaspregunta` VALUES ('2', '38');
INSERT INTO `encuestahaspregunta` VALUES ('2', '39');
INSERT INTO `encuestahaspregunta` VALUES ('2', '41');
INSERT INTO `encuestahaspregunta` VALUES ('2', '42');
INSERT INTO `encuestahaspregunta` VALUES ('2', '43');
INSERT INTO `encuestahaspregunta` VALUES ('2', '45');
INSERT INTO `encuestahaspregunta` VALUES ('2', '46');
INSERT INTO `encuestahaspregunta` VALUES ('2', '50');
INSERT INTO `encuestahaspregunta` VALUES ('2', '51');
INSERT INTO `encuestahaspregunta` VALUES ('2', '55');
INSERT INTO `encuestahaspregunta` VALUES ('2', '59');
INSERT INTO `encuestahaspregunta` VALUES ('2', '60');
INSERT INTO `encuestahaspregunta` VALUES ('2', '62');
INSERT INTO `encuestahaspregunta` VALUES ('2', '63');
INSERT INTO `encuestahaspregunta` VALUES ('2', '64');
INSERT INTO `encuestahaspregunta` VALUES ('2', '65');
INSERT INTO `encuestahaspregunta` VALUES ('2', '72');
INSERT INTO `encuestahaspregunta` VALUES ('2', '73');
INSERT INTO `encuestahaspregunta` VALUES ('3', '19');
INSERT INTO `encuestahaspregunta` VALUES ('3', '21');
INSERT INTO `encuestahaspregunta` VALUES ('3', '22');
INSERT INTO `encuestahaspregunta` VALUES ('3', '33');
INSERT INTO `encuestahaspregunta` VALUES ('3', '34');
INSERT INTO `encuestahaspregunta` VALUES ('3', '42');
INSERT INTO `encuestahaspregunta` VALUES ('4', '1');
INSERT INTO `encuestahaspregunta` VALUES ('4', '2');
INSERT INTO `encuestahaspregunta` VALUES ('4', '35');
INSERT INTO `encuestahaspregunta` VALUES ('4', '36');
INSERT INTO `encuestahaspregunta` VALUES ('4', '38');
INSERT INTO `encuestahaspregunta` VALUES ('4', '39');
INSERT INTO `encuestahaspregunta` VALUES ('4', '40');
INSERT INTO `encuestahaspregunta` VALUES ('4', '43');
INSERT INTO `encuestahaspregunta` VALUES ('4', '50');
INSERT INTO `encuestahaspregunta` VALUES ('4', '64');
INSERT INTO `encuestahaspregunta` VALUES ('4', '65');
INSERT INTO `encuestahaspregunta` VALUES ('4', '72');
INSERT INTO `encuestahaspregunta` VALUES ('4', '73');
INSERT INTO `encuestahaspregunta` VALUES ('5', '1');
INSERT INTO `encuestahaspregunta` VALUES ('5', '2');
INSERT INTO `encuestahaspregunta` VALUES ('5', '3');
INSERT INTO `encuestahaspregunta` VALUES ('5', '12');
INSERT INTO `encuestahaspregunta` VALUES ('5', '35');
INSERT INTO `encuestahaspregunta` VALUES ('5', '36');
INSERT INTO `encuestahaspregunta` VALUES ('5', '39');
INSERT INTO `encuestahaspregunta` VALUES ('5', '43');
INSERT INTO `encuestahaspregunta` VALUES ('5', '65');
INSERT INTO `encuestahaspregunta` VALUES ('5', '73');
INSERT INTO `encuestahaspregunta` VALUES ('6', '20');
INSERT INTO `encuestahaspregunta` VALUES ('6', '22');
INSERT INTO `encuestahaspregunta` VALUES ('6', '32');

-- ----------------------------
-- Table structure for estudiante
-- ----------------------------
DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE `estudiante` (
  `id` varchar(25) NOT NULL,
  `semestre` varchar(45) NOT NULL,
  `periodo` varchar(45) NOT NULL,
  `anio` varchar(45) NOT NULL,
  `persona_id` varchar(25) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estudiante_fuente1` (`fuente_id`),
  KEY `fk_estudiante_programa1` (`programa_id`),
  KEY `fk_estudiante_persona1` (`persona_id`),
  CONSTRAINT `fk_estudiante_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estudiante
-- ----------------------------
INSERT INTO `estudiante` VALUES ('11101-0', '--', '--', '--', '11101-0', '1', '101');
INSERT INTO `estudiante` VALUES ('11101-1', '--', '--', '--', '11101-1', '1', '101');
INSERT INTO `estudiante` VALUES ('11101-2', '--', '--', '--', '11101-2', '1', '101');
INSERT INTO `estudiante` VALUES ('11103-0', '--', '--', '--', '11103-0', '1', '103');
INSERT INTO `estudiante` VALUES ('11103-1', '--', '--', '--', '11103-1', '1', '103');
INSERT INTO `estudiante` VALUES ('11103-2', '--', '--', '--', '11103-2', '1', '103');
INSERT INTO `estudiante` VALUES ('11109-0', '--', '--', '--', '11109-0', '1', '109');
INSERT INTO `estudiante` VALUES ('11109-1', '--', '--', '--', '11109-1', '1', '109');
INSERT INTO `estudiante` VALUES ('11109-2', '--', '--', '--', '11109-2', '1', '109');
INSERT INTO `estudiante` VALUES ('11121-0', '--', '--', '--', '11121-0', '1', '121');
INSERT INTO `estudiante` VALUES ('11121-1', '--', '--', '--', '11121-1', '1', '121');
INSERT INTO `estudiante` VALUES ('11121-2', '--', '--', '--', '11121-2', '1', '121');
INSERT INTO `estudiante` VALUES ('11123-0', '--', '--', '--', '11123-0', '1', '123');
INSERT INTO `estudiante` VALUES ('11123-1', '--', '--', '--', '11123-1', '1', '123');
INSERT INTO `estudiante` VALUES ('11123-2', '--', '--', '--', '11123-2', '1', '123');
INSERT INTO `estudiante` VALUES ('11125-0', '--', '--', '--', '11125-0', '1', '125');
INSERT INTO `estudiante` VALUES ('11125-1', '--', '--', '--', '11125-1', '1', '125');
INSERT INTO `estudiante` VALUES ('11125-2', '--', '--', '--', '11125-2', '1', '125');
INSERT INTO `estudiante` VALUES ('11129-0', '--', '--', '--', '11129-0', '1', '129');
INSERT INTO `estudiante` VALUES ('11129-1', '--', '--', '--', '11129-1', '1', '129');
INSERT INTO `estudiante` VALUES ('11129-2', '--', '--', '--', '11129-2', '1', '129');
INSERT INTO `estudiante` VALUES ('11135-0', '--', '--', '--', '11135-0', '1', '135');
INSERT INTO `estudiante` VALUES ('11135-1', '--', '--', '--', '11135-1', '1', '135');
INSERT INTO `estudiante` VALUES ('11135-2', '--', '--', '--', '11135-2', '1', '135');
INSERT INTO `estudiante` VALUES ('11136-0', '--', '--', '--', '11136-0', '1', '136');
INSERT INTO `estudiante` VALUES ('11136-1', '--', '--', '--', '11136-1', '1', '136');
INSERT INTO `estudiante` VALUES ('11136-2', '--', '--', '--', '11136-2', '1', '136');
INSERT INTO `estudiante` VALUES ('11140-0', '--', '--', '--', '11140-0', '1', '140');
INSERT INTO `estudiante` VALUES ('11140-1', '--', '--', '--', '11140-1', '1', '140');
INSERT INTO `estudiante` VALUES ('11140-2', '--', '--', '--', '11140-2', '1', '140');
INSERT INTO `estudiante` VALUES ('11145-0', '--', '--', '--', '11145-0', '1', '145');
INSERT INTO `estudiante` VALUES ('11145-1', '--', '--', '--', '11145-1', '1', '145');
INSERT INTO `estudiante` VALUES ('11145-2', '--', '--', '--', '11145-2', '1', '145');
INSERT INTO `estudiante` VALUES ('11147-0', '--', '--', '--', '11147-0', '1', '147');
INSERT INTO `estudiante` VALUES ('11147-1', '--', '--', '--', '11147-1', '1', '147');
INSERT INTO `estudiante` VALUES ('11147-2', '--', '--', '--', '11147-2', '1', '147');
INSERT INTO `estudiante` VALUES ('11148-0', '--', '--', '--', '11148-0', '1', '148');
INSERT INTO `estudiante` VALUES ('11148-1', '--', '--', '--', '11148-1', '1', '148');
INSERT INTO `estudiante` VALUES ('11148-2', '--', '--', '--', '11148-2', '1', '148');
INSERT INTO `estudiante` VALUES ('11150-0', '--', '--', '--', '11150-0', '1', '150');
INSERT INTO `estudiante` VALUES ('11150-1', '--', '--', '--', '11150-1', '1', '150');
INSERT INTO `estudiante` VALUES ('11150-2', '--', '--', '--', '11150-2', '1', '150');
INSERT INTO `estudiante` VALUES ('11154-0', '--', '--', '--', '11154-0', '1', '154');
INSERT INTO `estudiante` VALUES ('11154-1', '--', '--', '--', '11154-1', '1', '154');
INSERT INTO `estudiante` VALUES ('11154-2', '--', '--', '--', '11154-2', '1', '154');
INSERT INTO `estudiante` VALUES ('11168-0', '--', '--', '--', '11168-0', '1', '168');
INSERT INTO `estudiante` VALUES ('11168-1', '--', '--', '--', '11168-1', '1', '168');
INSERT INTO `estudiante` VALUES ('11168-2', '--', '--', '--', '11168-2', '1', '168');
INSERT INTO `estudiante` VALUES ('11170-0', '--', '--', '--', '11170-0', '1', '170');
INSERT INTO `estudiante` VALUES ('11170-1', '--', '--', '--', '11170-1', '1', '170');
INSERT INTO `estudiante` VALUES ('11170-2', '--', '--', '--', '11170-2', '1', '170');
INSERT INTO `estudiante` VALUES ('11171-0', '--', '--', '--', '11171-0', '1', '171');
INSERT INTO `estudiante` VALUES ('11171-1', '--', '--', '--', '11171-1', '1', '171');
INSERT INTO `estudiante` VALUES ('11171-2', '--', '--', '--', '11171-2', '1', '171');
INSERT INTO `estudiante` VALUES ('11174-0', '--', '--', '--', '11174-0', '1', '174');
INSERT INTO `estudiante` VALUES ('11174-1', '--', '--', '--', '11174-1', '1', '174');
INSERT INTO `estudiante` VALUES ('11174-2', '--', '--', '--', '11174-2', '1', '174');
INSERT INTO `estudiante` VALUES ('11176-0', '--', '--', '--', '11176-0', '1', '176');
INSERT INTO `estudiante` VALUES ('11176-1', '--', '--', '--', '11176-1', '1', '176');
INSERT INTO `estudiante` VALUES ('11176-2', '--', '--', '--', '11176-2', '1', '176');
INSERT INTO `estudiante` VALUES ('11179-0', '--', '--', '--', '11179-0', '1', '179');
INSERT INTO `estudiante` VALUES ('11179-1', '--', '--', '--', '11179-1', '1', '179');
INSERT INTO `estudiante` VALUES ('11179-2', '--', '--', '--', '11179-2', '1', '179');
INSERT INTO `estudiante` VALUES ('11185-0', '--', '--', '--', '11185-0', '1', '185');
INSERT INTO `estudiante` VALUES ('11185-1', '--', '--', '--', '11185-1', '1', '185');
INSERT INTO `estudiante` VALUES ('11185-2', '--', '--', '--', '11185-2', '1', '185');
INSERT INTO `estudiante` VALUES ('1120-0', '--', '--', '--', '1120-0', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-1', '--', '--', '--', '1120-1', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-2', '--', '--', '--', '1120-2', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-3', '--', '--', '--', '1120-3', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-4', '--', '--', '--', '1120-4', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-5', '--', '--', '--', '1120-5', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-6', '--', '--', '--', '1120-6', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-7', '--', '--', '--', '1120-7', '1', '20');
INSERT INTO `estudiante` VALUES ('1120-8', '--', '--', '--', '1120-8', '1', '20');
INSERT INTO `estudiante` VALUES ('1121-0', '--', '--', '--', '1121-0', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-1', '--', '--', '--', '1121-1', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-2', '--', '--', '--', '1121-2', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-3', '--', '--', '--', '1121-3', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-4', '--', '--', '--', '1121-4', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-5', '--', '--', '--', '1121-5', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-6', '--', '--', '--', '1121-6', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-7', '--', '--', '--', '1121-7', '1', '21');
INSERT INTO `estudiante` VALUES ('1121-8', '--', '--', '--', '1121-8', '1', '21');
INSERT INTO `estudiante` VALUES ('11229-0', '--', '--', '--', '11229-0', '1', '229');
INSERT INTO `estudiante` VALUES ('11229-1', '--', '--', '--', '11229-1', '1', '229');
INSERT INTO `estudiante` VALUES ('11229-2', '--', '--', '--', '11229-2', '1', '229');
INSERT INTO `estudiante` VALUES ('11263-0', '--', '--', '--', '11263-0', '1', '263');
INSERT INTO `estudiante` VALUES ('11263-1', '--', '--', '--', '11263-1', '1', '263');
INSERT INTO `estudiante` VALUES ('11263-2', '--', '--', '--', '11263-2', '1', '263');
INSERT INTO `estudiante` VALUES ('1139-0', '--', '--', '--', '1139-0', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-1', '--', '--', '--', '1139-1', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-2', '--', '--', '--', '1139-2', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-3', '--', '--', '--', '1139-3', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-4', '--', '--', '--', '1139-4', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-5', '--', '--', '--', '1139-5', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-6', '--', '--', '--', '1139-6', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-7', '--', '--', '--', '1139-7', '1', '39');
INSERT INTO `estudiante` VALUES ('1139-8', '--', '--', '--', '1139-8', '1', '39');
INSERT INTO `estudiante` VALUES ('1141-0', '--', '--', '--', '1141-0', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-1', '--', '--', '--', '1141-1', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-2', '--', '--', '--', '1141-2', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-3', '--', '--', '--', '1141-3', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-4', '--', '--', '--', '1141-4', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-5', '--', '--', '--', '1141-5', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-6', '--', '--', '--', '1141-6', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-7', '--', '--', '--', '1141-7', '1', '41');
INSERT INTO `estudiante` VALUES ('1141-8', '--', '--', '--', '1141-8', '1', '41');
INSERT INTO `estudiante` VALUES ('1143-0', '--', '--', '--', '1143-0', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-1', '--', '--', '--', '1143-1', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-2', '--', '--', '--', '1143-2', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-3', '--', '--', '--', '1143-3', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-4', '--', '--', '--', '1143-4', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-5', '--', '--', '--', '1143-5', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-6', '--', '--', '--', '1143-6', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-7', '--', '--', '--', '1143-7', '1', '43');
INSERT INTO `estudiante` VALUES ('1143-8', '--', '--', '--', '1143-8', '1', '43');
INSERT INTO `estudiante` VALUES ('11459-0', '--', '--', '--', '11459-0', '1', '459');
INSERT INTO `estudiante` VALUES ('11459-1', '--', '--', '--', '11459-1', '1', '459');
INSERT INTO `estudiante` VALUES ('11459-2', '--', '--', '--', '11459-2', '1', '459');
INSERT INTO `estudiante` VALUES ('11459-3', '--', '--', '--', '11459-3', '1', '459');
INSERT INTO `estudiante` VALUES ('11459-4', '--', '--', '--', '11459-4', '1', '459');
INSERT INTO `estudiante` VALUES ('11459-5', '--', '--', '--', '11459-5', '1', '459');
INSERT INTO `estudiante` VALUES ('1147-0', '--', '--', '--', '1147-0', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-1', '--', '--', '--', '1147-1', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-2', '--', '--', '--', '1147-2', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-3', '--', '--', '--', '1147-3', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-4', '--', '--', '--', '1147-4', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-5', '--', '--', '--', '1147-5', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-6', '--', '--', '--', '1147-6', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-7', '--', '--', '--', '1147-7', '1', '47');
INSERT INTO `estudiante` VALUES ('1147-8', '--', '--', '--', '1147-8', '1', '47');
INSERT INTO `estudiante` VALUES ('1151-0', '--', '--', '--', '1151-0', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-1', '--', '--', '--', '1151-1', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-2', '--', '--', '--', '1151-2', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-3', '--', '--', '--', '1151-3', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-4', '--', '--', '--', '1151-4', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-5', '--', '--', '--', '1151-5', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-6', '--', '--', '--', '1151-6', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-7', '--', '--', '--', '1151-7', '1', '51');
INSERT INTO `estudiante` VALUES ('1151-8', '--', '--', '--', '1151-8', '1', '51');
INSERT INTO `estudiante` VALUES ('1152-0', '--', '--', '--', '1152-0', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-1', '--', '--', '--', '1152-1', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-2', '--', '--', '--', '1152-2', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-3', '--', '--', '--', '1152-3', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-4', '--', '--', '--', '1152-4', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-5', '--', '--', '--', '1152-5', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-6', '--', '--', '--', '1152-6', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-7', '--', '--', '--', '1152-7', '1', '52');
INSERT INTO `estudiante` VALUES ('1152-8', '--', '--', '--', '1152-8', '1', '52');
INSERT INTO `estudiante` VALUES ('1153-0', '--', '--', '--', '1153-0', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-1', '--', '--', '--', '1153-1', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-2', '--', '--', '--', '1153-2', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-3', '--', '--', '--', '1153-3', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-4', '--', '--', '--', '1153-4', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-5', '--', '--', '--', '1153-5', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-6', '--', '--', '--', '1153-6', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-7', '--', '--', '--', '1153-7', '1', '53');
INSERT INTO `estudiante` VALUES ('1153-8', '--', '--', '--', '1153-8', '1', '53');
INSERT INTO `estudiante` VALUES ('1154-0', '--', '--', '--', '1154-0', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-1', '--', '--', '--', '1154-1', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-2', '--', '--', '--', '1154-2', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-3', '--', '--', '--', '1154-3', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-4', '--', '--', '--', '1154-4', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-5', '--', '--', '--', '1154-5', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-6', '--', '--', '--', '1154-6', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-7', '--', '--', '--', '1154-7', '1', '54');
INSERT INTO `estudiante` VALUES ('1154-8', '--', '--', '--', '1154-8', '1', '54');
INSERT INTO `estudiante` VALUES ('11602-0', '--', '--', '--', '11602-0', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-1', '--', '--', '--', '11602-1', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-10', '--', '--', '--', '11602-10', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-11', '--', '--', '--', '11602-11', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-12', '--', '--', '--', '11602-12', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-13', '--', '--', '--', '11602-13', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-14', '--', '--', '--', '11602-14', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-2', '--', '--', '--', '11602-2', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-3', '--', '--', '--', '11602-3', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-4', '--', '--', '--', '11602-4', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-5', '--', '--', '--', '11602-5', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-6', '--', '--', '--', '11602-6', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-7', '--', '--', '--', '11602-7', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-8', '--', '--', '--', '11602-8', '1', '602');
INSERT INTO `estudiante` VALUES ('11602-9', '--', '--', '--', '11602-9', '1', '602');
INSERT INTO `estudiante` VALUES ('11604-0', '--', '--', '--', '11604-0', '1', '604');
INSERT INTO `estudiante` VALUES ('11604-1', '--', '--', '--', '11604-1', '1', '604');
INSERT INTO `estudiante` VALUES ('11604-2', '--', '--', '--', '11604-2', '1', '604');
INSERT INTO `estudiante` VALUES ('11604-3', '--', '--', '--', '11604-3', '1', '604');
INSERT INTO `estudiante` VALUES ('11604-4', '--', '--', '--', '11604-4', '1', '604');
INSERT INTO `estudiante` VALUES ('11604-5', '--', '--', '--', '11604-5', '1', '604');
INSERT INTO `estudiante` VALUES ('11672-0', '--', '--', '--', '11672-0', '1', '672');
INSERT INTO `estudiante` VALUES ('11672-1', '--', '--', '--', '11672-1', '1', '672');
INSERT INTO `estudiante` VALUES ('11672-2', '--', '--', '--', '11672-2', '1', '672');
INSERT INTO `estudiante` VALUES ('11684-0', '--', '--', '--', '11684-0', '1', '684');
INSERT INTO `estudiante` VALUES ('11684-1', '--', '--', '--', '11684-1', '1', '684');
INSERT INTO `estudiante` VALUES ('11684-2', '--', '--', '--', '11684-2', '1', '684');
INSERT INTO `estudiante` VALUES ('11685-0', '--', '--', '--', '11685-0', '1', '685');
INSERT INTO `estudiante` VALUES ('11685-1', '--', '--', '--', '11685-1', '1', '685');
INSERT INTO `estudiante` VALUES ('11685-2', '--', '--', '--', '11685-2', '1', '685');
INSERT INTO `estudiante` VALUES ('11686-0', '--', '--', '--', '11686-0', '1', '686');
INSERT INTO `estudiante` VALUES ('11686-1', '--', '--', '--', '11686-1', '1', '686');
INSERT INTO `estudiante` VALUES ('11686-2', '--', '--', '--', '11686-2', '1', '686');
INSERT INTO `estudiante` VALUES ('11707-0', '--', '--', '--', '11707-0', '1', '707');
INSERT INTO `estudiante` VALUES ('11707-1', '--', '--', '--', '11707-1', '1', '707');
INSERT INTO `estudiante` VALUES ('11707-2', '--', '--', '--', '11707-2', '1', '707');

-- ----------------------------
-- Table structure for factor
-- ----------------------------
DROP TABLE IF EXISTS `factor`;
CREATE TABLE `factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factor
-- ----------------------------
INSERT INTO `factor` VALUES ('1', 'MISIÓN Y PROYECTOS INSTITUCIONALES');
INSERT INTO `factor` VALUES ('2', 'ESTUDIANTES');
INSERT INTO `factor` VALUES ('3', 'PROFESORES');
INSERT INTO `factor` VALUES ('4', 'PROCESOS ACADÉMICOS');
INSERT INTO `factor` VALUES ('5', 'VISIBILIDAD NACIONAL E INTERNACIONAL');
INSERT INTO `factor` VALUES ('6', 'INVESTIGACIÓN Y CREACIÓN ARTÍSTICA ');
INSERT INTO `factor` VALUES ('7', 'PERTINENCIA E IMPACTO SOCIAL');
INSERT INTO `factor` VALUES ('8', 'PROCESOS DE AUTOEVALUACIÓN Y AUTORREGULACIÓN');
INSERT INTO `factor` VALUES ('9', 'BIENESTAR INSTITUCIONAL');
INSERT INTO `factor` VALUES ('10', 'ORGANIZACIÓN, GESTIÓN Y ADMINISTRACIÓN');
INSERT INTO `factor` VALUES ('11', 'RECURSOS DE APOYO ACADÉMICO E INFRAESTRUCTURA FÍSICA');
INSERT INTO `factor` VALUES ('12', 'RECURSOS FINANCIEROS');

-- ----------------------------
-- Table structure for facultad
-- ----------------------------
DROP TABLE IF EXISTS `facultad`;
CREATE TABLE `facultad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of facultad
-- ----------------------------
INSERT INTO `facultad` VALUES ('1', 'FACULTAD DE CIENCIAS HUMANAS', null);
INSERT INTO `facultad` VALUES ('2', 'FACULTAD DE CIENCIAS SOCIALES Y EDUCACION', null);
INSERT INTO `facultad` VALUES ('3', 'FACULTAD DE MEDICINA', null);
INSERT INTO `facultad` VALUES ('4', 'FACULTAD DE ODONTOLOGIA', null);
INSERT INTO `facultad` VALUES ('5', 'FACULTAD DE INGENIERIA', null);
INSERT INTO `facultad` VALUES ('6', 'FACULTAD DE DERECHO Y CIENCIAS POLITICAS', null);
INSERT INTO `facultad` VALUES ('7', 'FACULTAD DE CIENCIAS  FARMACEUTICAS', null);
INSERT INTO `facultad` VALUES ('8', 'FACULTAD DE ENFERMERIA', null);
INSERT INTO `facultad` VALUES ('9', 'FACULTAD DE CIENCIAS ECONOMICAS', null);
INSERT INTO `facultad` VALUES ('10', 'CREAD - CARTAGENA', null);
INSERT INTO `facultad` VALUES ('11', 'CREAD - MAGANGUE', null);
INSERT INTO `facultad` VALUES ('12', 'CREAD - SIMITI', null);
INSERT INTO `facultad` VALUES ('13', 'CREAD - S. ROSA', null);
INSERT INTO `facultad` VALUES ('14', 'CREAD - S. MARCOS', null);
INSERT INTO `facultad` VALUES ('15', 'CREAD - S. ESTANISLAO', null);
INSERT INTO `facultad` VALUES ('16', 'FACULTAD DE CIENCIAS EXACTAS Y NATURALES', null);
INSERT INTO `facultad` VALUES ('17', 'CERES - CARTAGENA', null);
INSERT INTO `facultad` VALUES ('18', 'CREAD - C. BOLIVAR', null);
INSERT INTO `facultad` VALUES ('19', 'CREAD - TURBACO', null);
INSERT INTO `facultad` VALUES ('20', 'CREAD - PINILLOS', null);
INSERT INTO `facultad` VALUES ('21', 'CREAD - ACHI', null);
INSERT INTO `facultad` VALUES ('22', 'CREAD - LORICA', null);
INSERT INTO `facultad` VALUES ('23', 'CREAD - S. ONOFRE', null);
INSERT INTO `facultad` VALUES ('24', 'CREAD - SAN JACINTO DEL CAUCA', null);
INSERT INTO `facultad` VALUES ('25', 'ESCUELA DE EDUCACIÓN PARA EL TRABAJO Y EL DESARROLLO HUMANO', null);
INSERT INTO `facultad` VALUES ('27', 'CREAD - SINCE', null);
INSERT INTO `facultad` VALUES ('28', 'CREAD - SAN JUAN NEPO', null);
INSERT INTO `facultad` VALUES ('29', 'CREAD - CLEMENCIA', null);
INSERT INTO `facultad` VALUES ('30', 'CREAD - MARIA LA BAJA', null);
INSERT INTO `facultad` VALUES ('31', 'CREAD', null);
INSERT INTO `facultad` VALUES ('32', 'CERES - NELSON MANDELA', null);
INSERT INTO `facultad` VALUES ('33', 'CERES - POZON', null);
INSERT INTO `facultad` VALUES ('34', 'CERES - PASACABALLOS', null);
INSERT INTO `facultad` VALUES ('35', 'INSTITUTO DE POLITICAS PUBLICAS REGIONALES Y DE GOBIERNO', null);
INSERT INTO `facultad` VALUES ('36', 'INSTITUTO DE MATEMATICAS APLICADA', null);
INSERT INTO `facultad` VALUES ('60', 'DOCTORADO EN CIENCIAS DE LA EDUCACIÓN CADE UNIVERSIDAD DE CARTAGENA', null);
INSERT INTO `facultad` VALUES ('98', 'CURSOS DE INGLÉS', null);
INSERT INTO `facultad` VALUES ('99', 'CURSOS VIRTUALES', null);

-- ----------------------------
-- Table structure for fuente
-- ----------------------------
DROP TABLE IF EXISTS `fuente`;
CREATE TABLE `fuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fuente
-- ----------------------------
INSERT INTO `fuente` VALUES ('1', 'ESTUDIANTE (EST)', null);
INSERT INTO `fuente` VALUES ('2', 'DOCENTE (DOC)', null);
INSERT INTO `fuente` VALUES ('3', 'ADMINISTRATIVOS (ADM)', null);
INSERT INTO `fuente` VALUES ('4', 'DIRECTIVOS (DTVO', null);
INSERT INTO `fuente` VALUES ('5', 'EGRESADOS (EGRE)', null);
INSERT INTO `fuente` VALUES ('6', 'EMPLEADORES (EMPL)', null);
INSERT INTO `fuente` VALUES ('7', 'GUBERNAMENTALES (A_GTAL)', null);

-- ----------------------------
-- Table structure for indicador
-- ----------------------------
DROP TABLE IF EXISTS `indicador`;
CREATE TABLE `indicador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `caracteristica_id` int(11) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_indicador_caracteristica1` (`caracteristica_id`),
  CONSTRAINT `fk_indicador_caracteristica1` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indicador
-- ----------------------------
INSERT INTO `indicador` VALUES ('1', 'Documento soporte de la formulación de la Misión y su  coherencia con la naturaleza de la Institución y sus objetivos', '1', '1.1.1');
INSERT INTO `indicador` VALUES ('2', 'Coherencia y pertinencia de la Misión en relación con los problemas y necesidades del entorno.', '1', '1.1.2');
INSERT INTO `indicador` VALUES ('3', 'Apreciación   de   la   comunidad   universitaria   sobre   la correspondencia entre la Misión, la tradición y la naturaleza de la Institución.', '1', '1.1.3');
INSERT INTO `indicador` VALUES ('4', 'Información verificable sobre la correspondencia entre la Misión y los procesos académicos y administrativos.', '1', '1.1.4');
INSERT INTO `indicador` VALUES ('5', 'Información   verificable   sobre   la   coherencia   entre la Misión, la Constitución y objetivos de la educación superior.', '1', '1.1.5');
INSERT INTO `indicador` VALUES ('6', 'Información  verificable  sobre la existencia de un Sistema Integrado de Gestión para el aseguramiento de la calidad.', '1', '1.1.6');
INSERT INTO `indicador` VALUES ('7', 'Logros alcanzados relacionados con la Acreditación de programas.', '1', '1.1.7');
INSERT INTO `indicador` VALUES ('8', 'Información verificable sobre mecanismos para asegurar el control,  la  precisión  y  la  objetividad  de  la  información pública que se proporciona sobre la Institución.', '1', '1.1.8');
INSERT INTO `indicador` VALUES ('9', 'Información verificable sobre los lineamientos definidos en el PEI y su relación con la calidad de la Institución', '2', '1.2.1');
INSERT INTO `indicador` VALUES ('10', 'Información verificable sobre políticas y lineamientos institucionales direccionados a la formación integral de los estudiantes.', '3', '1.3.1');
INSERT INTO `indicador` VALUES ('11', 'Información verificable sobre políticas, lineamientos e implementación de programas institucionales direccionados a la generación de un clima laboral adecuado. ', '3', '1.3.2');
INSERT INTO `indicador` VALUES ('12', 'Apreciación de los estudiantes acerca de la adecuada aplicación del Reglamento estudiantil.', '4', '2.4.1');
INSERT INTO `indicador` VALUES ('13', 'Procedimientos acerca del sistema de ingreso, transferencia y permanencia de los estudiantes de la Universidad de Cartagena.', '4', '2.4.2');
INSERT INTO `indicador` VALUES ('14', 'Existencia de procedimiento para promoción, transferencia  y grado de los estudiantes acode con el Reglamento estudiantil.', '4', '2.4.3');
INSERT INTO `indicador` VALUES ('15', 'Información   verificable   sobre   los lineamientos para la   participación   de   los estudiantes en los órganos de dirección de la Universidad.', '4', '2.4.4');
INSERT INTO `indicador` VALUES ('16', 'Información verificable sobre acciones de liderazgo de los estudiantes, a través de la generación de proyectos y organización de grupos.', '4', '2.4.5');
INSERT INTO `indicador` VALUES ('17', 'Información verificable sobre los procedimientos para   la   elección de los representantes estudiantiles en los organismos de decisión.', '4', '2.4.6');
INSERT INTO `indicador` VALUES ('18', 'Apreciación de los estudiantes sobre el procedimiento para la elección de representantes estudiantiles en los organismos de decisión.', '4', '2.4.7');
INSERT INTO `indicador` VALUES ('19', 'Datos correspondientes a: 1.   Índice de selectividad 2.   Índice de absorción 3.   Índice de vinculación 4.   Índice de permanencia', '5', '2.5.1');
INSERT INTO `indicador` VALUES ('20', 'Apreciación  de  los  estudiantes  sobre  el  rigor  de  los procedimientos de admisión.', '5', '2.5.2');
INSERT INTO `indicador` VALUES ('21', 'Información verificable sobre el procedimiento de matrícula acorde con el Reglamento estudiantil.', '5', '2.5.3');
INSERT INTO `indicador` VALUES ('22', 'Apreciación   de   los   estudiantes   sobre   la   calidad   y oportunidad del apoyo prestado por la Institución para favorecer su permanencia.', '5', '2.5.4');
INSERT INTO `indicador` VALUES ('23', 'Aplicación equitativa y trasparente de los criterios para la admisión y permanencia de estudiantes.', '5', '2.5.5');
INSERT INTO `indicador` VALUES ('24', 'Información verificable sobre lineamientos y programas institucionales de acompañamiento a poblaciones especiales.', '5', '2.5.6');
INSERT INTO `indicador` VALUES ('25', 'Información verificable de los programas que desarrolla la Institución para la retención de estudiantes y procedimientos para favorecer la retención y seguimiento de los mismos.', '5', '2.5.7');
INSERT INTO `indicador` VALUES ('26', 'Información verificable sobre la existencia de estudios para determinar la causas de la deserción.', '5', '2.5.8');
INSERT INTO `indicador` VALUES ('27', 'Información cuantitativa acerca de: 1.       Esfuerzo en la formación 2.       Duración de estudios 3.       Tasa de retención', '5', '2.5.9');
INSERT INTO `indicador` VALUES ('28', 'Información verificable sobre la existencia de procedimientos para la admisión de intercambios y transferencia de estudiantes de instituciones nacionales e internacionales.', '5', '2.5.10');
INSERT INTO `indicador` VALUES ('29', 'Conocimiento de la comunidad académica acerca de la aplicación de los procedimientos para la admisión de intercambios y transferencia de estudiantes de instituciones nacionales e internacionales.', '5', '2.5.11');
INSERT INTO `indicador` VALUES ('30', 'Información cuantitativa sobre el número de estudiantes admitidos por intercambios y transferencias de instituciones nacionales e internacionales. ', '5', '2.5.12');
INSERT INTO `indicador` VALUES ('31', 'Existencia de lineamientos, estímulos y procedimientos de apoyo económico para fomentar la permanencia de los estudiantes.', '6', '2.6.1');
INSERT INTO `indicador` VALUES ('32', 'Número de estudiantes beneficiados a través de los subsidios de apoyo. ', '6', '2.6.2');
INSERT INTO `indicador` VALUES ('33', 'Apreciación  de los  estudiantes  sobre  los  estímulos que ofrece la Institución a estudiantes destacados.', '6', '2.6.3');
INSERT INTO `indicador` VALUES ('34', 'Número de estudiantes beneficiados por la existencia de convenios interinstitucionales de apoyo para su ingreso y permanencia.', '6', '2.6.4');
INSERT INTO `indicador` VALUES ('35', 'Apreciación de los estudiantes acerca de los medios  de  divulgación  y  socialización  de  los sistemas de crédito, subsidios, becas y estímulos.  ', '6', '2.6.5');
INSERT INTO `indicador` VALUES ('36', 'Número de estudiantes beneficiados a través de monitorías, asistencia de investigación, matrícula de honor y otros integrados al programa de estímulos institucionales.', '6', '2.6.6');
INSERT INTO `indicador` VALUES ('37', 'Existencia de procedimientos para el seguimiento a los estudiantes beneficiados con los apoyos institucionales.', '6', '2.6.7');
INSERT INTO `indicador` VALUES ('38', 'Percepción de profesores y directivos sobre la influencia del Estatuto Docente en el logro de la Misión Institucional.', '7', '3.7.1');
INSERT INTO `indicador` VALUES ('39', 'Información verificable acerca de los procedimientos en la aplicación del régimen disciplinario para los profesores. ', '7', '3.7.2');
INSERT INTO `indicador` VALUES ('40', 'Percepción de los profesores sobre la aplicación del Estatuto Docente. ', '7', '3.7.3');
INSERT INTO `indicador` VALUES ('41', 'Información verificable sobre lineamientos y procedimientos sobre la participación de los profesores en los organismos de decisión de la Institución. ', '7', '3.7.4');
INSERT INTO `indicador` VALUES ('42', 'Información verificable sobre el número de profesores que hacen parte de los organismos de decisión de la Institución.', '7', '3.7.5');
INSERT INTO `indicador` VALUES ('43', 'Información verificable sobre los procedimientos para   la   elección de los representantes de los profesores en los organismos de decisión.', '7', '3.7.6');
INSERT INTO `indicador` VALUES ('44', 'Apreciación de los profesores sobre las buenas prácticas en la aplicación del procedimiento para la elección de representantes de los profesorales en los organismos de decisión.', '7', '3.7.7');
INSERT INTO `indicador` VALUES ('45', 'Correlación entre el número de docentes de planta, de tiempo completo, medio tiempo y   de cátedra (en equivalencia a tiempo completo) y el número de estudiantes.', '8', '3.8.1');
INSERT INTO `indicador` VALUES ('46', 'Número   y  porcentaje   de   docentes   con   estudios   de especialización, maestría y doctorado,  años de experiencia en la Universidad de Cartagena y su dedicación a los procesos misionales de docencia, investigación y extensión. ', '8', '3.8.2');
INSERT INTO `indicador` VALUES ('47', 'Información verificable sobre los procedimientos de contratación de profesores en correspondencia con los planes de desarrollo de la institución.', '8', '3.8.3');
INSERT INTO `indicador` VALUES ('48', 'Información verificable sobre lineamientos y procedimientos para la asignación de responsabilidades a los profesores con funciones en los procesos misionales de docencia, investigación y extensión, así como la asesoría a estudiantes.', '8', '3.8.4');
INSERT INTO `indicador` VALUES ('49', 'Correlación  entre  el  número  de  profesores  según categoría del escalafón y su dedicación a los procesos misionales de docencia, investigación, extensión, así como la asesoría a estudiantes.', '8', '3.8.5');
INSERT INTO `indicador` VALUES ('50', 'Información  verificable  sobre  lineamientos y procedimientos para la evaluación del desempeño docente.', '8', '3.8.6');
INSERT INTO `indicador` VALUES ('51', 'Resultados obtenidos como producto de la evaluación del desempeño docente.', '8', '3.8.7');
INSERT INTO `indicador` VALUES ('52', 'Relación de profesores, títulos obtenidos, institución que otorga el título y tipo de reconocimiento de su calidad académica.', '8', '3.8.8');
INSERT INTO `indicador` VALUES ('53', 'Información  verificable  sobre  lineamientos y procedimientos para la asignación de espacios acorde con las funciones a desarrollar por los profesores.', '8', '3.8.9');
INSERT INTO `indicador` VALUES ('54', 'Apreciación de los profesores sobre la adecuada relación de asignación de espacios para realizar con calidad las funciones asignadas. ', '8', '3.8.10');
INSERT INTO `indicador` VALUES ('55', 'Información verificable sobre los procedimientos de vinculación y evaluación de profesores en correspondencia con los planes de desarrollo de la institución ', '9', '3.9.1');
INSERT INTO `indicador` VALUES ('56', 'Número de profesores vinculados anualmente. ', '9', '3.9.2');
INSERT INTO `indicador` VALUES ('57', 'Apreciación de profesores sobre los procedimientos de vinculación y evaluación.', '9', '3.9.3');
INSERT INTO `indicador` VALUES ('58', 'Información  verificable  sobre  lineamientos y procedimientos que definen las categorías del escalafón docente, así como los requisitos de ascenso.', '9', '3.9.4');
INSERT INTO `indicador` VALUES ('59', 'Evolución y tránsito de los profesores en las distintas categorías del escalafón docente, en relación con su antigüedad en la Institución. ', '9', '3.9.5');
INSERT INTO `indicador` VALUES ('60', 'Apreciación de los profesores sobre la coherencia, rigurosidad y transparencia en la aplicación del escalafón docente.', '9', '3.9.6');
INSERT INTO `indicador` VALUES ('61', 'Información verificable de la aplicación de los criterios y procedimientos establecidos a nivel nacional para determinar la asignación salarial.', '9', '3.9.7');
INSERT INTO `indicador` VALUES ('62', 'Información verificable sobre lineamientos y programas para el fomento del desarrollo profesoral.', '10', '3.10.1');
INSERT INTO `indicador` VALUES ('63', 'Número de profesores de tiempo completo y medio tiempo que cursan estudios de: Formación postdoc, doctorado y maestría, anotando la  institución y su carácter nacional o internacional.  ', '10', '3.10.2');
INSERT INTO `indicador` VALUES ('64', 'Percepción de  los  profesores  sobre  los  programas  de desarrollo profesoral.', '10', '3.10.3');
INSERT INTO `indicador` VALUES ('65', 'Relación de los profesores y su reconocimiento a través de la totalidad de puntos salariales acumulados, en reconocimiento de su producción y ejercicio en los procesos misionales de la Institución, acorde con lo establecido  a nivel nacional mediante Decreto. ', '10', '3.10.4');
INSERT INTO `indicador` VALUES ('66', 'Existencia de lineamientos y estrategias para la conformación de comunidades académicas en la institución para la interacción con homólogas del orden nacional e internacional.', '11', '3.11.1');
INSERT INTO `indicador` VALUES ('67', 'Participación de los profesores en redes y comunidades académicas nacionales e internacionales, según áreas de conocimiento.  ', '11', '3.11.2');
INSERT INTO `indicador` VALUES ('68', 'Número de Redes en las que participan profesores de la Institución por áreas de conocimiento', '11', '3.11.3');
INSERT INTO `indicador` VALUES ('69', 'Número  y  tipo  de  convenios  activos  que  faciliten  la interacción académica del profesorado, por áreas de conocimiento con las comunidades académicas nacionales e internacionales.', '11', '3.11.4');
INSERT INTO `indicador` VALUES ('70', 'Número  de  profesores  que  pertenecen  a  asociaciones profesionales, sociedades científicas y comités editoriales externos.', '11', '3.11.5');
INSERT INTO `indicador` VALUES ('71', 'Informe sobre eventos que registren debates académicos sobre los fundamentos epistemológicos, filosóficos, antropológicos, científicos y tecnológicos de la Institución.', '12', '4.12.1');
INSERT INTO `indicador` VALUES ('72', 'Información verificable sobre lineamientos, políticas y  estrategias para la formación integral, flexibilización curricular, internacionalización e interdisciplinariedad.', '12', '4.12.2');
INSERT INTO `indicador` VALUES ('73', 'Porcentaje de flexibilidad que maneja cada programa de acuerdo con su estructura curricular.', '12', '4.12.3');
INSERT INTO `indicador` VALUES ('74', 'Información verificable sobre lineamientos y procedimientos para la revisión y modificación del currículo y planes de estudio.', '12', '4.12.4');
INSERT INTO `indicador` VALUES ('75', 'Apreciación de estudiantes, profesores y egresados sobre la pertinencia de los currículos y planes de estudio.', '12', '4.12.5');
INSERT INTO `indicador` VALUES ('76', 'Estrategias institucionales donde se evidencie el compromiso con la capacitación en lenguas extranjeras.', '12', '4.12.6');
INSERT INTO `indicador` VALUES ('77', 'Porcentaje de profesores de TC y MT que manejan un segundo idioma.', '12', '4.12.7');
INSERT INTO `indicador` VALUES ('78', 'Porcentaje de estudiantes que manejan un segundo idioma.', '12', '4.12.8');
INSERT INTO `indicador` VALUES ('79', 'Número de programas de capacitación anual realizados o liderados por la Institución para la incorporación y manejo de las TICS y docentes y estudiantes beneficiarios de la capacitación.', '12', '4.12.9');
INSERT INTO `indicador` VALUES ('80', 'Número de programas de capacitación anual realizados o liderados por la Institución para la incorporación y manejo de las TICS, y docentes y estudiantes beneficiarios de la capacitación.', '12', '4.12.10');
INSERT INTO `indicador` VALUES ('81', 'Número de cursos virtuales ofertados por la Institución y su distribución según área de conocimiento.', '12', '4.12.11');
INSERT INTO `indicador` VALUES ('82', 'Existencia de documentos que justifiquen la correspondencia entre los propósitos de formación y las necesidades y expectativas en el contexto regional, nacional e internacional.', '13', '4.13.1');
INSERT INTO `indicador` VALUES ('83', 'Existencia de estudios de oferta y demanda realizados por la Institución para analizar la necesidad de formación en la Región Caribe, a nivel nacional y/o mundial. ', '13', '4.13.2');
INSERT INTO `indicador` VALUES ('84', 'Apreciación de empleadores y asociaciones profesionales sobre la pertinencia y calidad de los programas de la Institución.', '13', '4.13.3');
INSERT INTO `indicador` VALUES ('85', 'Apreciación de egresados sobre la pertinencia y calidad de  los programas de la Institución.', '13', '4.13.4');
INSERT INTO `indicador` VALUES ('86', 'Número de estudiantes por programa académico que participan en procesos de investigación.', '13', '4.13.5');
INSERT INTO `indicador` VALUES ('87', 'Número de semilleros de investigación y número de estudiantes participantes.', '13', '4.13.6');
INSERT INTO `indicador` VALUES ('88', 'Número anual de cursos y diplomados.', '13', '4.13.7');
INSERT INTO `indicador` VALUES ('89', 'Información verificable sobre los lineamientos institucionales para la creación, modificación y extensión de programas', '14', '4.14.1');
INSERT INTO `indicador` VALUES ('90', 'Número anual de nuevos programas, bien sea propios o en la modalidad en red', '14', '4.14.2');
INSERT INTO `indicador` VALUES ('91', 'Relación de la Política de calidad con la creación, modificación y extensión de programas', '14', '4.14.3');
INSERT INTO `indicador` VALUES ('92', 'Información verificable sobre los lineamientos institucionales para la realización de estudios de mercadeo que orienten la creación, modificación y extensión de programas, así como el procedimiento para su eliminación de la oferta académica. ', '14', '4.14.4');
INSERT INTO `indicador` VALUES ('93', 'Estudios realizados para proponer la creación, modificación, extensión y eliminación de programas.', '14', '4.14.5');
INSERT INTO `indicador` VALUES ('94', 'Documento sobre política institucional relacionada con la actualización de currículos y planes de estudio en el contexto nacional e internacional.', '15', '5.15.1');
INSERT INTO `indicador` VALUES ('95', 'Documento evidencia de estudios y análisis comparativo de la institución con respecto a otras instituciones nacionales e internacionales y datos de ranking según distintos observatorios.  ', '15', '5.15.2');
INSERT INTO `indicador` VALUES ('96', 'Número de convenios activos y actividades de cooperación académica desarrollados a nivel nacional e internacional, resultados y beneficiarios ', '15', '5.15.3');
INSERT INTO `indicador` VALUES ('97', 'Número de proyectos, productos, profesores y estudiantes participantes en representación de las instituciones, desarrollados por cooperación académica a nivel nacional e internacional.', '15', '5.15.4');
INSERT INTO `indicador` VALUES ('98', 'Información verificable sobre política de financiación de la internacionalización, recursos económicos anuales y número de convocatorias anuales para movilidad internacional de profesores y estudiantes en universidades extranjeras,  asistencia en congresos internacionales.', '15', '5.15.5');
INSERT INTO `indicador` VALUES ('99', 'Número de profesores y estudiantes que visitaron anualmente el exterior con fines académicos  o de investigación. Número de congresos y eventos internacionales realizados anualmente. Número de ponencias anuales en eventos internacionales.', '15', '5.15.6');
INSERT INTO `indicador` VALUES ('100', 'Número de programas de posgrado que ofrecen la doble titulación contra el número total de programas de posgrado de la Universidad.', '15', '5.15.7');
INSERT INTO `indicador` VALUES ('101', 'Beneficiarios de los convenios según 5.15.3. ', '15', '5.15.8');
INSERT INTO `indicador` VALUES ('102', 'Información verificable sobre la participación de la Universidad en redes nacionales e internacionales.', '15', '5.15.9');
INSERT INTO `indicador` VALUES ('103', 'Información verificable sobre número de docentes, estudiantes y egresados que se destacaron y obtuvieron premios u otros reconocimientos en las actividades de investigación, creación artística y proyección social. ', '15', '5.15.10');
INSERT INTO `indicador` VALUES ('104', 'Percepción de empleadores y egresados acerca del impacto social que genera la Universidad de Cartagena.', '15', '5.15.11');
INSERT INTO `indicador` VALUES ('105', 'Número de programas académicos ofrecidos en alianza interinstitucional y redes. Número de programas o actividades de proyección social como resultado de proyectos interinstitucionales. ', '15', '5.15.12');
INSERT INTO `indicador` VALUES ('106', 'Número de profesores que tienen actualizado el CvLAC.', '15', '5.15.13');
INSERT INTO `indicador` VALUES ('107', 'Número de convenios activos de intercambio con instituciones nacionales y extranjeras.', '16', '5.16.1');
INSERT INTO `indicador` VALUES ('108', 'Número de profesores y expertos nacionales y extranjeros que recibió anualmente la institución, objetivo, duración y resultados obtenidos.   ', '16', '5.16.2');
INSERT INTO `indicador` VALUES ('109', 'Número de estudiantes nacionales y extranjeros que recibió anualmente la Institución.  ', '16', '5.16.3');
INSERT INTO `indicador` VALUES ('110', 'Información verificable sobre homologación de cursos y créditos académicos con trazabilidad nacional e internacional. ', '16', '5.16.4');
INSERT INTO `indicador` VALUES ('111', 'Productos tipo publicaciones en coautoría en revistas indexadas con visibilidad e impacto, cofinanciación de proyectos, registros, patentes y otros obtenidos por participación de profesores, estudiantes y directivos de la Institución con participación activa en redes académicas, científicas, técnicas y tecnológicas a nivel nacional e internacional.  ', '16', '5.16.5');
INSERT INTO `indicador` VALUES ('112', 'Profesores que se encuentran cursando estudios de postgrado en instituciones nacionales o internacionales, actividades de educación continuada realizadas en cooperación con otras instituciones a nivel nacional o internacional, profesores que tienen la condición de pares académicos. ', '16', '5.16.6');
INSERT INTO `indicador` VALUES ('113', 'Información sobre recursos económicos anuales ejecutados por movilidad.', '16', '5.16.7');
INSERT INTO `indicador` VALUES ('114', 'Profesores, grado de formación máxima, nombre de la institución que otorgó el título.  ', '16', '5.16.8');
INSERT INTO `indicador` VALUES ('115', 'Documentos institucionales sobre los lineamientos para la formación investigativa.', '17', '6.17.1');
INSERT INTO `indicador` VALUES ('116', 'Número de estudiantes que participan en grupos de investigación, proyectos en los que participan estudiantes. ', '17', '6.17.2');
INSERT INTO `indicador` VALUES ('117', 'Apreciación de los estudiantes sobre la influencia de la formación investigativa como parte integral de su formación.', '17', '6.17.3');
INSERT INTO `indicador` VALUES ('118', 'Reconocimientos anuales a los estudiantes que participan en actividades de investigación.', '17', '6.17.4');
INSERT INTO `indicador` VALUES ('119', 'Documentos institucionales que facilitan a los profesores participar en procesos de investigación. ', '17', '6.17.5');
INSERT INTO `indicador` VALUES ('120', 'Documentos institucionales que facilitan a los estudiantes participar en procesos de investigación científica y/o creación artística y cultural.', '17', '6.17.6');
INSERT INTO `indicador` VALUES ('121', 'Percepción de estudiantes y profesores sobre oportunidades de participación en el proceso de investigación.', '17', '6.17.7');
INSERT INTO `indicador` VALUES ('122', 'Información verificable sobre los mecanismos de evaluación del proceso de enseñanza aprendizaje en relación con la formación para la investigación. ', '17', '6.17.8');
INSERT INTO `indicador` VALUES ('123', 'Información  verificable  sobre  la  cantidad y calidad  de  los  recursos académicos vinculados al trabajo investigativo, laboratorios, equipos, recursos bibliográficos, recursos informáticos, entre otros.', '18', '6.18.1');
INSERT INTO `indicador` VALUES ('124', 'Apreciación de los profesores sobre los  recursos académicos vinculados al trabajo investigativo, laboratorios, equipos, recursos bibliográficos, recursos informáticos, entre otros.           ', '18', '6.18.2');
INSERT INTO `indicador` VALUES ('125', 'Nivel de formación y reconocimiento académico de los investigadores.  ', '18', '6.18.3');
INSERT INTO `indicador` VALUES ('126', 'Crecimiento en número y evolución de los grupos de investigación de acuerdo con la periodicidad de medición y categorización por parte de Colciencias.', '18', '6.18.4');
INSERT INTO `indicador` VALUES ('127', 'Crecimiento en el número de grupos de investigación, permanencia y evolución según periodicidad de medición por Colciencias.', '18', '6.18.5');
INSERT INTO `indicador` VALUES ('128', 'Documento institucional sobre lineamientos de los tiempos dedicados a investigación.', '18', '6.18.6');
INSERT INTO `indicador` VALUES ('129', 'Número de artículos anuales en revistas indexadas y especializadas nacionales e internacionales    Número anual de innovaciones, patentes, productos o procesos técnicos y tecnológicos patentables o no patentables o protegidas por secreto industrial.', '18', '6.18.7');
INSERT INTO `indicador` VALUES ('130', 'Número anual de libros y capítulos de libros.', '18', '6.18.8');
INSERT INTO `indicador` VALUES ('131', 'Número anual de trabajos de grado dirigidos en maestría y doctorado.', '18', '6.18.9');
INSERT INTO `indicador` VALUES ('132', 'Número anual de paquetes tecnológicos, normas resultado de investigación,  producción artística y cultural.', '18', '6.18.10');
INSERT INTO `indicador` VALUES ('133', 'Número anual de productos de apropiación social del conocimiento, productos asociados a servicios técnicos o consultoría cualificada, elaborados por profesores de la institución de acuerdo con su tipo y naturaleza.', '18', '6.18.11');
INSERT INTO `indicador` VALUES ('134', 'Número de artículos anuales publicados en revistas con factor de impacto Isis-Scopus.', '18', '6.18.12');
INSERT INTO `indicador` VALUES ('135', 'Número de productos y reconocimiento a profesores y estudiantes como resultados de procesos y aportes al arte y a la cultura.  ', '18', '6.18.13');
INSERT INTO `indicador` VALUES ('136', 'Premios y distinciones anuales por trabajos de investigación obtenidos por los profesores, otorgados por instituciones de reconocido prestigio académico.', '18', '6.18.14');
INSERT INTO `indicador` VALUES ('137', 'Políticas y lineamientos institucionales para apoyo administrativo y financiero al proceso de investigación. ', '18', '6.18.15');
INSERT INTO `indicador` VALUES ('138', 'Número de centros de investigación, incubadoras, centros de emprendimiento de la Universidad.', '18', '6.18.16');
INSERT INTO `indicador` VALUES ('139', 'Percepción de docentes y estudiantes con relación al apoyo administrativo y financiero que brinda la Universidad a los procesos de investigación y creación artística y cultural. ', '18', '6.18.17');
INSERT INTO `indicador` VALUES ('140', 'Número de proyectos de investigación anuales financiados por entidades externas ', '18', '6.18.18');
INSERT INTO `indicador` VALUES ('141', 'Documento institucional sobre régimen de propiedad intelectual.', '18', '6.18.19');
INSERT INTO `indicador` VALUES ('142', 'Documento institucional sobre las políticas de evaluación de la producción académica de los profesores. ', '18', '6.18.20');
INSERT INTO `indicador` VALUES ('143', 'Número y categoría de los investigadores reconocidos en el Sistema Nacional de Ciencia y Tecnología.', '18', '6.18.21');
INSERT INTO `indicador` VALUES ('144', 'Número de estudiantes anuales graduados por la Institución como magísteres y doctores. ', '18', '6.18.22');
INSERT INTO `indicador` VALUES ('145', 'Diagnóstico del contexto, planes de desarrollo local y nacional, documentos Conpes, política de extensión y proyección social.', '19', '7.19.1');
INSERT INTO `indicador` VALUES ('146', 'Número de institutos, centros, observatorios, convenios  interinstitucionales, proyectos de investigación oferta de programas que apuntan a la solución de problemas regionales, nacionales  e internacionales.', '19', '7.19.2');
INSERT INTO `indicador` VALUES ('147', 'Número y clasificación de proyectos desarrollados por la Institución anualmente, prácticas académicas, prácticas sociales, proyección científica y tecnológica, proyectos de consultoría y prestación de servicios.', '19', '7.19.3');
INSERT INTO `indicador` VALUES ('148', 'Documentos, políticas y lineamientos para las actividades de educación continuada, consultoría y prestación de servicios, evaluación y planes de mejora', '19', '7.19.4');
INSERT INTO `indicador` VALUES ('149', 'Actividades y acciones de mejora anuales producto de las evaluaciones en la prestación de servicios.', '19', '7.19.5');
INSERT INTO `indicador` VALUES ('150', 'Acciones, programas y estrategias realizadas por la Universidad como respuesta a las necesidades del medio.', '19', '7.19.6');
INSERT INTO `indicador` VALUES ('151', 'Reconocimientos  locales,  nacionales  e  internacionales  de la interacción social a través de los procesos misionales de docencia, investigación y extensión.', '19', '7.19.7');
INSERT INTO `indicador` VALUES ('152', 'Impacto de los programas de pregrado y postgrado de acuerdo con las necesidades del medio local y regional. ', '19', '7.19.8');
INSERT INTO `indicador` VALUES ('153', 'Información verificable sobre reconocimientos, distinciones y premios otorgados a egresados de la Universidad, en el campo académico, científico, empresarial, artístico, cultural, económico y político. ', '19', '7.19.9');
INSERT INTO `indicador` VALUES ('154', 'Apreciación  de  estudiantes  sobre  la  relación  de  las prácticas con su proceso de formación.', '19', '7.19.10');
INSERT INTO `indicador` VALUES ('155', 'Apreciación de representantes del sector empleador sobre la calidad y pertinencia de las prácticas, y del desempeño de los egresados.', '19', '7.19.11');
INSERT INTO `indicador` VALUES ('156', 'Información verificable sobre proyectos interinstitucionales o propios que trascienden al trabajo con comunidades vulnerables. ', '19', '7.19.12');
INSERT INTO `indicador` VALUES ('157', 'Número de proyectos, productos y poblaciones en condición de vulnerabilidad como beneficiarios.', '19', '7.19.13');
INSERT INTO `indicador` VALUES ('158', 'Número de iniciativas de transferencia del conocimiento científico y tecnológico que puedan tributar en mejoras y desarrollo del medio local y regional.', '19', '7.19.14');
INSERT INTO `indicador` VALUES ('159', 'Políticas y programas que tiene la Institución como apoyo a la inserción laboral de los egresados y número de egresados beneficiarios.', '20', '7.20.1');
INSERT INTO `indicador` VALUES ('160', 'Apreciación de egresados sobre el apoyo de la Institución para la vinculación laboral.', '20', '7.20.2');
INSERT INTO `indicador` VALUES ('161', 'Promoción del programa de inserción laboral.', '20', '7.20.3');
INSERT INTO `indicador` VALUES ('162', 'Porcentaje de egresados que figuran en la base de datos. ', '20', '7.20.4');
INSERT INTO `indicador` VALUES ('163', 'Número de actividades anuales realizadas para congregar a los egresados.', '20', '7.20.5');
INSERT INTO `indicador` VALUES ('164', 'Relación  de  organismos  de  dirección   y  coordinación académica de la Institución en los que hay representación de egresados.', '20', '7.20.6');
INSERT INTO `indicador` VALUES ('165', 'Apreciación de egresados sobre el impacto de su presencia y participación en  las actividades de la Universidad ', '20', '7.20.7');
INSERT INTO `indicador` VALUES ('166', 'Lineamientos institucionales para el aseguramiento de la calidad, procedimientos y política de calidad, lineamientos de promoción y sensibilización para consolidar la cultura de autoevaluación permanente como oportunidad de mejora.', '21', '8.21.1');
INSERT INTO `indicador` VALUES ('167', 'Resultados de encuestas semestrales y anuales sobre satisfacción de los integrantes de la comunidad universitaria.', '21', '8.21.2');
INSERT INTO `indicador` VALUES ('168', 'Acciones correctivas o de mejora implementadas como producto de los resultados de las encuestas de satisfacción aplicadas a la comunidad universitaria.', '21', '8.21.3');
INSERT INTO `indicador` VALUES ('169', 'Documento marco, Plan de Desarrollo Institucional y los planes de aseguramiento de la calidad de los programas académicos resultantes del  proceso de Autoevaluación', '21', '8.21.4');
INSERT INTO `indicador` VALUES ('170', 'Resultados y planes de control y seguimiento a los planes de mejora. ', '21', '8.21.5');
INSERT INTO `indicador` VALUES ('171', 'Información verificable del análisis de resultados de las Pruebas de Estado de los estudiantes y la incorporación de los resultados en los Planes de mejoramiento.', '21', '8.21.6');
INSERT INTO `indicador` VALUES ('172', 'Información verificable sobre los sistemas de información existentes en la Institución y su capacidad instalada para que orienten la toma de decisiones frente a los resultados de Autoevaluación.', '22', '8.22.1');
INSERT INTO `indicador` VALUES ('173', 'Apreciación de los usuarios sobre la eficiencia y efectividad de los sistemas de información.', '22', '8.22.2');
INSERT INTO `indicador` VALUES ('174', 'Información verificable sobre la capacidad de los sistemas para proporcionar datos oportunos, confiables y en tiempo real. ', '22', '8.22.3');
INSERT INTO `indicador` VALUES ('175', 'Control y seguimiento a los indicadores de gestión el Plan de desarrollo institucional y los planes de aseguramiento de la calidad de los programas integrados al SIGUC. ', '22', '8.22.4');
INSERT INTO `indicador` VALUES ('176', 'Información  verificable  sobre  el  uso de reportes institucionales  para entregar información  proporcionada  por  los registros estadísticos e indicadores de gestión.', '22', '8.22.5');
INSERT INTO `indicador` VALUES ('177', 'Información verificable  del cumplimiento con la información requerida por los sistemas nacionales de información.', '22', '8.22.6');
INSERT INTO `indicador` VALUES ('178', 'Existencia de políticas, programas y procedimientos institucionales para evaluar a sus profesores, personal administrativo y directivos, con fines de mejorar su desempeño y tributo al mejoramiento de la calidad.', '23', '8.23.1');
INSERT INTO `indicador` VALUES ('179', 'Apreciación de los profesores, administrativos y directivos sobre los procedimientos de evaluación.', '23', '8.23.2');
INSERT INTO `indicador` VALUES ('180', 'Resultados anuales sobre evaluación de producción académica de docentes e investigadores, así como de evaluación del desempeño de personal administrativo y directivos.', '23', '8.23.3');
INSERT INTO `indicador` VALUES ('181', 'Apreciación  de  profesores  e  investigadores sobre  los criterios de evaluación de la producción académica.', '23', '8.23.4');
INSERT INTO `indicador` VALUES ('182', 'Documentos institucionales en los que se consignen las políticas de la Institución sobre el bienestar de la comunidad universitaria. ', '24', '9.24.1');
INSERT INTO `indicador` VALUES ('183', 'Número de programas y actividades anuales de Bienestar Institucional en marcha.', '24', '9.24.2');
INSERT INTO `indicador` VALUES ('184', 'Número de estudiantes que han recibido ayuda de Bienestar Institucional y tipo de ayuda.', '24', '9.24.3');
INSERT INTO `indicador` VALUES ('185', 'Información verificable en Informes de Gestión anual sobre la ejecución de los programas de Bienestar Universitario, la cobertura y el impacto de los mismos en la comunidad universitaria.', '24', '9.24.4');
INSERT INTO `indicador` VALUES ('186', 'Información verificable acerca de la asignación y ejecución presupuestal anual para actividades de Bienestar Universitario.', '24', '9.24.5');
INSERT INTO `indicador` VALUES ('187', 'Relación  de espacios destinados a los programas de Bienestar.', '24', '9.24.6');
INSERT INTO `indicador` VALUES ('188', 'Información verificable sobre estrategias de comunicación y proyección de los servicios de Bienestar Universitario a la comunidad universitaria ', '24', '9.24.7');
INSERT INTO `indicador` VALUES ('189', 'Información verificable sobre estrategias permanentes de divulgación y presentación de servicios de Bienestar Universitario a la comunidad universitaria.', '24', '9.24.8');
INSERT INTO `indicador` VALUES ('190', 'Información verificable de las encuestas anuales sobre los servicios y programas ofrecidos por  Bienestar Universitario.', '24', '9.24.9');
INSERT INTO `indicador` VALUES ('191', 'Información verificable de encuestas, diagnóstico y prevención de riesgos psicosociales, médicos y ambientales de la comunidad universitaria.', '24', '9.24.10');
INSERT INTO `indicador` VALUES ('192', 'Información verificable de estrategias dirigidas a facilitar la inclusión y permanencia de la población vulnerable y con discapacidad como parte del programa de integración para nuevos estudiantes.', '24', '9.24.11');
INSERT INTO `indicador` VALUES ('193', 'Documentos institucionales en los que se consignen los planes de emergencias y prevención de desastres de la Institución, programas de formación y simulacros.', '24', '9.24.12');
INSERT INTO `indicador` VALUES ('194', 'Divulgación  a  la  comunidad  académica  acerca  de  los planes de emergencias establecidos en la Institución.', '24', '9.24.13');
INSERT INTO `indicador` VALUES ('195', 'Señalización adecuada y rutas de evacuación definidas ante las situaciones de emergencias y desastres.', '24', '9.24.14');
INSERT INTO `indicador` VALUES ('196', 'Información verificable sobre políticas, lineamientos y organismos institucionales para la resolución armónica de conflictos en la comunidad institucional', '24', '9.24.15');
INSERT INTO `indicador` VALUES ('197', 'Documentos y políticas administrativas para el desarrollo de los procesos de docencia, investigación y extensión.', '25', '10.25.1');
INSERT INTO `indicador` VALUES ('198', 'Apreciación de directivos, profesores, estudiantes y personal administrativo acerca de las políticas administrativas y la gestión institucional para el desarrollo de la docencia, la investigación y la extensión.', '25', '10.25.2');
INSERT INTO `indicador` VALUES ('199', 'Información   verificable   acerca   de   los   procedimientos establecidos  para  la  satisfacción  de  las  necesidades en las unidades académicas y administrativas.', '25', '10.25.3');
INSERT INTO `indicador` VALUES ('200', 'Lineamientos y políticas institucionales relacionadas con la coherencia entre el Organigrama, el Mapa de Procesos y el Manual de Funciones.', '25', '10.25.4');
INSERT INTO `indicador` VALUES ('201', 'Información semestral sobre número de profesores, personal administrativo y directivo que laboran en la Institución y su relación con el número de estudiantes matriculados.', '25', '10.25.5');
INSERT INTO `indicador` VALUES ('202', 'Políticas y procedimientos para promoción y ascenso del personal Administrativo.', '25', '10.25.6');
INSERT INTO `indicador` VALUES ('203', 'Cobertura, contenido y continuidad según plan de capacitación anual de su personal administrativo y directivo.', '25', '10.25.7');
INSERT INTO `indicador` VALUES ('204', 'Número de cursos de capacitación, número total de personal administrativo.', '25', '10.25.8');
INSERT INTO `indicador` VALUES ('205', 'Apreciación  del  personal  administrativo  sobre  el  impacto en su desempeño como efecto de su participación en los programas de capacitación.', '25', '10.25.9');
INSERT INTO `indicador` VALUES ('206', 'Apreciación de profesores y estudiantes sobre la eficiencia del personal administrativo.', '25', '10.25.10');
INSERT INTO `indicador` VALUES ('207', 'Información verificable sobre la existencia de sistemas de información y de gestión documental propios de la historia académica de los estudiantes e historia laboral y académica de los profesores, así como la memoria de la gestión administrativa.', '25', '10.25.11');
INSERT INTO `indicador` VALUES ('208', 'Medios de comunicación e información internos y externos para divulgación  oficial,  motivación  y  capacitación a los miembros de la Institución.', '26', '10.26.1');
INSERT INTO `indicador` VALUES ('209', 'Política institucional sobre mantenimiento y procedimiento de actualización del sitio Web unicartagena.edu.co y sus páginas institucionales', '26', '10.26.2');
INSERT INTO `indicador` VALUES ('210', 'Apreciación de los usuarios sobre la funcionalidad, actualización  y uso de las páginas web de la Universidad.', '26', '10.26.3');
INSERT INTO `indicador` VALUES ('211', 'Política institucional sobre procedimiento de actualización de las páginas Web institucionales por parte de las unidades académicas', '26', '10.26.4');
INSERT INTO `indicador` VALUES ('212', 'Número de profesores que tienen actualizados su hoja de vida en el aplicativo CvLAC y su enlace desde la Web de Unicartagena. ', '26', '10.26.5');
INSERT INTO `indicador` VALUES ('213', 'Registro de visitas al sitio Web institucional', '26', '10.26.6');
INSERT INTO `indicador` VALUES ('214', 'Apreciación de los profesores, estudiantes, personal administrativo y egresados sobre la pertinencia y actualizada información del sitio Web institucional', '26', '10.26.7');
INSERT INTO `indicador` VALUES ('215', 'Políticas institucionales y procedimientos relacionados con los archivos documentales, tiempos de retención, de eliminación y custodia. ', '26', '10.26.8');
INSERT INTO `indicador` VALUES ('216', 'Apreciación de los usuarios sobre la eficacia de los medios de comunicación e información interno y externo.  ', '26', '10.26.9');
INSERT INTO `indicador` VALUES ('217', 'Existencia de tecnología eficiente que garantice la conectividad de la comunidad académica.', '26', '10.26.10');
INSERT INTO `indicador` VALUES ('218', 'Políticas  institucionales que garantizan los mecanismos de comunicación con los profesores y administrativos a través del correo electrónico institucional.', '26', '10.26.11');
INSERT INTO `indicador` VALUES ('219', 'Políticas  institucionales que garantizan los mecanismos de comunicación con extensión a la población estudiantil a través del correo electrónico institucional.', '26', '10.26.12');
INSERT INTO `indicador` VALUES ('220', 'Apreciación de los estudiantes sobre los mecanismos de comunicación que ofrece la Universidad para facilitar el acceso a la información.', '26', '10.26.13');
INSERT INTO `indicador` VALUES ('221', 'Información verificable sobre la conformación y dinámica de los organismos colegiados de la Institución.', '27', '10.27.1');
INSERT INTO `indicador` VALUES ('222', 'Información verificable sobre los resultados de los ejercicios de auditoría interna con relación a  los procedimientos, mecanismos de control, seguimiento y evaluación de la gestión Institucional', '27', '10.27.2');
INSERT INTO `indicador` VALUES ('223', 'Políticas y lineamientos institucionales coherentes con los procesos misionales de la Institución y el PEI', '27', '10.27.3');
INSERT INTO `indicador` VALUES ('224', 'Información verificable sobre la aplicación de los procedimientos relacionados con el proceso de Talento humano.', '27', '10.27.4');
INSERT INTO `indicador` VALUES ('225', 'Documentos   donde   se   indiquen   las   políticas   y   las estrategias para la creación y modificación de cargos directivos.', '27', '10.27.5');
INSERT INTO `indicador` VALUES ('226', 'Documentos   donde   se   indiquen la estructura organizacional y administrativa de la Institución.', '27', '10.27.6');
INSERT INTO `indicador` VALUES ('227', 'Documentos  que muestran las certificaciones del SGC según ISO9001 y NTC GP1000. ', '27', '10.27.7');
INSERT INTO `indicador` VALUES ('228', 'Resultados de las auditorías internas. ', '27', '10.27.8');
INSERT INTO `indicador` VALUES ('229', 'Documentos  relacionados con los listados maestros de documentos y registros, retención documental y procedimientos relacionados. ', '27', '10.27.9');
INSERT INTO `indicador` VALUES ('230', 'Información  verificable  sobre  estructura,  organización  y servicios que presta la biblioteca de la Institución.', '28', '11.28.1');
INSERT INTO `indicador` VALUES ('231', 'Número de colecciones digitales, impresas y bases de datos en servicio. ', '28', '11.28.2');
INSERT INTO `indicador` VALUES ('232', 'Número anual de estudiantes y profesores que consultan las bases de datos.', '28', '11.28.3');
INSERT INTO `indicador` VALUES ('233', 'Boletines anuales sobre uso y servicios de biblioteca.', '28', '11.28.4');
INSERT INTO `indicador` VALUES ('234', 'Información verificable sobre sistemas para informar a los usuarios sobre novedades bibliográficas y uso de bases de datos.', '28', '11.28.5');
INSERT INTO `indicador` VALUES ('235', 'Apreciación de profesores y estudiantes sobre la suficiencia y calidad de los servicios prestados por la biblioteca.', '28', '11.28.6');
INSERT INTO `indicador` VALUES ('236', 'Información verificable acerca del número y capacidad de laboratorios y talleres especializados de la Institución para el desarrollo de procesos de docencia, investigación y extensión.', '28', '11.28.7');
INSERT INTO `indicador` VALUES ('237', 'Información verificable acerca de los procesos de mantenimiento de laboratorios y talleres.', '28', '11.28.8');
INSERT INTO `indicador` VALUES ('238', 'Información   verificable   acerca   de   los   proyectos   de reposición de materiales, equipos de laboratorios y talleres, para evitar su obsolescencia,  renovación y adecuación de su planta física.', '28', '11.28.9');
INSERT INTO `indicador` VALUES ('239', 'Apreciación de profesores y estudiantes sobre la dotación, actualización, suficiencia y mantenimiento de laboratorios  ', '28', '11.28.10');
INSERT INTO `indicador` VALUES ('240', 'Número y características de los recursos y equipos de apoyo audiovisual y de los equipos básicos y especializados.', '28', '11.28.11');
INSERT INTO `indicador` VALUES ('241', 'Número de salones dotados con recursos y equipos audiovisuales e informáticos de apoyo/ número total de salones.', '28', '11.28.12');
INSERT INTO `indicador` VALUES ('242', 'Apreciación   del personal docente y administrativo sobre adecuación de la dotación de sus puestos de trabajo.', '28', '11.28.13');
INSERT INTO `indicador` VALUES ('243', 'Información verificable sobre la pertinencia de los sitios de práctica dispuestos  para las necesidades de docencia e investigación.', '28', '11.28.14');
INSERT INTO `indicador` VALUES ('244', 'Apreciación de los docentes y estudiantes acerca de la calidad, suficiencia y pertinencia de los sitios destinados para la realización de prácticas de los estudiantes.', '28', '11.28.15');
INSERT INTO `indicador` VALUES ('245', 'Número total y destinación de salas de cómputo en la Institución: descripción y dotación de salas de uso libre, salas especializadas, detalle de equipos y software disponibles.', '28', '11.28.16');
INSERT INTO `indicador` VALUES ('246', 'Apreciación de estudiantes y profesores sobre disponibilidad, actualización y mantenimiento de las salas de cómputo.', '28', '11.28.17');
INSERT INTO `indicador` VALUES ('247', 'Número de equipos de cómputo disponibles para profesores de planta.', '28', '11.28.18');
INSERT INTO `indicador` VALUES ('248', 'Número de estudiantes de pregrado por computador, de los destinados exclusivamente para el uso de  estudiantes.', '28', '11.28.19');
INSERT INTO `indicador` VALUES ('249', 'Información verificable sobre el ancho de banda para acceso a internet, tomando en cuenta el número de usuarios.', '28', '11.28.20');
INSERT INTO `indicador` VALUES ('250', 'Apreciación de profesores y estudiantes sobre servicios de correo electrónico institucional y acceso a Internet.', '28', '11.28.21');
INSERT INTO `indicador` VALUES ('251', 'Apreciación de estudiantes y profesores sobre la utilización de tecnologías de la información y comunicación para procesos de interacción docentes–estudiantes.', '28', '11.28.22');
INSERT INTO `indicador` VALUES ('252', 'Apreciación de estudiantes sobre los servicios de apoyo de las tecnologías de comunicación e información en los programas de educación virtual.', '28', '11.28.23');
INSERT INTO `indicador` VALUES ('253', 'Información  verificable  sobre  infraestructura  y  recursos especializados  disponibles  para  la  creación  y  puesta  en marcha de programas de educación virtual.', '28', '11.28.24');
INSERT INTO `indicador` VALUES ('254', 'Apreciación  de profesores  sobre la calidad, actualidad  y suficiencia de la infraestructura y equipos de apoyo para el desarrollo de los programas de educación virtual.', '28', '11.28.25');
INSERT INTO `indicador` VALUES ('255', 'Información verificable de convenios interinstitucionales activos que permita el acceso a recursos externos de apoyo académico.', '28', '11.28.26');
INSERT INTO `indicador` VALUES ('256', 'Información verificable  sobre  el presupuesto  dedicado  al equipamiento de laboratorios, bibliotecas y recursos didácticos.', '28', '11.28.27');
INSERT INTO `indicador` VALUES ('257', 'Apreciación de estudiantes y profesores sobre la inversión en equipos de laboratorio, bibliotecas y recursos didácticos.', '28', '11.28.28');
INSERT INTO `indicador` VALUES ('258', 'Información verificable sobre las características generales de la planta física: área total, distribución de las áreas ocupada y libre, ubicación de sede principal y otras.', '29', '11.29.1');
INSERT INTO `indicador` VALUES ('259', 'Apreciación de los miembros de la comunidad universitaria sobre la calidad, distribución y funcionalidad de la planta física.', '29', '11.29.2');
INSERT INTO `indicador` VALUES ('260', 'Número total de aulas, capacidad total en metros cuadrados, número de estudiantes que pueden albergar.', '29', '11.29.3');
INSERT INTO `indicador` VALUES ('261', 'Índice de capacidad: número de estudiantes/ total de metros cuadrados.', '29', '11.29.4');
INSERT INTO `indicador` VALUES ('262', 'Información verificable sobre la organización, funciones y responsables de unidad destinada a planeación, desarrollo, mantenimiento y distribución de espacios de la planta física de la Institución.', '29', '11.29.5');
INSERT INTO `indicador` VALUES ('263', 'Registros sobre crecimiento de la planta física y proyección de crecimiento.', '29', '11.29.6');
INSERT INTO `indicador` VALUES ('264', 'Apreciación de directivos, profesores, estudiantes y administrativos sobre las características de los diferentes espacios tísicos: accesibilidad, capacidad, iluminación, ventilación, condiciones de seguridad e higiene.', '29', '11.29.7');
INSERT INTO `indicador` VALUES ('265', 'Información  verificable  sobre  condiciones  de  acceso  y espacios para personas con limitaciones físicas.', '29', '11.29.8');
INSERT INTO `indicador` VALUES ('266', 'Apreciación de miembros de la comunidad universitaria sobre calidad, distribución y funcionalidad de las instalaciones deportivas y áreas recreativas.', '29', '11.29.9');
INSERT INTO `indicador` VALUES ('267', 'Información verificable sobre las fuentes de ingreso  para el  funcionamiento institucional.', '30', '12.30.1');
INSERT INTO `indicador` VALUES ('268', 'Información verificable sobre el porcentaje de contribución de las partículas al financiamiento institucional.', '30', '12.30.2');
INSERT INTO `indicador` VALUES ('269', 'Información verificable sobre la liquidez y flujo de efectivo para atender oportunamente los compromisos institucionales y las metas del Plan de Desarrollo.', '30', '12.30.3');
INSERT INTO `indicador` VALUES ('270', 'Información verificable sobre criterios y procedimientos para la elaboración del presupuesto.', '30', '12.30.4');
INSERT INTO `indicador` VALUES ('271', 'Información verificable acerca de la ejecución del presupuesto institucional.', '30', '12.30.5');
INSERT INTO `indicador` VALUES ('272', 'Información verificable sobre criterios y procedimientos para la evaluación del presupuesto.', '30', '12.30.6');
INSERT INTO `indicador` VALUES ('273', 'Información verificable acerca de la estructura del presupuesto y de la deuda anual, deudas y compromisos financieros. ', '30', '12.30.7');
INSERT INTO `indicador` VALUES ('274', 'Información verificable sobre la evaluación de la Revisoría Fiscal acerca de los estados financieros de la Institución.', '30', '12.30.8');
INSERT INTO `indicador` VALUES ('275', 'Información verificable sobre indicadores de gestión para evaluar la gestión de las dependencias financieras.', '30', '12.30.9');
INSERT INTO `indicador` VALUES ('276', 'Apreciación de la comunidad universitaria sobre la eficiencia y efectividad de los procedimientos y trámites financieros.', '30', '12.30.10');
INSERT INTO `indicador` VALUES ('277', 'Información verificable sobre la organización de las dependencias encargadas del manejo financiero.', '30', '12.30.11');
INSERT INTO `indicador` VALUES ('278', 'Información verificable sobre normas internas para la realización de los procedimientos y trámites financieros.', '30', '12.30.12');
INSERT INTO `indicador` VALUES ('279', 'Información   verificable   sobre   el   perfil   de   los funcionarios  que  laboran  en  las  dependencias encargadas del manejo financiero.', '30', '12.30.13');
INSERT INTO `indicador` VALUES ('280', 'Distribución del presupuesto según los procesos misionales.', '30', '12.30.14');

-- ----------------------------
-- Table structure for instrumento
-- ----------------------------
DROP TABLE IF EXISTS `instrumento`;
CREATE TABLE `instrumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instrumento
-- ----------------------------
INSERT INTO `instrumento` VALUES ('1', 'Encuestas', null);
INSERT INTO `instrumento` VALUES ('2', 'Información documental', null);
INSERT INTO `instrumento` VALUES ('3', 'Información numerica', null);

-- ----------------------------
-- Table structure for instrumentohasindicador
-- ----------------------------
DROP TABLE IF EXISTS `instrumentohasindicador`;
CREATE TABLE `instrumentohasindicador` (
  `instrumento_id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  PRIMARY KEY (`instrumento_id`,`indicador_id`),
  KEY `fk_instrumento_has_indicador_indicador1` (`indicador_id`),
  KEY `fk_instrumento_has_indicador_instrumento1` (`instrumento_id`),
  CONSTRAINT `fk_instrumento_has_indicador_indicador1` FOREIGN KEY (`indicador_id`) REFERENCES `indicador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_instrumento_has_indicador_instrumento1` FOREIGN KEY (`instrumento_id`) REFERENCES `instrumento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instrumentohasindicador
-- ----------------------------
INSERT INTO `instrumentohasindicador` VALUES ('2', '1');
INSERT INTO `instrumentohasindicador` VALUES ('2', '2');
INSERT INTO `instrumentohasindicador` VALUES ('1', '3');
INSERT INTO `instrumentohasindicador` VALUES ('2', '4');
INSERT INTO `instrumentohasindicador` VALUES ('2', '5');
INSERT INTO `instrumentohasindicador` VALUES ('1', '6');
INSERT INTO `instrumentohasindicador` VALUES ('2', '6');
INSERT INTO `instrumentohasindicador` VALUES ('2', '7');
INSERT INTO `instrumentohasindicador` VALUES ('3', '7');
INSERT INTO `instrumentohasindicador` VALUES ('1', '8');
INSERT INTO `instrumentohasindicador` VALUES ('2', '8');
INSERT INTO `instrumentohasindicador` VALUES ('2', '9');
INSERT INTO `instrumentohasindicador` VALUES ('1', '10');
INSERT INTO `instrumentohasindicador` VALUES ('2', '10');
INSERT INTO `instrumentohasindicador` VALUES ('2', '11');
INSERT INTO `instrumentohasindicador` VALUES ('3', '11');
INSERT INTO `instrumentohasindicador` VALUES ('1', '12');
INSERT INTO `instrumentohasindicador` VALUES ('2', '13');
INSERT INTO `instrumentohasindicador` VALUES ('3', '13');
INSERT INTO `instrumentohasindicador` VALUES ('2', '14');
INSERT INTO `instrumentohasindicador` VALUES ('2', '15');
INSERT INTO `instrumentohasindicador` VALUES ('3', '15');
INSERT INTO `instrumentohasindicador` VALUES ('2', '16');
INSERT INTO `instrumentohasindicador` VALUES ('2', '17');
INSERT INTO `instrumentohasindicador` VALUES ('1', '18');
INSERT INTO `instrumentohasindicador` VALUES ('3', '19');
INSERT INTO `instrumentohasindicador` VALUES ('1', '20');
INSERT INTO `instrumentohasindicador` VALUES ('2', '21');
INSERT INTO `instrumentohasindicador` VALUES ('1', '22');
INSERT INTO `instrumentohasindicador` VALUES ('2', '23');
INSERT INTO `instrumentohasindicador` VALUES ('2', '24');
INSERT INTO `instrumentohasindicador` VALUES ('2', '25');
INSERT INTO `instrumentohasindicador` VALUES ('2', '26');
INSERT INTO `instrumentohasindicador` VALUES ('3', '27');
INSERT INTO `instrumentohasindicador` VALUES ('2', '28');
INSERT INTO `instrumentohasindicador` VALUES ('1', '29');
INSERT INTO `instrumentohasindicador` VALUES ('3', '30');
INSERT INTO `instrumentohasindicador` VALUES ('2', '31');
INSERT INTO `instrumentohasindicador` VALUES ('3', '32');
INSERT INTO `instrumentohasindicador` VALUES ('1', '33');
INSERT INTO `instrumentohasindicador` VALUES ('3', '34');
INSERT INTO `instrumentohasindicador` VALUES ('1', '35');
INSERT INTO `instrumentohasindicador` VALUES ('3', '36');
INSERT INTO `instrumentohasindicador` VALUES ('2', '37');
INSERT INTO `instrumentohasindicador` VALUES ('1', '38');
INSERT INTO `instrumentohasindicador` VALUES ('2', '39');
INSERT INTO `instrumentohasindicador` VALUES ('1', '40');
INSERT INTO `instrumentohasindicador` VALUES ('2', '41');
INSERT INTO `instrumentohasindicador` VALUES ('3', '42');
INSERT INTO `instrumentohasindicador` VALUES ('2', '43');
INSERT INTO `instrumentohasindicador` VALUES ('1', '44');
INSERT INTO `instrumentohasindicador` VALUES ('3', '45');
INSERT INTO `instrumentohasindicador` VALUES ('2', '46');
INSERT INTO `instrumentohasindicador` VALUES ('3', '46');
INSERT INTO `instrumentohasindicador` VALUES ('2', '47');
INSERT INTO `instrumentohasindicador` VALUES ('2', '48');
INSERT INTO `instrumentohasindicador` VALUES ('3', '49');
INSERT INTO `instrumentohasindicador` VALUES ('2', '50');
INSERT INTO `instrumentohasindicador` VALUES ('2', '51');
INSERT INTO `instrumentohasindicador` VALUES ('3', '51');
INSERT INTO `instrumentohasindicador` VALUES ('3', '52');
INSERT INTO `instrumentohasindicador` VALUES ('2', '53');
INSERT INTO `instrumentohasindicador` VALUES ('1', '54');
INSERT INTO `instrumentohasindicador` VALUES ('2', '55');
INSERT INTO `instrumentohasindicador` VALUES ('3', '56');
INSERT INTO `instrumentohasindicador` VALUES ('1', '57');
INSERT INTO `instrumentohasindicador` VALUES ('2', '58');
INSERT INTO `instrumentohasindicador` VALUES ('3', '59');
INSERT INTO `instrumentohasindicador` VALUES ('1', '60');
INSERT INTO `instrumentohasindicador` VALUES ('2', '61');
INSERT INTO `instrumentohasindicador` VALUES ('2', '62');
INSERT INTO `instrumentohasindicador` VALUES ('3', '63');
INSERT INTO `instrumentohasindicador` VALUES ('1', '64');
INSERT INTO `instrumentohasindicador` VALUES ('2', '65');
INSERT INTO `instrumentohasindicador` VALUES ('2', '66');
INSERT INTO `instrumentohasindicador` VALUES ('2', '67');
INSERT INTO `instrumentohasindicador` VALUES ('3', '67');
INSERT INTO `instrumentohasindicador` VALUES ('3', '68');
INSERT INTO `instrumentohasindicador` VALUES ('2', '69');
INSERT INTO `instrumentohasindicador` VALUES ('3', '69');
INSERT INTO `instrumentohasindicador` VALUES ('3', '70');
INSERT INTO `instrumentohasindicador` VALUES ('2', '71');
INSERT INTO `instrumentohasindicador` VALUES ('2', '72');
INSERT INTO `instrumentohasindicador` VALUES ('2', '73');
INSERT INTO `instrumentohasindicador` VALUES ('3', '73');
INSERT INTO `instrumentohasindicador` VALUES ('2', '74');
INSERT INTO `instrumentohasindicador` VALUES ('1', '75');
INSERT INTO `instrumentohasindicador` VALUES ('2', '76');
INSERT INTO `instrumentohasindicador` VALUES ('3', '77');
INSERT INTO `instrumentohasindicador` VALUES ('3', '78');
INSERT INTO `instrumentohasindicador` VALUES ('3', '79');
INSERT INTO `instrumentohasindicador` VALUES ('3', '80');
INSERT INTO `instrumentohasindicador` VALUES ('3', '81');
INSERT INTO `instrumentohasindicador` VALUES ('2', '82');
INSERT INTO `instrumentohasindicador` VALUES ('2', '83');
INSERT INTO `instrumentohasindicador` VALUES ('1', '84');
INSERT INTO `instrumentohasindicador` VALUES ('1', '85');
INSERT INTO `instrumentohasindicador` VALUES ('3', '86');
INSERT INTO `instrumentohasindicador` VALUES ('3', '87');
INSERT INTO `instrumentohasindicador` VALUES ('3', '88');
INSERT INTO `instrumentohasindicador` VALUES ('2', '89');
INSERT INTO `instrumentohasindicador` VALUES ('3', '90');
INSERT INTO `instrumentohasindicador` VALUES ('2', '91');
INSERT INTO `instrumentohasindicador` VALUES ('2', '92');
INSERT INTO `instrumentohasindicador` VALUES ('2', '93');
INSERT INTO `instrumentohasindicador` VALUES ('2', '94');
INSERT INTO `instrumentohasindicador` VALUES ('2', '95');
INSERT INTO `instrumentohasindicador` VALUES ('2', '96');
INSERT INTO `instrumentohasindicador` VALUES ('3', '96');
INSERT INTO `instrumentohasindicador` VALUES ('2', '97');
INSERT INTO `instrumentohasindicador` VALUES ('3', '97');
INSERT INTO `instrumentohasindicador` VALUES ('2', '98');
INSERT INTO `instrumentohasindicador` VALUES ('3', '98');
INSERT INTO `instrumentohasindicador` VALUES ('3', '99');
INSERT INTO `instrumentohasindicador` VALUES ('3', '100');
INSERT INTO `instrumentohasindicador` VALUES ('3', '101');
INSERT INTO `instrumentohasindicador` VALUES ('3', '102');
INSERT INTO `instrumentohasindicador` VALUES ('3', '103');
INSERT INTO `instrumentohasindicador` VALUES ('1', '104');
INSERT INTO `instrumentohasindicador` VALUES ('3', '105');
INSERT INTO `instrumentohasindicador` VALUES ('3', '106');
INSERT INTO `instrumentohasindicador` VALUES ('3', '107');
INSERT INTO `instrumentohasindicador` VALUES ('3', '108');
INSERT INTO `instrumentohasindicador` VALUES ('3', '109');
INSERT INTO `instrumentohasindicador` VALUES ('2', '110');
INSERT INTO `instrumentohasindicador` VALUES ('3', '111');
INSERT INTO `instrumentohasindicador` VALUES ('3', '112');
INSERT INTO `instrumentohasindicador` VALUES ('2', '113');
INSERT INTO `instrumentohasindicador` VALUES ('3', '113');
INSERT INTO `instrumentohasindicador` VALUES ('3', '114');
INSERT INTO `instrumentohasindicador` VALUES ('2', '115');
INSERT INTO `instrumentohasindicador` VALUES ('3', '116');
INSERT INTO `instrumentohasindicador` VALUES ('1', '117');
INSERT INTO `instrumentohasindicador` VALUES ('3', '118');
INSERT INTO `instrumentohasindicador` VALUES ('2', '119');
INSERT INTO `instrumentohasindicador` VALUES ('2', '120');
INSERT INTO `instrumentohasindicador` VALUES ('1', '121');
INSERT INTO `instrumentohasindicador` VALUES ('2', '122');
INSERT INTO `instrumentohasindicador` VALUES ('3', '123');
INSERT INTO `instrumentohasindicador` VALUES ('1', '124');
INSERT INTO `instrumentohasindicador` VALUES ('3', '125');
INSERT INTO `instrumentohasindicador` VALUES ('3', '126');
INSERT INTO `instrumentohasindicador` VALUES ('3', '127');
INSERT INTO `instrumentohasindicador` VALUES ('2', '128');
INSERT INTO `instrumentohasindicador` VALUES ('3', '129');
INSERT INTO `instrumentohasindicador` VALUES ('3', '130');
INSERT INTO `instrumentohasindicador` VALUES ('3', '131');
INSERT INTO `instrumentohasindicador` VALUES ('3', '132');
INSERT INTO `instrumentohasindicador` VALUES ('3', '133');
INSERT INTO `instrumentohasindicador` VALUES ('3', '134');
INSERT INTO `instrumentohasindicador` VALUES ('3', '135');
INSERT INTO `instrumentohasindicador` VALUES ('3', '136');
INSERT INTO `instrumentohasindicador` VALUES ('2', '137');
INSERT INTO `instrumentohasindicador` VALUES ('3', '138');
INSERT INTO `instrumentohasindicador` VALUES ('1', '139');
INSERT INTO `instrumentohasindicador` VALUES ('3', '140');
INSERT INTO `instrumentohasindicador` VALUES ('2', '141');
INSERT INTO `instrumentohasindicador` VALUES ('2', '142');
INSERT INTO `instrumentohasindicador` VALUES ('3', '143');
INSERT INTO `instrumentohasindicador` VALUES ('3', '144');
INSERT INTO `instrumentohasindicador` VALUES ('2', '145');
INSERT INTO `instrumentohasindicador` VALUES ('3', '146');
INSERT INTO `instrumentohasindicador` VALUES ('3', '147');
INSERT INTO `instrumentohasindicador` VALUES ('2', '148');
INSERT INTO `instrumentohasindicador` VALUES ('3', '149');
INSERT INTO `instrumentohasindicador` VALUES ('2', '150');
INSERT INTO `instrumentohasindicador` VALUES ('3', '150');
INSERT INTO `instrumentohasindicador` VALUES ('2', '151');
INSERT INTO `instrumentohasindicador` VALUES ('3', '151');
INSERT INTO `instrumentohasindicador` VALUES ('2', '152');
INSERT INTO `instrumentohasindicador` VALUES ('3', '152');
INSERT INTO `instrumentohasindicador` VALUES ('2', '153');
INSERT INTO `instrumentohasindicador` VALUES ('3', '153');
INSERT INTO `instrumentohasindicador` VALUES ('1', '154');
INSERT INTO `instrumentohasindicador` VALUES ('1', '155');
INSERT INTO `instrumentohasindicador` VALUES ('2', '156');
INSERT INTO `instrumentohasindicador` VALUES ('3', '157');
INSERT INTO `instrumentohasindicador` VALUES ('3', '158');
INSERT INTO `instrumentohasindicador` VALUES ('2', '159');
INSERT INTO `instrumentohasindicador` VALUES ('3', '159');
INSERT INTO `instrumentohasindicador` VALUES ('1', '160');
INSERT INTO `instrumentohasindicador` VALUES ('2', '161');
INSERT INTO `instrumentohasindicador` VALUES ('3', '162');
INSERT INTO `instrumentohasindicador` VALUES ('3', '163');
INSERT INTO `instrumentohasindicador` VALUES ('2', '164');
INSERT INTO `instrumentohasindicador` VALUES ('1', '165');
INSERT INTO `instrumentohasindicador` VALUES ('2', '166');
INSERT INTO `instrumentohasindicador` VALUES ('2', '167');
INSERT INTO `instrumentohasindicador` VALUES ('3', '167');
INSERT INTO `instrumentohasindicador` VALUES ('2', '168');
INSERT INTO `instrumentohasindicador` VALUES ('2', '169');
INSERT INTO `instrumentohasindicador` VALUES ('2', '170');
INSERT INTO `instrumentohasindicador` VALUES ('3', '170');
INSERT INTO `instrumentohasindicador` VALUES ('2', '171');
INSERT INTO `instrumentohasindicador` VALUES ('3', '171');
INSERT INTO `instrumentohasindicador` VALUES ('2', '172');
INSERT INTO `instrumentohasindicador` VALUES ('1', '173');
INSERT INTO `instrumentohasindicador` VALUES ('2', '174');
INSERT INTO `instrumentohasindicador` VALUES ('3', '174');
INSERT INTO `instrumentohasindicador` VALUES ('2', '175');
INSERT INTO `instrumentohasindicador` VALUES ('2', '176');
INSERT INTO `instrumentohasindicador` VALUES ('2', '177');
INSERT INTO `instrumentohasindicador` VALUES ('2', '178');
INSERT INTO `instrumentohasindicador` VALUES ('3', '178');
INSERT INTO `instrumentohasindicador` VALUES ('1', '179');
INSERT INTO `instrumentohasindicador` VALUES ('2', '180');
INSERT INTO `instrumentohasindicador` VALUES ('3', '180');
INSERT INTO `instrumentohasindicador` VALUES ('1', '181');
INSERT INTO `instrumentohasindicador` VALUES ('2', '182');
INSERT INTO `instrumentohasindicador` VALUES ('3', '183');
INSERT INTO `instrumentohasindicador` VALUES ('3', '184');
INSERT INTO `instrumentohasindicador` VALUES ('2', '185');
INSERT INTO `instrumentohasindicador` VALUES ('3', '185');
INSERT INTO `instrumentohasindicador` VALUES ('3', '186');
INSERT INTO `instrumentohasindicador` VALUES ('2', '187');
INSERT INTO `instrumentohasindicador` VALUES ('2', '188');
INSERT INTO `instrumentohasindicador` VALUES ('1', '189');
INSERT INTO `instrumentohasindicador` VALUES ('2', '189');
INSERT INTO `instrumentohasindicador` VALUES ('2', '190');
INSERT INTO `instrumentohasindicador` VALUES ('2', '191');
INSERT INTO `instrumentohasindicador` VALUES ('3', '191');
INSERT INTO `instrumentohasindicador` VALUES ('2', '192');
INSERT INTO `instrumentohasindicador` VALUES ('3', '192');
INSERT INTO `instrumentohasindicador` VALUES ('2', '193');
INSERT INTO `instrumentohasindicador` VALUES ('2', '194');
INSERT INTO `instrumentohasindicador` VALUES ('3', '195');
INSERT INTO `instrumentohasindicador` VALUES ('2', '196');
INSERT INTO `instrumentohasindicador` VALUES ('2', '197');
INSERT INTO `instrumentohasindicador` VALUES ('1', '198');
INSERT INTO `instrumentohasindicador` VALUES ('2', '199');
INSERT INTO `instrumentohasindicador` VALUES ('2', '200');
INSERT INTO `instrumentohasindicador` VALUES ('2', '201');
INSERT INTO `instrumentohasindicador` VALUES ('3', '201');
INSERT INTO `instrumentohasindicador` VALUES ('2', '202');
INSERT INTO `instrumentohasindicador` VALUES ('2', '203');
INSERT INTO `instrumentohasindicador` VALUES ('3', '203');
INSERT INTO `instrumentohasindicador` VALUES ('3', '204');
INSERT INTO `instrumentohasindicador` VALUES ('1', '205');
INSERT INTO `instrumentohasindicador` VALUES ('1', '206');
INSERT INTO `instrumentohasindicador` VALUES ('2', '207');
INSERT INTO `instrumentohasindicador` VALUES ('2', '208');
INSERT INTO `instrumentohasindicador` VALUES ('2', '209');
INSERT INTO `instrumentohasindicador` VALUES ('1', '210');
INSERT INTO `instrumentohasindicador` VALUES ('2', '211');
INSERT INTO `instrumentohasindicador` VALUES ('3', '212');
INSERT INTO `instrumentohasindicador` VALUES ('3', '213');
INSERT INTO `instrumentohasindicador` VALUES ('2', '214');
INSERT INTO `instrumentohasindicador` VALUES ('2', '215');
INSERT INTO `instrumentohasindicador` VALUES ('1', '216');
INSERT INTO `instrumentohasindicador` VALUES ('2', '217');
INSERT INTO `instrumentohasindicador` VALUES ('2', '218');
INSERT INTO `instrumentohasindicador` VALUES ('3', '218');
INSERT INTO `instrumentohasindicador` VALUES ('2', '219');
INSERT INTO `instrumentohasindicador` VALUES ('3', '219');
INSERT INTO `instrumentohasindicador` VALUES ('1', '220');
INSERT INTO `instrumentohasindicador` VALUES ('2', '221');
INSERT INTO `instrumentohasindicador` VALUES ('2', '222');
INSERT INTO `instrumentohasindicador` VALUES ('2', '223');
INSERT INTO `instrumentohasindicador` VALUES ('2', '224');
INSERT INTO `instrumentohasindicador` VALUES ('2', '225');
INSERT INTO `instrumentohasindicador` VALUES ('2', '226');
INSERT INTO `instrumentohasindicador` VALUES ('2', '227');
INSERT INTO `instrumentohasindicador` VALUES ('2', '228');
INSERT INTO `instrumentohasindicador` VALUES ('3', '228');
INSERT INTO `instrumentohasindicador` VALUES ('2', '229');
INSERT INTO `instrumentohasindicador` VALUES ('2', '230');
INSERT INTO `instrumentohasindicador` VALUES ('2', '231');
INSERT INTO `instrumentohasindicador` VALUES ('3', '231');
INSERT INTO `instrumentohasindicador` VALUES ('3', '232');
INSERT INTO `instrumentohasindicador` VALUES ('2', '233');
INSERT INTO `instrumentohasindicador` VALUES ('2', '234');
INSERT INTO `instrumentohasindicador` VALUES ('1', '235');
INSERT INTO `instrumentohasindicador` VALUES ('2', '236');
INSERT INTO `instrumentohasindicador` VALUES ('3', '236');
INSERT INTO `instrumentohasindicador` VALUES ('2', '237');
INSERT INTO `instrumentohasindicador` VALUES ('2', '238');
INSERT INTO `instrumentohasindicador` VALUES ('1', '239');
INSERT INTO `instrumentohasindicador` VALUES ('3', '240');
INSERT INTO `instrumentohasindicador` VALUES ('3', '241');
INSERT INTO `instrumentohasindicador` VALUES ('1', '242');
INSERT INTO `instrumentohasindicador` VALUES ('2', '243');
INSERT INTO `instrumentohasindicador` VALUES ('1', '244');
INSERT INTO `instrumentohasindicador` VALUES ('3', '245');
INSERT INTO `instrumentohasindicador` VALUES ('1', '246');
INSERT INTO `instrumentohasindicador` VALUES ('3', '247');
INSERT INTO `instrumentohasindicador` VALUES ('3', '248');
INSERT INTO `instrumentohasindicador` VALUES ('2', '249');
INSERT INTO `instrumentohasindicador` VALUES ('1', '250');
INSERT INTO `instrumentohasindicador` VALUES ('1', '251');
INSERT INTO `instrumentohasindicador` VALUES ('1', '252');
INSERT INTO `instrumentohasindicador` VALUES ('2', '253');
INSERT INTO `instrumentohasindicador` VALUES ('3', '253');
INSERT INTO `instrumentohasindicador` VALUES ('1', '254');
INSERT INTO `instrumentohasindicador` VALUES ('2', '255');
INSERT INTO `instrumentohasindicador` VALUES ('2', '256');
INSERT INTO `instrumentohasindicador` VALUES ('3', '256');
INSERT INTO `instrumentohasindicador` VALUES ('1', '257');
INSERT INTO `instrumentohasindicador` VALUES ('2', '258');
INSERT INTO `instrumentohasindicador` VALUES ('3', '258');
INSERT INTO `instrumentohasindicador` VALUES ('1', '259');
INSERT INTO `instrumentohasindicador` VALUES ('3', '260');
INSERT INTO `instrumentohasindicador` VALUES ('3', '261');
INSERT INTO `instrumentohasindicador` VALUES ('2', '262');
INSERT INTO `instrumentohasindicador` VALUES ('2', '263');
INSERT INTO `instrumentohasindicador` VALUES ('3', '263');
INSERT INTO `instrumentohasindicador` VALUES ('1', '264');
INSERT INTO `instrumentohasindicador` VALUES ('2', '265');
INSERT INTO `instrumentohasindicador` VALUES ('1', '266');
INSERT INTO `instrumentohasindicador` VALUES ('2', '267');
INSERT INTO `instrumentohasindicador` VALUES ('3', '267');
INSERT INTO `instrumentohasindicador` VALUES ('2', '268');
INSERT INTO `instrumentohasindicador` VALUES ('3', '268');
INSERT INTO `instrumentohasindicador` VALUES ('2', '269');
INSERT INTO `instrumentohasindicador` VALUES ('2', '270');
INSERT INTO `instrumentohasindicador` VALUES ('2', '271');
INSERT INTO `instrumentohasindicador` VALUES ('2', '272');
INSERT INTO `instrumentohasindicador` VALUES ('2', '273');
INSERT INTO `instrumentohasindicador` VALUES ('3', '273');
INSERT INTO `instrumentohasindicador` VALUES ('2', '274');
INSERT INTO `instrumentohasindicador` VALUES ('2', '275');
INSERT INTO `instrumentohasindicador` VALUES ('1', '276');
INSERT INTO `instrumentohasindicador` VALUES ('2', '277');
INSERT INTO `instrumentohasindicador` VALUES ('2', '278');
INSERT INTO `instrumentohasindicador` VALUES ('2', '279');
INSERT INTO `instrumentohasindicador` VALUES ('2', '280');
INSERT INTO `instrumentohasindicador` VALUES ('3', '280');

-- ----------------------------
-- Table structure for muestra
-- ----------------------------
DROP TABLE IF EXISTS `muestra`;
CREATE TABLE `muestra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formula` varchar(500) DEFAULT NULL,
  `proceso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestra_proceso1` (`proceso_id`),
  CONSTRAINT `fk_muestra_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestra
-- ----------------------------
INSERT INTO `muestra` VALUES ('1', null, '1');

-- ----------------------------
-- Table structure for muestraadministrativo
-- ----------------------------
DROP TABLE IF EXISTS `muestraadministrativo`;
CREATE TABLE `muestraadministrativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `administrativo_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraadministrativo_muestra1` (`muestra_id`),
  KEY `fk_muestraadministrativo_administrativo1` (`administrativo_id`),
  CONSTRAINT `fk_muestraadministrativo_administrativo1` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraadministrativo_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestraadministrativo
-- ----------------------------

-- ----------------------------
-- Table structure for muestraagencia
-- ----------------------------
DROP TABLE IF EXISTS `muestraagencia`;
CREATE TABLE `muestraagencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `agenciagubernamental_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraagencia_agenciagubernamental1` (`agenciagubernamental_id`),
  KEY `fk_muestraagencia_muestra1` (`muestra_id`),
  CONSTRAINT `fk_muestraagencia_agenciagubernamental1` FOREIGN KEY (`agenciagubernamental_id`) REFERENCES `agenciagubernamental` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraagencia_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestraagencia
-- ----------------------------

-- ----------------------------
-- Table structure for muestracriterio
-- ----------------------------
DROP TABLE IF EXISTS `muestracriterio`;
CREATE TABLE `muestracriterio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `fuente_id` int(11) NOT NULL,
  `descripcioncriterio_id` int(11) NOT NULL,
  `persona_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestracriterio_muestra1` (`muestra_id`),
  KEY `fk_muestracriterio_fuente1` (`fuente_id`),
  KEY `fk_muestracriterio_descripcioncriterio1` (`descripcioncriterio_id`),
  KEY `fk_muestracriterio_persona1` (`persona_id`),
  CONSTRAINT `fk_muestracriterio_descripcioncriterio1` FOREIGN KEY (`descripcioncriterio_id`) REFERENCES `descripcioncriterio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestracriterio_fuente1` FOREIGN KEY (`fuente_id`) REFERENCES `fuente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestracriterio_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestracriterio_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestracriterio
-- ----------------------------

-- ----------------------------
-- Table structure for muestradirector
-- ----------------------------
DROP TABLE IF EXISTS `muestradirector`;
CREATE TABLE `muestradirector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `directorprograma_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestradirector_muestra1` (`muestra_id`),
  KEY `fk_muestradirector_directorprograma1` (`directorprograma_id`),
  CONSTRAINT `fk_muestradirector_directorprograma1` FOREIGN KEY (`directorprograma_id`) REFERENCES `directorprograma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestradirector_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestradirector
-- ----------------------------

-- ----------------------------
-- Table structure for muestradocente
-- ----------------------------
DROP TABLE IF EXISTS `muestradocente`;
CREATE TABLE `muestradocente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `docente_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraprofesor_muestra1` (`muestra_id`),
  KEY `fk_muestraprofesor_docente1` (`docente_id`),
  CONSTRAINT `fk_muestraprofesor_docente1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraprofesor_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestradocente
-- ----------------------------

-- ----------------------------
-- Table structure for muestraegresado
-- ----------------------------
DROP TABLE IF EXISTS `muestraegresado`;
CREATE TABLE `muestraegresado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `egresado_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraegresado_muestra1` (`muestra_id`),
  KEY `fk_muestraegresado_egresado1` (`egresado_id`),
  CONSTRAINT `fk_muestraegresado_egresado1` FOREIGN KEY (`egresado_id`) REFERENCES `egresado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraegresado_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestraegresado
-- ----------------------------

-- ----------------------------
-- Table structure for muestraempleador
-- ----------------------------
DROP TABLE IF EXISTS `muestraempleador`;
CREATE TABLE `muestraempleador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `empleador_id` int(11) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraempleador_muestra1` (`muestra_id`),
  KEY `fk_muestraempleador_empleador1` (`empleador_id`),
  CONSTRAINT `fk_muestraempleador_empleador1` FOREIGN KEY (`empleador_id`) REFERENCES `empleador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraempleador_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestraempleador
-- ----------------------------

-- ----------------------------
-- Table structure for muestraestudiante
-- ----------------------------
DROP TABLE IF EXISTS `muestraestudiante`;
CREATE TABLE `muestraestudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muestra_id` int(11) NOT NULL,
  `estudiante_id` varchar(25) NOT NULL,
  `conglomerado` varchar(45) DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_muestraestudiante_muestra1` (`muestra_id`),
  KEY `fk_muestraestudiante_estudiante1` (`estudiante_id`),
  CONSTRAINT `fk_muestraestudiante_estudiante1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraestudiante_muestra1` FOREIGN KEY (`muestra_id`) REFERENCES `muestra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muestraestudiante
-- ----------------------------

-- ----------------------------
-- Table structure for numericadocumental
-- ----------------------------
DROP TABLE IF EXISTS `numericadocumental`;
CREATE TABLE `numericadocumental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(500) NOT NULL,
  `responsable` varchar(500) NOT NULL,
  `medio` varchar(500) NOT NULL,
  `lugar` varchar(500) NOT NULL,
  `evaluacion` int(11) NOT NULL,
  `accion` varchar(500) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `instrumento_id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_numericadocumental_proceso1` (`proceso_id`),
  KEY `fk_numericadocumental_instrumentohasindicador1` (`instrumento_id`,`indicador_id`),
  CONSTRAINT `fk_numericadocumental_instrumentohasindicador1` FOREIGN KEY (`instrumento_id`, `indicador_id`) REFERENCES `instrumentohasindicador` (`instrumento_id`, `indicador_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_numericadocumental_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of numericadocumental
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `id` varchar(25) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES ('11101-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '1QYB41', '--');
INSERT INTO `persona` VALUES ('11101-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'HNHQ3I', '--');
INSERT INTO `persona` VALUES ('11101-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8LVMQD', '--');
INSERT INTO `persona` VALUES ('11103-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'SE6909', '--');
INSERT INTO `persona` VALUES ('11103-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CAUSBK', '--');
INSERT INTO `persona` VALUES ('11103-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RQ4FVR', '--');
INSERT INTO `persona` VALUES ('11109-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'Z2XLDN', '--');
INSERT INTO `persona` VALUES ('11109-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'IK8LLA', '--');
INSERT INTO `persona` VALUES ('11109-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7BIWOI', '--');
INSERT INTO `persona` VALUES ('11121-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '6KSZWQ', '--');
INSERT INTO `persona` VALUES ('11121-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ZJP0OL', '--');
INSERT INTO `persona` VALUES ('11121-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KBOXZF', '--');
INSERT INTO `persona` VALUES ('11123-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'SB9PJ6', '--');
INSERT INTO `persona` VALUES ('11123-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ULEMQC', '--');
INSERT INTO `persona` VALUES ('11123-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'J9R783', '--');
INSERT INTO `persona` VALUES ('11125-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7I5EPG', '--');
INSERT INTO `persona` VALUES ('11125-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RFQCGM', '--');
INSERT INTO `persona` VALUES ('11125-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '5Q4JA3', '--');
INSERT INTO `persona` VALUES ('11129-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'FP2I63', '--');
INSERT INTO `persona` VALUES ('11129-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7MECNE', '--');
INSERT INTO `persona` VALUES ('11129-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'U2BADI', '--');
INSERT INTO `persona` VALUES ('11135-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'PRG9GY', '--');
INSERT INTO `persona` VALUES ('11135-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'UBKH4S', '--');
INSERT INTO `persona` VALUES ('11135-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'UL71YU', '--');
INSERT INTO `persona` VALUES ('11136-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '6P3K3W', '--');
INSERT INTO `persona` VALUES ('11136-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'LGRZKV', '--');
INSERT INTO `persona` VALUES ('11136-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2XXS3Q', '--');
INSERT INTO `persona` VALUES ('11140-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '4UAZJR', '--');
INSERT INTO `persona` VALUES ('11140-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '1J2VLG', '--');
INSERT INTO `persona` VALUES ('11140-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8CI5DG', '--');
INSERT INTO `persona` VALUES ('11145-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'VQODTL', '--');
INSERT INTO `persona` VALUES ('11145-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '5FF9WL', '--');
INSERT INTO `persona` VALUES ('11145-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'N479XE', '--');
INSERT INTO `persona` VALUES ('11147-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'H2OXUR', '--');
INSERT INTO `persona` VALUES ('11147-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'DY6AXU', '--');
INSERT INTO `persona` VALUES ('11147-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'FLTVQH', '--');
INSERT INTO `persona` VALUES ('11148-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '9LNCQB', '--');
INSERT INTO `persona` VALUES ('11148-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'VCFUQ9', '--');
INSERT INTO `persona` VALUES ('11148-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'OC5O0I', '--');
INSERT INTO `persona` VALUES ('11150-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TS8UM4', '--');
INSERT INTO `persona` VALUES ('11150-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2615JH', '--');
INSERT INTO `persona` VALUES ('11150-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '9OY2NG', '--');
INSERT INTO `persona` VALUES ('11154-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'YHDSZB', '--');
INSERT INTO `persona` VALUES ('11154-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'NAO1XD', '--');
INSERT INTO `persona` VALUES ('11154-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'VLRZ1F', '--');
INSERT INTO `persona` VALUES ('11168-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8JXUBH', '--');
INSERT INTO `persona` VALUES ('11168-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7U9JP7', '--');
INSERT INTO `persona` VALUES ('11168-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'PKE13U', '--');
INSERT INTO `persona` VALUES ('11170-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CYPTNZ', '--');
INSERT INTO `persona` VALUES ('11170-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'O70B42', '--');
INSERT INTO `persona` VALUES ('11170-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '22YLVL', '--');
INSERT INTO `persona` VALUES ('11171-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8APSRZ', '--');
INSERT INTO `persona` VALUES ('11171-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'XEK3RS', '--');
INSERT INTO `persona` VALUES ('11171-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'XECJ8H', '--');
INSERT INTO `persona` VALUES ('11174-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ZRDW5K', '--');
INSERT INTO `persona` VALUES ('11174-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TNTHSD', '--');
INSERT INTO `persona` VALUES ('11174-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'F48E38', '--');
INSERT INTO `persona` VALUES ('11176-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '52EFMZ', '--');
INSERT INTO `persona` VALUES ('11176-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'HZEIEQ', '--');
INSERT INTO `persona` VALUES ('11176-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'PAMBJ2', '--');
INSERT INTO `persona` VALUES ('11179-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RNBVQA', '--');
INSERT INTO `persona` VALUES ('11179-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'NGS92N', '--');
INSERT INTO `persona` VALUES ('11179-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'B34XKW', '--');
INSERT INTO `persona` VALUES ('11185-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'JZ5H6N', '--');
INSERT INTO `persona` VALUES ('11185-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CX05HH', '--');
INSERT INTO `persona` VALUES ('11185-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'HYHHY5', '--');
INSERT INTO `persona` VALUES ('1120-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'R1GU3D', '--');
INSERT INTO `persona` VALUES ('1120-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '4V683V', '--');
INSERT INTO `persona` VALUES ('1120-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '31PIV4', '--');
INSERT INTO `persona` VALUES ('1120-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'WDRITF', '--');
INSERT INTO `persona` VALUES ('1120-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'UD0ZIC', '--');
INSERT INTO `persona` VALUES ('1120-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8TYVVR', '--');
INSERT INTO `persona` VALUES ('1120-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2DDHKE', '--');
INSERT INTO `persona` VALUES ('1120-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'O4RPB6', '--');
INSERT INTO `persona` VALUES ('1120-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2QUHE9', '--');
INSERT INTO `persona` VALUES ('1121-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2GL64M', '--');
INSERT INTO `persona` VALUES ('1121-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'VBZ70K', '--');
INSERT INTO `persona` VALUES ('1121-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'W01AR2', '--');
INSERT INTO `persona` VALUES ('1121-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TPD1FE', '--');
INSERT INTO `persona` VALUES ('1121-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '21KMYC', '--');
INSERT INTO `persona` VALUES ('1121-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'LD1BZ4', '--');
INSERT INTO `persona` VALUES ('1121-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2HD4Y1', '--');
INSERT INTO `persona` VALUES ('1121-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '0JKRIV', '--');
INSERT INTO `persona` VALUES ('1121-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '4G7GNO', '--');
INSERT INTO `persona` VALUES ('11229-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'IPN5BG', '--');
INSERT INTO `persona` VALUES ('11229-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ZX89J6', '--');
INSERT INTO `persona` VALUES ('11229-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'P673D6', '--');
INSERT INTO `persona` VALUES ('11263-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'YHOB8M', '--');
INSERT INTO `persona` VALUES ('11263-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '3M2FE0', '--');
INSERT INTO `persona` VALUES ('11263-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KEDNNJ', '--');
INSERT INTO `persona` VALUES ('1139-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'YLGRG6', '--');
INSERT INTO `persona` VALUES ('1139-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'YP6CDK', '--');
INSERT INTO `persona` VALUES ('1139-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RZE4B8', '--');
INSERT INTO `persona` VALUES ('1139-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8SODJ1', '--');
INSERT INTO `persona` VALUES ('1139-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RG79J5', '--');
INSERT INTO `persona` VALUES ('1139-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'Q5JF6R', '--');
INSERT INTO `persona` VALUES ('1139-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'PLXDTM', '--');
INSERT INTO `persona` VALUES ('1139-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ISEENZ', '--');
INSERT INTO `persona` VALUES ('1139-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7DDHRD', '--');
INSERT INTO `persona` VALUES ('1141-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CKN1ZJ', '--');
INSERT INTO `persona` VALUES ('1141-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'C9JOB9', '--');
INSERT INTO `persona` VALUES ('1141-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '855VDK', '--');
INSERT INTO `persona` VALUES ('1141-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'DCGVRF', '--');
INSERT INTO `persona` VALUES ('1141-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'W2YN0I', '--');
INSERT INTO `persona` VALUES ('1141-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'H57FON', '--');
INSERT INTO `persona` VALUES ('1141-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'A278FQ', '--');
INSERT INTO `persona` VALUES ('1141-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '49FBPA', '--');
INSERT INTO `persona` VALUES ('1141-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'EEGD1X', '--');
INSERT INTO `persona` VALUES ('1143-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'BZ2RBT', '--');
INSERT INTO `persona` VALUES ('1143-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'WMINVG', '--');
INSERT INTO `persona` VALUES ('1143-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '32NGGR', '--');
INSERT INTO `persona` VALUES ('1143-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'OMIESH', '--');
INSERT INTO `persona` VALUES ('1143-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RTHREI', '--');
INSERT INTO `persona` VALUES ('1143-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'D19Z6X', '--');
INSERT INTO `persona` VALUES ('1143-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KT78ZG', '--');
INSERT INTO `persona` VALUES ('1143-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ULHI5U', '--');
INSERT INTO `persona` VALUES ('1143-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '1GM45J', '--');
INSERT INTO `persona` VALUES ('11459-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '9FZPM2', '--');
INSERT INTO `persona` VALUES ('11459-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'XEN505', '--');
INSERT INTO `persona` VALUES ('11459-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'OLLGY3', '--');
INSERT INTO `persona` VALUES ('11459-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TU9NJ0', '--');
INSERT INTO `persona` VALUES ('11459-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '3Q59T0', '--');
INSERT INTO `persona` VALUES ('11459-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'U5W2MH', '--');
INSERT INTO `persona` VALUES ('1147-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'QJZ5Y9', '--');
INSERT INTO `persona` VALUES ('1147-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '71JN1B', '--');
INSERT INTO `persona` VALUES ('1147-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'WABMZT', '--');
INSERT INTO `persona` VALUES ('1147-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'S3PGGY', '--');
INSERT INTO `persona` VALUES ('1147-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2RNDVK', '--');
INSERT INTO `persona` VALUES ('1147-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'A1XB8N', '--');
INSERT INTO `persona` VALUES ('1147-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'BJ2DHT', '--');
INSERT INTO `persona` VALUES ('1147-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8BJZWA', '--');
INSERT INTO `persona` VALUES ('1147-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'XT9VTD', '--');
INSERT INTO `persona` VALUES ('1151-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'OD636A', '--');
INSERT INTO `persona` VALUES ('1151-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'NWK8ST', '--');
INSERT INTO `persona` VALUES ('1151-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RSBXY8', '--');
INSERT INTO `persona` VALUES ('1151-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'B3GG1J', '--');
INSERT INTO `persona` VALUES ('1151-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'M9DIYR', '--');
INSERT INTO `persona` VALUES ('1151-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '9K2DNH', '--');
INSERT INTO `persona` VALUES ('1151-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'BTOE5J', '--');
INSERT INTO `persona` VALUES ('1151-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '6ZMML3', '--');
INSERT INTO `persona` VALUES ('1151-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'DNMCP5', '--');
INSERT INTO `persona` VALUES ('1152-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CTHXLF', '--');
INSERT INTO `persona` VALUES ('1152-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'NPXGA6', '--');
INSERT INTO `persona` VALUES ('1152-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7VH016', '--');
INSERT INTO `persona` VALUES ('1152-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'WK5IHS', '--');
INSERT INTO `persona` VALUES ('1152-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'G6KP82', '--');
INSERT INTO `persona` VALUES ('1152-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TZ1H5F', '--');
INSERT INTO `persona` VALUES ('1152-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '9QVZ0F', '--');
INSERT INTO `persona` VALUES ('1152-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KKACX2', '--');
INSERT INTO `persona` VALUES ('1152-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'HD2H40', '--');
INSERT INTO `persona` VALUES ('1153-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KFVZX2', '--');
INSERT INTO `persona` VALUES ('1153-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '5P943L', '--');
INSERT INTO `persona` VALUES ('1153-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2Q52A0', '--');
INSERT INTO `persona` VALUES ('1153-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'MPJGR6', '--');
INSERT INTO `persona` VALUES ('1153-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '3IU5XW', '--');
INSERT INTO `persona` VALUES ('1153-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'BDPOTP', '--');
INSERT INTO `persona` VALUES ('1153-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'H7QH9W', '--');
INSERT INTO `persona` VALUES ('1153-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '2GZYAJ', '--');
INSERT INTO `persona` VALUES ('1153-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'M8PILA', '--');
INSERT INTO `persona` VALUES ('1154-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'L7G9PE', '--');
INSERT INTO `persona` VALUES ('1154-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '0JDG26', '--');
INSERT INTO `persona` VALUES ('1154-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RJVF77', '--');
INSERT INTO `persona` VALUES ('1154-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'UTHNHU', '--');
INSERT INTO `persona` VALUES ('1154-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '4XSE7K', '--');
INSERT INTO `persona` VALUES ('1154-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'E63C4D', '--');
INSERT INTO `persona` VALUES ('1154-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'KD9N3W', '--');
INSERT INTO `persona` VALUES ('1154-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'MWGTDG', '--');
INSERT INTO `persona` VALUES ('1154-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7MMK9J', '--');
INSERT INTO `persona` VALUES ('11602-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'XRTXLO', '--');
INSERT INTO `persona` VALUES ('11602-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7WXUG8', '--');
INSERT INTO `persona` VALUES ('11602-10', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'DGRNT2', '--');
INSERT INTO `persona` VALUES ('11602-11', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'TVC7JE', '--');
INSERT INTO `persona` VALUES ('11602-12', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '96BX5Y', '--');
INSERT INTO `persona` VALUES ('11602-13', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '7Q1SXA', '--');
INSERT INTO `persona` VALUES ('11602-14', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '3CBF1H', '--');
INSERT INTO `persona` VALUES ('11602-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'I5M1C4', '--');
INSERT INTO `persona` VALUES ('11602-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'OE7M3M', '--');
INSERT INTO `persona` VALUES ('11602-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'E4THSP', '--');
INSERT INTO `persona` VALUES ('11602-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'RVQFO0', '--');
INSERT INTO `persona` VALUES ('11602-6', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'AWL7QQ', '--');
INSERT INTO `persona` VALUES ('11602-7', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'WPAUJQ', '--');
INSERT INTO `persona` VALUES ('11602-8', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'FYB25B', '--');
INSERT INTO `persona` VALUES ('11602-9', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'ELYNS3', '--');
INSERT INTO `persona` VALUES ('11604-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '0WQXV4', '--');
INSERT INTO `persona` VALUES ('11604-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'CXSIVZ', '--');
INSERT INTO `persona` VALUES ('11604-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '209Y1Q', '--');
INSERT INTO `persona` VALUES ('11604-3', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '6731VC', '--');
INSERT INTO `persona` VALUES ('11604-4', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'J6AU3Z', '--');
INSERT INTO `persona` VALUES ('11604-5', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'E4IGN7', '--');
INSERT INTO `persona` VALUES ('11672-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'QSC1WC', '--');
INSERT INTO `persona` VALUES ('11672-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'A4FSBE', '--');
INSERT INTO `persona` VALUES ('11672-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'SWELM3', '--');
INSERT INTO `persona` VALUES ('11684-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'Y9U5FG', '--');
INSERT INTO `persona` VALUES ('11684-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '16154W', '--');
INSERT INTO `persona` VALUES ('11684-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'W0G8D6', '--');
INSERT INTO `persona` VALUES ('11685-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'X8I8NU', '--');
INSERT INTO `persona` VALUES ('11685-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'DQBNRD', '--');
INSERT INTO `persona` VALUES ('11685-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'SEVVRO', '--');
INSERT INTO `persona` VALUES ('11686-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'GDYXCZ', '--');
INSERT INTO `persona` VALUES ('11686-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'PUV3L8', '--');
INSERT INTO `persona` VALUES ('11686-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'IU8XAO', '--');
INSERT INTO `persona` VALUES ('11707-0', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'K4KG51', '--');
INSERT INTO `persona` VALUES ('11707-1', 'ESTUDIANTE (EST)', 'Usuario aleatorio', '8ZU6IQ', '--');
INSERT INTO `persona` VALUES ('11707-2', 'ESTUDIANTE (EST)', 'Usuario aleatorio', 'W3KRJ2', '--');
INSERT INTO `persona` VALUES ('12170-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'YO3OUU', '--');
INSERT INTO `persona` VALUES ('12170-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'ULK1OC', '--');
INSERT INTO `persona` VALUES ('1220-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'D2HK8Y', '--');
INSERT INTO `persona` VALUES ('1220-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'L7MN0E', '--');
INSERT INTO `persona` VALUES ('1220-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'TD202V', '--');
INSERT INTO `persona` VALUES ('1220-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'RWBHBE', '--');
INSERT INTO `persona` VALUES ('1220-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'ROPTED', '--');
INSERT INTO `persona` VALUES ('1220-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'BVMWZJ', '--');
INSERT INTO `persona` VALUES ('1221-0', 'DOCENTE (DOC)', 'Usuario aleatorio', '5TFSMX', '--');
INSERT INTO `persona` VALUES ('1221-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'VUK2BH', '--');
INSERT INTO `persona` VALUES ('1221-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'L4U2KZ', '--');
INSERT INTO `persona` VALUES ('1221-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'B3LYBQ', '--');
INSERT INTO `persona` VALUES ('1221-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'LCPGTQ', '--');
INSERT INTO `persona` VALUES ('1221-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'S5HOFR', '--');
INSERT INTO `persona` VALUES ('1239-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'FJHKGX', '--');
INSERT INTO `persona` VALUES ('1239-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'R4RA1J', '--');
INSERT INTO `persona` VALUES ('1239-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'QLYTIS', '--');
INSERT INTO `persona` VALUES ('1239-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'BXFIAR', '--');
INSERT INTO `persona` VALUES ('1239-4', 'DOCENTE (DOC)', 'Usuario aleatorio', '4CZQAY', '--');
INSERT INTO `persona` VALUES ('1239-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'G4RXVD', '--');
INSERT INTO `persona` VALUES ('1241-0', 'DOCENTE (DOC)', 'Usuario aleatorio', '76SLXT', '--');
INSERT INTO `persona` VALUES ('1241-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'M6RD7F', '--');
INSERT INTO `persona` VALUES ('1241-2', 'DOCENTE (DOC)', 'Usuario aleatorio', '104JXJ', '--');
INSERT INTO `persona` VALUES ('1241-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'DHLZDQ', '--');
INSERT INTO `persona` VALUES ('1241-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'RXBMDK', '--');
INSERT INTO `persona` VALUES ('1241-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'E2W52H', '--');
INSERT INTO `persona` VALUES ('1243-0', 'DOCENTE (DOC)', 'Usuario aleatorio', '44RMBN', '--');
INSERT INTO `persona` VALUES ('1243-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'R4J300', '--');
INSERT INTO `persona` VALUES ('1243-2', 'DOCENTE (DOC)', 'Usuario aleatorio', '1PUFNQ', '--');
INSERT INTO `persona` VALUES ('1243-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'H47X88', '--');
INSERT INTO `persona` VALUES ('1243-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'KHJ9YJ', '--');
INSERT INTO `persona` VALUES ('1243-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'Z1FJPA', '--');
INSERT INTO `persona` VALUES ('1247-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'FNHNEB', '--');
INSERT INTO `persona` VALUES ('1247-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'BD2R87', '--');
INSERT INTO `persona` VALUES ('1247-2', 'DOCENTE (DOC)', 'Usuario aleatorio', '5YCDC9', '--');
INSERT INTO `persona` VALUES ('1247-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'X3T2KE', '--');
INSERT INTO `persona` VALUES ('1247-4', 'DOCENTE (DOC)', 'Usuario aleatorio', '3VAMIG', '--');
INSERT INTO `persona` VALUES ('1247-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'KRC9PU', '--');
INSERT INTO `persona` VALUES ('1251-0', 'DOCENTE (DOC)', 'Usuario aleatorio', '99R2JZ', '--');
INSERT INTO `persona` VALUES ('1251-1', 'DOCENTE (DOC)', 'Usuario aleatorio', '0VE6P5', '--');
INSERT INTO `persona` VALUES ('1251-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'UUOPUA', '--');
INSERT INTO `persona` VALUES ('1251-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'L2SB2U', '--');
INSERT INTO `persona` VALUES ('1251-4', 'DOCENTE (DOC)', 'Usuario aleatorio', '8PZFW2', '--');
INSERT INTO `persona` VALUES ('1251-5', 'DOCENTE (DOC)', 'Usuario aleatorio', '5HLI5Q', '--');
INSERT INTO `persona` VALUES ('1252-0', 'DOCENTE (DOC)', 'Usuario aleatorio', '3K67OZ', '--');
INSERT INTO `persona` VALUES ('1252-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'OR7TK8', '--');
INSERT INTO `persona` VALUES ('1252-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'OUTLYI', '--');
INSERT INTO `persona` VALUES ('1252-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'XLUACB', '--');
INSERT INTO `persona` VALUES ('1252-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'ROT2PL', '--');
INSERT INTO `persona` VALUES ('1252-5', 'DOCENTE (DOC)', 'Usuario aleatorio', '9IQA2T', '--');
INSERT INTO `persona` VALUES ('1253-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'RGAHPG', '--');
INSERT INTO `persona` VALUES ('1253-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'C98W5P', '--');
INSERT INTO `persona` VALUES ('1253-2', 'DOCENTE (DOC)', 'Usuario aleatorio', 'L2FP66', '--');
INSERT INTO `persona` VALUES ('1253-3', 'DOCENTE (DOC)', 'Usuario aleatorio', '385DAD', '--');
INSERT INTO `persona` VALUES ('1253-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'JA1AEE', '--');
INSERT INTO `persona` VALUES ('1253-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'DXVJJF', '--');
INSERT INTO `persona` VALUES ('1254-0', 'DOCENTE (DOC)', 'Usuario aleatorio', 'SD5I0X', '--');
INSERT INTO `persona` VALUES ('1254-1', 'DOCENTE (DOC)', 'Usuario aleatorio', 'YP7VSF', '--');
INSERT INTO `persona` VALUES ('1254-2', 'DOCENTE (DOC)', 'Usuario aleatorio', '4IC1TR', '--');
INSERT INTO `persona` VALUES ('1254-3', 'DOCENTE (DOC)', 'Usuario aleatorio', 'BPAZ2K', '--');
INSERT INTO `persona` VALUES ('1254-4', 'DOCENTE (DOC)', 'Usuario aleatorio', 'MLL1UW', '--');
INSERT INTO `persona` VALUES ('1254-5', 'DOCENTE (DOC)', 'Usuario aleatorio', 'KEJYM5', '--');
INSERT INTO `persona` VALUES ('13Muestra-0', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', '6WDURG', '--');
INSERT INTO `persona` VALUES ('13Muestra-1', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', '07HKF3', '--');
INSERT INTO `persona` VALUES ('13Muestra-10', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'ULFQUC', '--');
INSERT INTO `persona` VALUES ('13Muestra-11', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', '7W6NNL', '--');
INSERT INTO `persona` VALUES ('13Muestra-12', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'B5K12S', '--');
INSERT INTO `persona` VALUES ('13Muestra-13', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'HWNO5Z', '--');
INSERT INTO `persona` VALUES ('13Muestra-2', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'H089J4', '--');
INSERT INTO `persona` VALUES ('13Muestra-3', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'E1QO63', '--');
INSERT INTO `persona` VALUES ('13Muestra-4', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'Y27I6P', '--');
INSERT INTO `persona` VALUES ('13Muestra-5', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'BBRPUY', '--');
INSERT INTO `persona` VALUES ('13Muestra-6', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'ESTPYJ', '--');
INSERT INTO `persona` VALUES ('13Muestra-7', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'RR8AO9', '--');
INSERT INTO `persona` VALUES ('13Muestra-8', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', 'X2PG8O', '--');
INSERT INTO `persona` VALUES ('13Muestra-9', 'ADMINISTRATIVOS (ADM)', 'Usuario aleatorio', '5L6VPX', '--');
INSERT INTO `persona` VALUES ('14Muestra-0', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', '6PI45V', '--');
INSERT INTO `persona` VALUES ('14Muestra-1', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'Y133RB', '--');
INSERT INTO `persona` VALUES ('14Muestra-10', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'DWP9LB', '--');
INSERT INTO `persona` VALUES ('14Muestra-11', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', '49FRYP', '--');
INSERT INTO `persona` VALUES ('14Muestra-12', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'KL7POR', '--');
INSERT INTO `persona` VALUES ('14Muestra-13', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', '2AHFFJ', '--');
INSERT INTO `persona` VALUES ('14Muestra-2', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', '0AAH21', '--');
INSERT INTO `persona` VALUES ('14Muestra-3', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'XNP8VO', '--');
INSERT INTO `persona` VALUES ('14Muestra-4', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'AA5AAS', '--');
INSERT INTO `persona` VALUES ('14Muestra-5', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'I0L2VN', '--');
INSERT INTO `persona` VALUES ('14Muestra-6', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'SYE2I1', '--');
INSERT INTO `persona` VALUES ('14Muestra-7', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'N0LR2U', '--');
INSERT INTO `persona` VALUES ('14Muestra-8', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'LAMR04', '--');
INSERT INTO `persona` VALUES ('14Muestra-9', 'DIRECTIVOS (DTVO', 'Usuario aleatorio', 'EZK9X5', '--');
INSERT INTO `persona` VALUES ('15Muestra-0', 'EGRESADOS (EGRE)', 'Usuario aleatorio', '20VT0G', '--');
INSERT INTO `persona` VALUES ('16Muestra-0', 'EMPLEADORES (EMPL)', 'Usuario aleatorio', 'E8AJHU', '--');
INSERT INTO `persona` VALUES ('45470344', 'Comite Facultad', 'Comite Facultad', 'institucional2012', 'acreditacion@unicartagena.edu.co');
INSERT INTO `persona` VALUES ('654321', 'Edna', 'Gómez Bustamante', 'acreditacion2012', 'acreditacion@unicartagena.edu.co');
INSERT INTO `persona` VALUES ('6602802', 'Comite Central', 'Comite Central', '2082066', 'acreditacion@unicartagena.edu.co');

-- ----------------------------
-- Table structure for ponderacioncaracteristica
-- ----------------------------
DROP TABLE IF EXISTS `ponderacioncaracteristica`;
CREATE TABLE `ponderacioncaracteristica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivelimportancia` float NOT NULL,
  `ponderacion` double NOT NULL,
  `justificacion` varchar(500) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `caracteristica_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ponderacioncaracteristica_proceso1` (`proceso_id`),
  KEY `fk_ponderacioncaracteristica_caracteristica1` (`caracteristica_id`),
  CONSTRAINT `fk_ponderacioncaracteristica_caracteristica1` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ponderacioncaracteristica_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ponderacioncaracteristica
-- ----------------------------

-- ----------------------------
-- Table structure for ponderacionfactor
-- ----------------------------
DROP TABLE IF EXISTS `ponderacionfactor`;
CREATE TABLE `ponderacionfactor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ponderacion` double NOT NULL,
  `justificacion` varchar(500) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `factor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ponderacionfactor_proceso1` (`proceso_id`),
  KEY `fk_ponderacionfactor_factor1` (`factor_id`),
  CONSTRAINT `fk_ponderacionfactor_factor1` FOREIGN KEY (`factor_id`) REFERENCES `factor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ponderacionfactor_proceso1` FOREIGN KEY (`proceso_id`) REFERENCES `proceso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ponderacionfactor
-- ----------------------------

-- ----------------------------
-- Table structure for pregunta
-- ----------------------------
DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(500) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `indicador_id` int(11) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `pregunta_padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pregunta_indicador1` (`indicador_id`),
  KEY `fk_pregunta_pregunta1` (`pregunta_padre`),
  CONSTRAINT `fk_pregunta_indicador1` FOREIGN KEY (`indicador_id`) REFERENCES `indicador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregunta_pregunta1` FOREIGN KEY (`pregunta_padre`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pregunta
-- ----------------------------
INSERT INTO `pregunta` VALUES ('1', 'Existe correspondencia entre la Misión, la tradición y la naturaleza de la Institución', 'Elegir 1-5', '3', '1.1.3.1 ', null);
INSERT INTO `pregunta` VALUES ('2', 'Existe un Sistema Integrado de Gestión para el aseguramiento de la calidad.', 'Elegir 1-5', '6', '1.1.6.1 ', null);
INSERT INTO `pregunta` VALUES ('3', 'Existen mecanismos para asegurar el control,  la  precisión  y  la  objetividad  de  la  información pública que se proporciona sobre la Institución.', 'Elegir 1-5', '8', '1.1.8.1 ', null);
INSERT INTO `pregunta` VALUES ('4', 'Existen políticas y lineamientos institucionales direccionados a la formación integral de los estudiantes', 'Elegir 1-5', '10', '1.3.1.1 ', null);
INSERT INTO `pregunta` VALUES ('5', 'El reglamento estudiantil  se aplicación adecuadamente.', 'Elegir 1-5', '12', '2.4.1.1 ', null);
INSERT INTO `pregunta` VALUES ('6', 'El procedimiento para la elección de representantes estudiantiles en los organismos de decisión es adecuado', 'Elegir 1-5', '18', '2.4.7.1 ', null);
INSERT INTO `pregunta` VALUES ('7', 'El  rigor  de  los procedimientos de admisión es adecuado', 'Elegir 1-5', '20', '2.5.2.1 ', null);
INSERT INTO `pregunta` VALUES ('8', 'El apoyo prestado por la Institución para favorecer su permanencia y evitar la deserción es de  calidad   y oportuno ', 'Elegir 1-5', '22', '2.5.4.1 ', null);
INSERT INTO `pregunta` VALUES ('9', 'Tiene conocimiento acerca de la aplicación de los procedimientos para la admisión de intercambios y transferencia de estudiantes de instituciones nacionales e internacionales', 'Elegir 1-5', '29', '2.5.11.1 ', null);
INSERT INTO `pregunta` VALUES ('10', 'Los  estímulos que ofrece la Institución a estudiantes destacados son los adecuados', 'Elegir 1-5', '33', '2.6.3.1 ', null);
INSERT INTO `pregunta` VALUES ('11', 'Son eficientes los medios  de  divulgación  y  socialización  de  los sistemas de crédito, subsidios, becas y estímulos', 'Elegir 1-5', '35', '2.6.5.1 ', null);
INSERT INTO `pregunta` VALUES ('12', 'Influye positivamente el Estatuto Docente en el logro de la Misión Institucional', 'Elegir 1-5', '38', '3.7.1.1 ', null);
INSERT INTO `pregunta` VALUES ('13', 'El Estatuto Docente se aplica eficazmente ', 'Elegir 1-5', '40', '3.7.3.1 ', null);
INSERT INTO `pregunta` VALUES ('14', 'Son adecuadas las prácticas en la aplicación del procedimiento para la elección de representantes de los profesorales en los organismos de decisión', 'Elegir 1-5', '44', '3.7.7.1 ', null);
INSERT INTO `pregunta` VALUES ('15', 'Es adecuada la relación de asignación de espacios para realizar con calidad las funciones asignadas', 'Elegir 1-5', '54', '3.8.10.1 ', null);
INSERT INTO `pregunta` VALUES ('16', 'Son adecuados los procedimientos de vinculación y evaluación de profesores', 'Elegir 1-5', '57', '3.9.3.1 ', null);
INSERT INTO `pregunta` VALUES ('17', 'Es coherente, rigurosa y transparente la aplicación del escalafón docente.', 'Elegir 1-5', '60', '3.9.6.1 ', null);
INSERT INTO `pregunta` VALUES ('18', 'Son adecuados los  programas  de desarrollo profesoral', 'Elegir 1-5', '64', '3.10.3.1 ', null);
INSERT INTO `pregunta` VALUES ('19', 'Son pertinentes los currículos y planes de estudio', 'Elegir 1-5', '75', '4.12.5.1 ', null);
INSERT INTO `pregunta` VALUES ('20', 'Los programas de la Institución son pertinentes y de calidad', 'Elegir 1-5', '84', '4.13.3.1 ', null);
INSERT INTO `pregunta` VALUES ('21', 'Los programas de la Institución son pertinentes y de calidad', 'Elegir 1-5', '85', '4.13.4.1 ', null);
INSERT INTO `pregunta` VALUES ('22', 'Es adecuado el impacto social que genera la Universidad de Cartagena.', 'Elegir 1-5', '104', '5.15.11.1 ', null);
INSERT INTO `pregunta` VALUES ('23', 'Es adecuada la influencia de la formación investigativa como parte integral de su formación', 'Elegir 1-5', '117', '6.17.3.1 ', null);
INSERT INTO `pregunta` VALUES ('24', 'Son suficientes las oportunidades que brinda la Institución de participación en el proceso de investigación', 'Elegir 1-5', '121', '6.17.7.1 ', null);
INSERT INTO `pregunta` VALUES ('25', 'Son suficientes los recursos académicos vinculados al trabajo investigativo:', 'Matriz', null, '6.18.2.1 ', null);
INSERT INTO `pregunta` VALUES ('26', 'Laboratorios', 'item', '124', '', '25');
INSERT INTO `pregunta` VALUES ('27', 'Equipos', 'item', '124', '', '25');
INSERT INTO `pregunta` VALUES ('28', 'Recursos bibliográficos', 'item', '124', '', '25');
INSERT INTO `pregunta` VALUES ('29', 'Recursos informáticos', 'item', '124', '', '25');
INSERT INTO `pregunta` VALUES ('30', 'Es suficiente el apoyo administrativo y financiero que brinda la Universidad a los procesos de investigación y creación artística y cultural. ', 'Elegir 1-5', '139', '6.18.17.1 ', null);
INSERT INTO `pregunta` VALUES ('31', 'Es adecuada  la  relación  de  las prácticas para el proceso de formación de los estudiantes', 'Elegir 1-5', '154', '7.19.10.1 ', null);
INSERT INTO `pregunta` VALUES ('32', 'Es adecuada la calidad y pertinencia de las prácticas  y desempeño de los egresados', 'Elegir 1-5', '155', '7.19.11.1 ', null);
INSERT INTO `pregunta` VALUES ('33', 'Es suficiente el apoyo de la Institución para la vinculación laboral', 'Elegir 1-5', '160', '7.20.2.1 ', null);
INSERT INTO `pregunta` VALUES ('34', 'Es adecuado el impacto de la presencia y participación de los egresados en  las actividades de la Universidad', 'Elegir 1-5', '165', '7.20.7.1 ', null);
INSERT INTO `pregunta` VALUES ('35', 'Son eficientes y efectivos los sistemas de información de la Institución', 'Elegir 1-5', '173', '8.22.2.1 ', null);
INSERT INTO `pregunta` VALUES ('36', 'Los procedimientos de evaluación para directivos, profesores y personal administrativo son eficaces', 'Elegir 1-5', '179', '8.23.2.1 ', null);
INSERT INTO `pregunta` VALUES ('37', 'Son eficientes los criterios de evaluación de la producción académica de profesores e investigadores', 'Elegir 1-5', '181', '8.23.4.1 ', null);
INSERT INTO `pregunta` VALUES ('38', 'Son suficientes los servicios de Bienestar Universitario a la comunidad universitaria', 'Elegir 1-5', '189', '9.24.8.1 ', null);
INSERT INTO `pregunta` VALUES ('39', 'Las políticas administrativas y la gestión institucional para el desarrollo de la docencia, la investigación y la extensión son eficaces', 'Elegir 1-5', '198', '10.25.2.1 ', null);
INSERT INTO `pregunta` VALUES ('40', 'Es suficiente el  impacto en el desempeño como efecto de su participación en los programas de capacitación', 'Elegir 1-5', '205', '10.25.9.1 ', null);
INSERT INTO `pregunta` VALUES ('41', 'Es eficiente del personal administrativo', 'Elegir 1-5', '206', '10.25.10.1 ', null);
INSERT INTO `pregunta` VALUES ('42', 'Es adecuada la funcionalidad, actualización y uso de las páginas web de la Universidad', 'Elegir 1-5', '210', '10.26.3.1 ', null);
INSERT INTO `pregunta` VALUES ('43', 'Son eficaces los medios de comunicación e información interno y externo en la Institución', 'Elegir 1-5', '216', '10.26.9.1 ', null);
INSERT INTO `pregunta` VALUES ('44', 'Son eficaces los mecanismos de comunicación que ofrece la Universidad para facilitar el acceso a la información por parte de los estudiantes ', 'Elegir 1-5', '220', '10.26.13.1 ', null);
INSERT INTO `pregunta` VALUES ('45', 'Son suficientes y de calidad de los servicios prestados por la biblioteca', 'Elegir 1-5', '235', '11.28.6.1 ', null);
INSERT INTO `pregunta` VALUES ('46', 'El mantenimiento de laboratorios es adecuado desde el punto de vista de:', 'Matriz', null, '11.28.10.1 ', null);
INSERT INTO `pregunta` VALUES ('47', 'La dotación', 'item', '239', '', '46');
INSERT INTO `pregunta` VALUES ('48', 'La actualización', 'item', '239', '', '46');
INSERT INTO `pregunta` VALUES ('49', 'La suficiencia', 'item', '239', '', '46');
INSERT INTO `pregunta` VALUES ('50', 'Es adecuada la dotación de sus puestos de trabajo', 'Elegir 1-5', '242', '11.28.13.1 ', null);
INSERT INTO `pregunta` VALUES ('51', 'Los sitios destinados para la realización de prácticas de los estudiantes son:', 'Matriz', null, '11.28.15.1 ', null);
INSERT INTO `pregunta` VALUES ('52', 'De calidad', 'item', '244', '', '51');
INSERT INTO `pregunta` VALUES ('53', 'Suficientes', 'item', '244', '', '51');
INSERT INTO `pregunta` VALUES ('54', 'Pertinentes', 'item', '244', '', '51');
INSERT INTO `pregunta` VALUES ('55', 'Las salas de cómputo son adecuadas desde el punto de vista de:', 'Matriz', null, '11.28.17.1 ', null);
INSERT INTO `pregunta` VALUES ('56', 'La disponibilidad', 'item', '246', '', '55');
INSERT INTO `pregunta` VALUES ('57', 'La actualización', 'item', '246', '', '55');
INSERT INTO `pregunta` VALUES ('58', 'El mantenimiento', 'item', '246', '', '55');
INSERT INTO `pregunta` VALUES ('59', 'Son eficaces los servicios de correo electrónico institucional y acceso a Internet ', 'Elegir 1-5', '250', '11.28.21.1 ', null);
INSERT INTO `pregunta` VALUES ('60', 'Es eficiente la utilización de tecnologías de la información y comunicación para procesos de interacción docentes–estudiantes', 'Elegir 1-5', '251', '11.28.22.1 ', null);
INSERT INTO `pregunta` VALUES ('61', 'Son adecuados los servicios de apoyo de las tecnologías de comunicación e información en los programas de educación virtual', 'Elegir 1-5', '252', '11.28.23.1 ', null);
INSERT INTO `pregunta` VALUES ('62', 'La infraestructura y equipos de apoyo para el desarrollo de los programas de educación virtual son de calidad, actualizados y suficientes', 'Elegir 1-5', '254', '11.28.25.1 ', null);
INSERT INTO `pregunta` VALUES ('63', 'Es suficiente la inversión en equipos de laboratorio, bibliotecas y recursos didácticos', 'Elegir 1-5', '257', '11.28.28.1 ', null);
INSERT INTO `pregunta` VALUES ('64', 'La planta física es adecuada desde el punto de vista de la calidad, distribución y funcionalidad.', 'Elegir 1-5', '259', '11.29.2.1 ', null);
INSERT INTO `pregunta` VALUES ('65', 'Son adecuadas las características de los diferentes espacios físicos desde el punto de vista de: ', 'Matriz', null, '11.29.7.1', null);
INSERT INTO `pregunta` VALUES ('66', 'Accesibilidad', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('67', 'Capacidad', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('68', 'Iluminación', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('69', 'Ventilación', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('70', 'Condiciones de seguridad', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('71', 'Higiene', 'item', '264', '', '65');
INSERT INTO `pregunta` VALUES ('72', 'Las instalaciones deportivas y áreas recreativas son adecuadas desde el punto de vista de su calidad, distribución y funcionalidad. ', 'Elegir 1-5', '266', '11.29.9.1 ', null);
INSERT INTO `pregunta` VALUES ('73', 'Son eficientes y efectivos los procedimientos y trámites financieros', 'Elegir 1-5', '276', '12.30.10.1 ', null);

-- ----------------------------
-- Table structure for privilegio
-- ----------------------------
DROP TABLE IF EXISTS `privilegio`;
CREATE TABLE `privilegio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilegio
-- ----------------------------

-- ----------------------------
-- Table structure for proceso
-- ----------------------------
DROP TABLE IF EXISTS `proceso`;
CREATE TABLE `proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` varchar(30) NOT NULL,
  `fechacierre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `programa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_proceso_programa1` (`programa_id`),
  CONSTRAINT `fk_proceso_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proceso
-- ----------------------------
INSERT INTO `proceso` VALUES ('1', 'Thu Sep 03 23:06:00 COT 2015', null, 'Proceso de Autoevaluación Institucional 2015-2 Prueba Piloto', '1');

-- ----------------------------
-- Table structure for programa
-- ----------------------------
DROP TABLE IF EXISTS `programa`;
CREATE TABLE `programa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `facultad_id` int(11) DEFAULT NULL,
  `sede_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_programa_facultad1` (`facultad_id`),
  KEY `fk_programa_sede1` (`sede_id`),
  CONSTRAINT `fk_programa_facultad1` FOREIGN KEY (`facultad_id`) REFERENCES `facultad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_programa_sede1` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of programa
-- ----------------------------
INSERT INTO `programa` VALUES ('1', 'INSTITUCIONAL', 'Universidad de Cartagena', null, null);
INSERT INTO `programa` VALUES ('2', 'LICENCIATURA EN PEDAGOGIA INFANTIL CONVENIO CON UNIVERSIDAD DEL TOLIMA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('3', 'TECNICO LABORAL EN PROCESAMIENTO Y CONSERVACION DE PRODUCTOS ACUICOLAS Y PESQUEROS - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('4', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('5', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('6', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('7', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('8', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('9', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('10', 'LICENCIATURA EN EDUCACION BASICA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('11', 'INGENIERIA DE ALIMENTOS', 'Pregrado', '5', null);
INSERT INTO `programa` VALUES ('12', 'ADMINISTRACION DE SERVICIOS DE SALUD - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('13', 'TECNOLOGIA DE ALIMENTOS MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('14', 'ADMINISTRACION DE SERVICIOS DE SALUD - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('15', 'ADMINISTRACION DE SERVICIOS DE SALUD - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('16', 'INGENIERIA DE SISTEMAS CNV - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('17', 'ADMINISTRACION FINANCIERA - CNV SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('18', 'TECNICO LABORAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('19', 'QUIMICA', 'Pregrado', '16', null);
INSERT INTO `programa` VALUES ('20', 'MATEMATICAS', 'Pregrado', '16', null);
INSERT INTO `programa` VALUES ('21', 'INGENIERIA CIVIL', 'Pregrado', '5', null);
INSERT INTO `programa` VALUES ('22', 'INGENIERIA DE SISTEMAS', 'Pregrado', '5', null);
INSERT INTO `programa` VALUES ('23', 'INGENIERIA QUIMICA', 'Pregrado', '5', null);
INSERT INTO `programa` VALUES ('24', 'ADMINISTRACION DE EMPRESAS NOCTURNA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('25', 'PROFESIONALIZACION EN ADMON EMPRESAS', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('26', 'LICENCIATURA EN PEDAGOGIA INFANTIL - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('27', 'LICENCIATURA EN PEDAGOGIA INFANTIL - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('28', 'INGENIERIA DE SISTEMAS CNV - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('29', 'ADMINISTRACION FINANCIERA - CNV LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('30', 'ADMINISTRACION FINANCIERA - CNV SINCE', 'Pregrado', '27', null);
INSERT INTO `programa` VALUES ('31', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('32', 'LICENCIATURA EN INFORMATICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('33', 'ADMINISTRACION FINANCIERA - CNV MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('34', 'TECNOLOGIA EN SISTEMAS INFORMATICOS CNV - MAGANGUE', 'Pregrado', '11', null);
INSERT INTO `programa` VALUES ('35', 'SALUD OCUPACIONAL CNV - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('36', 'LICENCIATURA EN PEDAGOGIA INFANTIL - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('37', 'LICENCIATURA EN PEDAGOGIA INFANTIL - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('38', 'INGENIERIA DE SISTEMAS CNV - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('39', 'COMUNICACION SOCIAL', 'Pregrado', '2', null);
INSERT INTO `programa` VALUES ('40', 'DERECHO VESPERTINO', 'Pregrado', '6', null);
INSERT INTO `programa` VALUES ('41', 'DERECHO DIURNO', 'Pregrado', '6', null);
INSERT INTO `programa` VALUES ('42', 'TRABAJO SOCIAL', 'Pregrado', '2', null);
INSERT INTO `programa` VALUES ('43', 'ECONOMIA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('44', 'ADMINISTRACION DE EMPRESAS DIURNA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('45', 'CONTADURIA PUBLICA NOCTURNA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('46', 'FILOSOFIA', 'Pregrado', '1', null);
INSERT INTO `programa` VALUES ('47', 'LINGUISTICA Y LITERATURA', 'Pregrado', '1', null);
INSERT INTO `programa` VALUES ('48', 'HISTORIA', 'Pregrado', '1', null);
INSERT INTO `programa` VALUES ('49', 'ADMINISTRACION INDUSTRIAL', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('50', 'CONTADURIA PUBLICA DIURNA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('51', 'MEDICINA', 'Pregrado', '3', null);
INSERT INTO `programa` VALUES ('52', 'ODONTOLOGIA', 'Pregrado', '4', null);
INSERT INTO `programa` VALUES ('53', 'QUIMICA FARMACEUTICA', 'Pregrado', '7', null);
INSERT INTO `programa` VALUES ('54', 'ENFERMERIA', 'Pregrado', '8', null);
INSERT INTO `programa` VALUES ('55', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS EN ARTISTICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('56', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('57', 'LICENCIATURA EN PEDAGOGIA INFANTIL - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('58', 'ADMINISTRACION TURISTICA Y HOTELERA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('59', 'TECNOLOGIA FORESTAL CARTAGENA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('60', 'SALUD OCUPACIONAL CNV - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('61', 'ADMINISTRACION DE SERVICIOS DE SALUD - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('62', 'TECNOLOGIA EN ELECTRONICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('63', 'LICENCIATURA EN INFORMATICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('64', 'ADMINISTRACION FINANCIERA - CNV TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('65', 'INGENIERIA DE SISTEMAS CNV - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('66', 'LICENCIATURA EN INFORMATICA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('67', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('68', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('69', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('70', 'TECNOLOGIA EN ELECTRONICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('71', 'ADMINISTRACION FINANCIERA - CNV PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('72', 'SALUD OCUPACIONAL CNV - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('73', 'TECNOLOGIA EN ELECTRONICA - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('74', 'ADMINISTRACION FINANCIERA - CNV ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('75', 'INGENIERIA DE SISTEMAS CNV - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('76', 'INGENIERIA DE SISTEMAS CNV - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('77', 'ADMINISTRACION DE SERVICIOS DE SALUD - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('78', 'CONTADURIA PUBLICA INFOTEC-U.MAGDALENA', 'Pregrado', '9', null);
INSERT INTO `programa` VALUES ('79', 'LICENCIATURA EN INFORMATICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('80', 'TEC.ALIMENTOS (SAN MARCOS)', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('81', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('82', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('83', 'INGENIERIA DE SISTEMAS CNV - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('84', 'ADMINISTRACION DE SERVICIOS DE SALUD - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('85', 'LICENCIATURA EN INFORMATICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('86', 'INGENIERIA DE SISTEMAS CNV - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('87', 'LICENCIATURA EN INFORMATICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('88', 'INGENIERIA DE SISTEMAS CNV - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('89', 'INGENIERIA DE SISTEMAS EN CONVENIO CON LA UNIVERSIDAD NACIONAL - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('90', 'TECNOLOGIA EN SISTEMAS INFORMATICOS CNV', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('91', 'TECNOLOGIA EN SISTEMAS CNV- SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('92', 'TECNOLOGIA EN SISTEMAS CNV - SANTA ROSA DEL SUR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('93', 'TECNOLOGIA EN SISTEMAS CNV - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('94', 'LICENCIATURA EN INFORMATICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('95', 'ADMINISTRACION DE SERVICIOS DE SALUD', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('96', 'TECNOLOGIA EN ELECTRONICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('97', 'ADMINISTRACION FINANCIERA - CNV CARTAGENA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('98', 'ADMINISTRACION DE SERVICIOS DE SALUD - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('99', 'INGENIERIA DE SISTEMAS CNV - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('100', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('101', 'MAESTRIA EN LA EDUCACION', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('102', 'LICENCIATURA EN TECNOLOGIA', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('103', 'ESPECIALIZACION EN CONVIVENCIA Y CONFLICTO SOCIAL', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('104', 'ESPECIALIZACION EN GESTION DE CENTROS EDUCATIVOS', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('105', 'ESPECIALIZACION EN PROCESOS SOCIALES DE LA FAMILIA', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('106', 'ADMINISTRACION DE PROGRAMAS DE DESARROLLO SOCIAL', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('107', 'ESPECIALIZACION EN TEORIA METODO Y TECNICA DE INVESTIGACION SOCIAL', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('108', 'ESPECIALIZACION EN ESTUDIO Y GESTION DE LA CULTURA', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('109', 'ESPECIALIZACION EN GESTION DE LA CALIDAD Y AUDITORIA EN SALUD', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('110', 'ESPECIALIZACION EN FINANZAS', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('111', 'ESPECIALIZACION EN GERENCIA EN SALUD', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('112', 'ESPECIALIZACION EN GESTION GERENCIAL', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('113', 'ESPECIALIZACION EN PLANEACION PARA EL DESARROLLO URBANO Y RURAL', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('114', 'ESPECIALIZACION EN REVISORIA FISCAL', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('115', 'ESPECIALIZACION EN GESTION DEL COMERCIO INTERNACIONAL Y DESARROLLO INDUSTRIAL', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('116', 'CIENCIA Y TECNOLOGIA DE ALIM.', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('117', 'MAESTRIA EN ESTUDIOS DE GENERO', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('118', 'MAESTRIA EN ADMINISTRACION', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('119', 'ESPECIALIZACION MEDICO QUIRURGICO', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('120', 'ESPECIALIZACION EN SALUD OCUPACIONAL', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('121', 'ESPECIALIZACION EN ENFERMERIA FAMILIAR Y COMUNITARIA', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('122', 'DOCTORADO EN CIENCIAS DE LA EDUCACIÓN', 'Postgrado', '60', null);
INSERT INTO `programa` VALUES ('123', 'ESPECIALIZACION EN ORTODONCIA', 'Postgrado', '4', null);
INSERT INTO `programa` VALUES ('124', 'ESPECIALIZACION EN ENDODONCIA', 'Postgrado', '4', null);
INSERT INTO `programa` VALUES ('125', 'ESPECIALIZACION EN ESTOMATOLOGIA Y CIRUGIA ORAL', 'Postgrado', '4', null);
INSERT INTO `programa` VALUES ('126', 'ESPECIALIZACION EN ADMINISTRACION DE PROGRAMAS DE DESARROLLO SOCIAL', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('127', 'MAESTRIA EN QUIMICA', 'Postgrado', '16', null);
INSERT INTO `programa` VALUES ('128', 'QUIMICA ANALITICA', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('129', 'MAESTRIA EN CIENCIAS FARMACEUTICAS', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('130', 'PROYECTO DE CONSTRUCCION', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('131', 'ESPECIALIZACION EN DIDACTICA DEL LENGUAJE Y LITERATURA', 'Postgrado', '1', null);
INSERT INTO `programa` VALUES ('132', 'QUIMICA ANALITICA', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('133', 'ESPECIALIZACION EN GERENCIA DE IMPUESTOS', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('134', 'HISTORIA Y LITERATURA DEL CARIBE COLOMBIANO', 'Postgrado', '1', null);
INSERT INTO `programa` VALUES ('135', 'MAESTRIA EN CIENCIAS AMBIENTALES', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('136', 'ESPECIALIZACION EN INGENIERIA DE VIAS TERRESTRES', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('137', 'ESPECIALIZACION EN GERENCIA EN PUERTOS', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('138', 'MAESTRIA EN EDUCACION', 'Postgrado', '2', null);
INSERT INTO `programa` VALUES ('139', 'MATERNO INFANTIL', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('140', 'MAESTRIA EN CIENCIAS FISICAS', 'Postgrado', '16', null);
INSERT INTO `programa` VALUES ('141', 'ESPECIALIZACION EN ENFERMERIA FAMILIAR Y COMUNITARIA', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('142', 'ADMINISTRACION DE SERVICIOS DE SALUD - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('143', 'ESPECIALIZACION EN GERENCIA DE INSTITUCIONES EDUCATIVAS', 'Postgrado', '31', null);
INSERT INTO `programa` VALUES ('144', 'ESPECIALIZACION EN GESTION PUBLICA', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('145', 'ESPECIALIZACION EN SEGURIDAD SOCIAL', 'Postgrado', '6', null);
INSERT INTO `programa` VALUES ('146', 'DERECHO DE FAMILIA', 'Postgrado', '6', null);
INSERT INTO `programa` VALUES ('147', 'ESPECIALIZACION EN ODONTOPEDIATRIA Y ORTOPEDIA MAXILAR', 'Postgrado', '4', null);
INSERT INTO `programa` VALUES ('148', 'MAESTRIA EN  INGENIERIA AMBIENTAL', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('149', 'ESPECIALIZACION EN PLANIFICACION EN TRANSITO Y TRANSPORTE', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('150', 'ESPECIALIZACION EN MATEMATICA AVANZADA', 'Postgrado', '16', null);
INSERT INTO `programa` VALUES ('151', 'ESPECIALIZACION EN GINECOLOGIA Y OBSTETRICIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('152', 'ESPECIALIZACION EN CIRUGIA GENERAL', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('153', 'ESPECIALIZACION EN ANESTESIOLOGÍA Y REANIMACION', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('154', 'ESPECIALIZACION EN MEDICINA INTERNA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('155', 'OFTALMOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('156', 'ESPECIALIZACION EN ORTOPEDIA Y TRAUMATOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('157', 'ESPECIALIZACION EN OTORRINOLARINGOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('158', 'ESPECIALIZACION EN PATOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('159', 'ESPECIALIZACION EN PEDIATRIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('160', 'ESPECIALIZACION EN UROLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('161', 'ESPECIALIZACION EN RADIOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('162', 'ESPECIALIZACION EN CIENCIAS PENALES Y CRIMINOLOGICAS', 'Postgrado', '6', null);
INSERT INTO `programa` VALUES ('163', 'ESPECIALIZACION EN GERENCIA DE PROYECTOS', 'Postgrado', '31', null);
INSERT INTO `programa` VALUES ('164', 'PLANEACION PARA EL DESARROLLO URBANO Y RURAL', 'Postgrado', '10', null);
INSERT INTO `programa` VALUES ('165', 'ESPECIALIZACION EN NEUROCIRUGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('166', 'ESPECIALIZACION EN INGENIERIA SANITARIA', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('167', 'ESPECIALIZACION EN PSIQUIATRIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('168', 'MAESTRIA EN FARMACOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('169', 'PREENDODONCIA', 'Postgrado', '4', null);
INSERT INTO `programa` VALUES ('170', 'MAESTRIA EN INMUNOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('171', 'MAESTRIA EN MATEMATICAS', 'Postgrado', '16', null);
INSERT INTO `programa` VALUES ('172', 'DIPLOMADO TERAPIA RESPIRATORIA', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('173', 'DIPLOMADO EN GESTION Y DESARROLLO COMUNITARIO', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('174', 'ESPECIALIZACION EN ESTRUCTURAS', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('175', 'GESTION DE LA SEG. INTEG. EN LA EMP.', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('176', 'ESPECIALIZACION EN ETICA Y FILOSOFIA POLITICA', 'Postgrado', '1', null);
INSERT INTO `programa` VALUES ('177', 'MAESTRIA EN MICROBIOLOGIA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('178', 'ADMINISTRACION FINANCIERA - CNV CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('179', 'DOCTORADO EN MEDICINA TROPICAL', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('180', 'HOMOLOGACION DE TITULOS DE ESPECIALIDAD', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('181', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('182', 'TECNOLOGIA EN GESTION TURISTICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('183', 'ESPECIALIZACION EN CUIDADO AL ADULTO Y NIÑO EN ESTADO CRITICO DE SALUD', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('185', 'ESPECIALIZACION EN CONCILIACION, ARBITRAJE Y RESOLUCION DE CONFLICTO', 'Postgrado', '6', null);
INSERT INTO `programa` VALUES ('186', 'ESPECIALIZACION EN ADMINISTRACION DE EMPRESAS', 'Postgrado', '9', null);
INSERT INTO `programa` VALUES ('198', 'CURSO ESPECIAL DE ESPANOL', 'Postgrado', '1', null);
INSERT INTO `programa` VALUES ('199', 'AUXILIAR EN SALUD ORAL', 'Pregrado', '25', null);
INSERT INTO `programa` VALUES ('201', 'SALUD OCUPACIONAL CNV - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('202', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('203', 'TECNOLOGIA EN GESTION PUBLICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('204', 'ADMINISTRACION PUBLICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('205', 'ADMINISTRACION FINANCIERA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('206', 'ADMINISTRACION FINANCIERA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('207', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('208', 'TECNOLOGIA EN GESTION TURISTICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('209', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('210', 'ADMINISTRACION TURISTICA Y HOTELERA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('211', 'ADMINISTRACION TURISTICA Y HOTELERA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('212', 'ADMINISTRACION TURISTICA Y HOTELERA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('213', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('214', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('215', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('216', 'ADMINISTRACION FINANCIERA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('217', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('218', 'TECNOLOGIA EN GESTION TURISTICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('219', 'TECNOLOGIA EN GESTION TURISTICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('220', 'ADMINISTRACION FINANCIERA - CNV SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('221', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('222', 'ADMINISTRACION TURISTICA Y HOTELERA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('223', 'ADMINISTRACION FINANCIERA - CNV SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('224', 'INGENIERIA DE SISTEMAS - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('225', 'LICENCIATURA EN PEDAGOGIA INFANTIL - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('226', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('227', 'ADMINISTRACION DE SERVICIOS DE SALUD - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('228', 'LICENCIATURA EN PEDAGOGIA INFANTIL - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('229', 'DOCTORADO EN CIENCIAS BIOMEDICAS', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('230', 'ADMINISTRACION DE SERVICIOS DE SALUD - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('231', 'TECNOLOGIA EN GESTION TURISTICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('232', 'TECNOLOGIA EN GESTION TURISTICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('233', 'TECNOLOGIA EN GESTION TURISTICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('234', 'TECNOLOGIA EN GESTION TURISTICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('235', 'TECNOLOGIA EN GESTION TURISTICA - MARIA LABAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('236', 'TECNOLOGIA EN GESTION TURISTICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('237', 'TECNOLOGIA EN GESTION TURISTICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('238', 'TECNOLOGIA EN GESTION TURISTICA - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('239', 'TECNOLOGIA EN GESTION TURISTICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('240', 'TECNOLOGIA EN GESTION TURISTICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('241', 'TECNOLOGIA EN GESTION TURISTICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('242', 'TECNOLOGIA EN GESTION TURISTICA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('243', 'TECNOLOGIA EN GESTION TURISTICA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('244', 'TECNOLOGIA EN GESTION TURISTICA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('245', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('246', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('247', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('248', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('249', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('250', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('251', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('252', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('253', 'TECNICO LABORAL EN PRODUCCION ACUICOLA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('254', 'ADMINISTRACION FINANCIERA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('255', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('256', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('257', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('258', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('259', 'ADMINISTRACION FINANCIERA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('260', 'ADMINISTRACION FINANCIERA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('261', 'ADMINISTRACION FINANCIERA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('262', 'ADMINISTRACION FINANCIERA - CNV CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('263', 'ESPECIALIZACION EN GERENCIA DE PROYECTOS DE CONSTRUCCION', 'Postgrado', '5', null);
INSERT INTO `programa` VALUES ('264', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('265', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('266', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('267', 'SALUD OCUPACIONAL CNV - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('268', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('269', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('270', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('271', 'SALUD OCUPACIONAL CNV - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('272', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('273', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('274', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('275', 'SALUD OCUPACIONAL CNV - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('276', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('277', 'ADMINISTRACION DE SERVICIOS DE SALUD - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('278', 'ADMINISTRACION FINANCIERA - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('279', 'ADMINISTRACION TURISTICA Y HOTELERA - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('280', 'LICENCIATURA EN INFORMATICA - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('281', 'SALUD OCUPACIONAL CNV - DCVE DISTRITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('282', 'TECNOLOGIA EN GESTION PUBLICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('283', 'ADMINISTRACION PUBLICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('284', 'TECNOLOGIA EN GESTION PUBLICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('285', 'ADMINISTRACION PUBLICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('286', 'ADMINISTRACION PUBLICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('287', 'TECNOLOGIA EN GESTION PUBLICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('288', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('289', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('290', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('291', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('292', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('293', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('294', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('295', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('296', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('297', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('298', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('299', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('300', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('301', 'LICENCIATURA EN PEDAGOGIA INFANTIL EN CONVENIO CON LA UNIVERSIDAD DEL TOLIMA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('302', 'LICENCIATURA EN PEDAGOGIA INFANTIL - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('303', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('304', 'ADMINISTRACION FINANCIERA - CNV SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('305', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('306', 'INGENIERIA DE SISTEMAS - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('307', 'LICENCIATURA EN INFORMATICA - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('308', 'LICENCIATURA EN LENGUA CASTELLANA - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('309', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS EN ARTISTICA - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('310', 'SALUD OCUPACIONAL CNV - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('311', 'LICENCIATURA EN PEDAGOGIA INFANTIL - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('312', 'LICENCIATURA EN INFORMATICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('313', 'ADMINISTRACION TURISTICA Y HOTELERA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('314', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('315', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('317', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('319', 'ADMINISTRACION DE SERVICIOS DE SALUD - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('320', 'ADMINISTRACION DE SERVICIOS DE SALUD - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('321', 'ADMINISTRACION FINANCIERA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('322', 'ADMINISTRACION FINANCIERA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('323', 'ADMINISTRACION FINANCIERA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('324', 'ADMINISTRACION FINANCIERA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('325', 'ADMINISTRACION FINANCIERA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('326', 'ADMINISTRACION FINANCIERA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('327', 'ADMINISTRACION FINANCIERA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('328', 'ADMINISTRACION FINANCIERA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('329', 'ADMINISTRACION FINANCIERA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('330', 'ADMINISTRACION FINANCIERA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('331', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('332', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('333', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('334', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('335', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('336', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('337', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('338', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('339', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('340', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('341', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('342', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('343', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('344', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('345', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('346', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('347', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('348', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('349', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('350', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('351', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('352', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('353', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CERES NELSON MAND.', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('354', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('356', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('357', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('358', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('359', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('360', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('361', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('362', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('363', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('364', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('365', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('366', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('367', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('368', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('369', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('370', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('371', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('372', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('373', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('374', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('375', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('376', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('377', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('378', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('379', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('380', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('381', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('382', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('383', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('384', 'ADMINISTRACION PUBLICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('385', 'ADMINISTRACION PUBLICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('386', 'ADMINISTRACION PUBLICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('387', 'ADMINISTRACION PUBLICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('388', 'ADMINISTRACION PUBLICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('389', 'ADMINISTRACION PUBLICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('390', 'ADMINISTRACION PUBLICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('391', 'ADMINISTRACION PUBLICA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('392', 'ADMINISTRACION PUBLICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('393', 'ADMINISTRACION PUBLICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('394', 'ADMINISTRACION PUBLICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('395', 'ADMINISTRACION PUBLICA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('396', 'ADMINISTRACION PUBLICA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('397', 'ADMINISTRACION PUBLICA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('398', 'TECNOLOGIA EN GESTION PUBLICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('399', 'TECNOLOGIA EN GESTION PUBLICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('400', 'TECNOLOGIA EN GESTION PUBLICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('401', 'TECNOLOGIA EN GESTION PUBLICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('402', 'TECNOLOGIA EN GESTION PUBLICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('403', 'TECNOLOGIA EN GESTION PUBLICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('404', 'TECNOLOGIA EN GESTION PUBLICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('405', 'TECNOLOGIA EN GESTION PUBLICA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('406', 'TECNOLOGIA EN GESTION PUBLICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('407', 'TECNOLOGIA EN GESTION PUBLICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('408', 'TECNOLOGIA EN GESTION PUBLICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('409', 'TECNOLOGIA EN GESTION PUBLICA - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('410', 'TECNOLOGIA EN GESTION PUBLICA - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('411', 'TECNOLOGIA EN GESTION PUBLICA - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('412', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('413', 'ADMINISTRACION AGROPECUARIA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('414', 'ADMINISTRACION DE EMPRESAS DISTANCIA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('415', 'INGENIERIA DE SISTEMAS - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('416', 'INGENIERIA DE SISTEMAS - COVEÑA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('417', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('418', 'TECNOLOGIA EN GESTION DE LA PRODUCCION AGRICOLA ECOLOGICA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('419', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - MAGANGUÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('420', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('421', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('422', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('423', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('424', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('425', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('426', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('427', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('428', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('429', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('430', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - TALAIGA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('431', 'TECNOLOGIA EN GESTION DE LA PRODUCCION  AGRICOLA ECOLOGICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('432', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('433', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('434', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('435', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('436', 'TECNICO PROFESIONAL EN PRODUCCION DE AGRICULTURA ECOLOGICA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('437', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('438', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('439', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('440', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('441', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('442', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('443', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('444', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('445', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - MAICAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('446', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - ARIGUANI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('447', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - MAICAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('448', 'TECNICO LABORAL EN PRODUCCION ACUICOLA - ARIGUANI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('449', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - MAICAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('450', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - ARIGUANI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('451', 'SALUD OCUPACIONAL CNV - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('452', 'SALUD OCUPACIONAL CNV - CERES CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('453', 'SALUD OCUPACIONAL CNV - CERES DANIEL LEMAITRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('454', 'SALUD OCUPACIONAL CNV - CERES  BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('455', 'SALUD OCUPACIONAL CNV - CERES OLAYA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('456', 'SALUD OCUPACIONAL CNV - CERES BOCACHICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('457', 'SALUD OCUPACIONAL CNV - CERES BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('458', 'ADMINISTRACION DE EMPRESAS TURISTICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('459', 'INGENIERIA DE SISTEMAS - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('460', 'INGENIERIA DE SISTEMAS - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('461', 'INGENIERIA DE SISTEMAS - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('462', 'INGENIERIA DE SISTEMAS - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('463', 'INGENIERIA DE SISTEMAS - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('464', 'INGENIERIA DE SISTEMAS - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('465', 'INGENIERIA DE SISTEMAS - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('466', 'INGENIERIA DE SISTEMAS - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('467', 'INGENIERIA DE SISTEMAS - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('468', 'INGENIERIA DE SISTEMAS - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('470', 'INGENIERIA DE SISTEMAS - NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('471', 'INGENIERIA DE SISTEMAS - CERES POZóN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('472', 'INGENIERIA DE SISTEMAS - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('473', 'INGENIERIA DE SISTEMAS - CERES BOCACHICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('474', 'INGENIERIA DE SISTEMAS - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('475', 'INGENIERIA DE SISTEMAS - CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('476', 'INGENIERIA DE SISTEMAS - CERES OLAYA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('477', 'INGENIERIA DE SISTEMAS - CERES BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('478', 'INGENIERIA DE SISTEMAS - CERES DANIEL LEMAITRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('479', 'INGENIERIA DE SISTEMAS - BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('480', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES BOCACHICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('481', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('482', 'ADMINISTRACION DE SERVICIOS DE SALUD - CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('483', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES OLAYA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('484', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('485', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERES DANIEL LEMAITRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('486', 'ADMINISTRACION DE SERVICIOS DE SALUD - BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('487', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES BOCACHICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('488', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('489', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('490', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES OLAYA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('491', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('492', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES DANIEL LEMETRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('493', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERES BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('494', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERES BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('495', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('496', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('497', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - MAGANGUÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('498', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('499', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - ACHÍ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('500', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('501', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - PINILLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('502', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - CLEMENCIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('503', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - CARMEN DE BOLIVAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('504', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - SINCE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('505', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('506', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('507', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('508', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('509', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('510', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - ARJONA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('511', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - PUERTO BADEL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('512', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - ROCHA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('513', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN ESTANISLAO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('514', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SOPLA VIENTO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('515', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN CRISTOBAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('516', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CALAMAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('517', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MAHATE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('518', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MALA GANA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('519', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - PALENQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('520', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('521', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - VILLA NUEVA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('522', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SANTA ROSA NORTE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('523', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SANTA ROSA SUR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('524', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('525', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN JACINTO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('526', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - EL GUAMO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('527', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('528', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('530', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SINCELEJO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('531', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - COROZAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('532', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - BETULIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('533', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - OVEJAS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('534', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - EL ROBLE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('535', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN BENITO ABAD', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('536', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MAJAGUAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('537', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SUCRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('538', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - GUARANDA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('539', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - GALERA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('540', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CHALAN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('542', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAMPUES', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('543', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TOLU', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('544', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CAIMITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('545', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - LA UNION', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('546', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TOLU VIEJO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('547', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('548', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN ANTERO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('549', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - MOÑITOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('550', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - SAN BERNARDO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('551', 'TECNICO PROFESIONAL EN PRODUCCION  AGRICOLA ECOLOGICA - TUCHIN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('552', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - ARJONA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('553', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - PUERTO BADEL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('554', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - ROCHA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('555', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SOPLAVIENTO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('556', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN CRISTOBAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('557', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CALAMAR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('558', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MAHATE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('559', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MALAGANA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('560', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - PALENQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('561', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('562', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - VILLA NUEVA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('563', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SANTA ROSA NORTE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('564', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SANTA ROSA SUR', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('565', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - EL GUAMO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('566', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('567', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - NECHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('568', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SINCELEJO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('569', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - COROZAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('570', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - BETULIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('571', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - OVEJAS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('572', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - EL ROBLE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('573', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN BENITO ABAD', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('574', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MAJAGUAL', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('575', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SUCRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('576', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - GUARANDA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('577', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - GALERA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('578', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CHALAN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('579', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAMPUES', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('580', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - TOLU', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('581', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CAIMITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('582', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - LA UNION', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('583', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - TOLU VIEJO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('584', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('585', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN ANTERO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('586', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - MOÑITOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('587', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - SAN BERNARDO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('588', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - TUCHIN', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('589', 'LICENCIATURA EN INFORMATICA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('590', 'LICENCIATURA EN PEDAGOGIA INFANTIL - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('591', 'LICENCIATURA EN EDUCACION CON ENFASIS EN LENGUA CASTELLANA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('592', 'INGENIERIA DE SISTEMAS - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('593', 'ADMINISTRACION DE SERVICIOS DE SALUD - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('594', 'ADMINISTRACION DE EMPRESAS DISTANCIA - LORICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('595', 'ADMINISTRACION DE EMPRESAS DISTANCIA - MAGANGUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('596', 'TECNICO LABORAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('597', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('598', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - ZAMBRANO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('599', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - SAN ONOFRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('600', 'ADMINISTRACION DE EMPRESAS DISTANCIA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('601', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('602', 'ADMINISTRACION FINANCIERA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('603', 'INGENIERIA DE SISTEMAS - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('604', 'ADMINISTRACION DE SERVICIOS DE SALUD - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('605', 'TECNICO LABORAL EN PRODUCCION ACUICOLA - TOLU', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('606', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - TOLU VIEJO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('607', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - GALERAS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('608', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CAIMITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('609', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - LA UNION', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('610', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - SAN ONOFRE', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('611', 'TECNICO LABORAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - TOLU', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('612', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - TOLU VIEJO', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('613', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - GALERAS', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('614', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CAIMITO', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('615', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - LA UNION', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('617', 'TECNICO LABORAL EN PROCESAMIENTO Y CONSERVACION DE PRODUCTOS  ACUICOLAS Y PESQUEROS - TOLU', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('619', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - GALERAS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('620', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - CAIMITO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('621', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - LA UNION', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('622', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - LA UNION', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('623', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SAN JACINTO DEL CAUCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('624', 'ADMINISTRACION DE EMPRESAS DISTANCIA - SAN MARCOS', 'Pregrado', '14', null);
INSERT INTO `programa` VALUES ('625', 'ADMINISTRACION DE EMPRESAS DISTANCIA - SAN JUAN NEPOMUCENO', 'Pregrado', '28', null);
INSERT INTO `programa` VALUES ('626', 'ADMINISTRACION DE EMPRESAS DISTANCIA - CARMEN DE BOLIVAR', 'Pregrado', '18', null);
INSERT INTO `programa` VALUES ('627', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - COVEÑAS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('628', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('629', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES OLAYA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('630', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES DANIEL LEMAITRE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('631', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('632', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES BOCACHICA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('633', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('634', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - NARIÑO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('635', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - NARIÑO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('636', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - NARIÑO', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('637', 'TECNICO PROFESIONAL EN PROCES. Y CONSER. DE PRODUC. ACUICOLAS Y PESQUEROS - NARIÑO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('638', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES BAYUNCA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('639', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - CERES CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('640', 'LICENCIATURA EN INFORMATICA - TALIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('641', 'LICENCIATURA EN INFORMATICA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('642', 'LICENCIATURA EN INFORMATICA - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('643', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - TALAIGUA NUEVO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('644', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - TURBACO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('645', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - SAN JUAN NEPOMUCENO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('646', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS CASTELLANO - SAN MARCOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('647', 'TECNOLOGIA EN ADMINISTRACION AGROPECUARIA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('648', 'TECNOLOGIA EN GESTION TURISTICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('649', 'ADMINISTRACION PUBLICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('650', 'LICENCIATURA EN INFORMATICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('651', 'LICENCIATURA EN EDUCACION BASICA CON ENFASIS EN ARTISTICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('652', 'LICENCIATURA EN PEDAGOGIA INFANTIL - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('653', 'SALUD OCUPACIONAL CNV - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('654', 'INGENIERIA DE SISTEMAS - MARIA LA BAJA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('655', 'TECNICO PROFESIONAL EN OPERACION TURISTICA - PALMITOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('656', 'INGENIERIA DE SISTEMAS - SAN PELAYO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('657', 'ADMINISTRACION DE SERVICIOS DE SALUD - SAN PELAYO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('658', 'ADMINISTRACION DE EMPRESAS DISTANCIA - SAN PELAYO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('659', 'ADMINISTRACION FINANCIERA - SAN PELAYO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('660', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - SAN PELAYO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('661', 'ADMINISTRACION FINANCIERA - CERES CARMELO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('662', 'BIOLOGIA', 'Pregrado', '16', null);
INSERT INTO `programa` VALUES ('663', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - MOMPOX', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('664', 'ADMINISTRACION DE EMPRESAS DISTANCIA - ACHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('665', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('666', 'TECNICO PROFESIONAL EN SERVICIOS GASTRONOMICOS - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('667', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CERES DANIEL LEMAITRE', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('668', 'TECNICO PROFESIONAL EN SERVICIOS GASTRONOMICOS - CERES BOSQUE', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('669', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('670', 'TECNICO PROFESIONAL EN SERVICIOS GASTRONOMICOS - CERES PASACABALLOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('671', 'ADMINISTRACION FINANCIERA - CARMEN DE BOLIVAR', 'Pregrado', '18', null);
INSERT INTO `programa` VALUES ('672', 'MAESTRIA EN BIOQUIMICA', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('673', 'INGENIERIA DE SISTEMAS - NECHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('674', 'ADMINISTRACION DE SERVICIOS DE SALUD - NECHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('675', 'ADMINISTRACION DE EMPRESAS DISTANCIA - NECHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('676', 'TECNICA PROFESIONAL EN PROCESOS DE GESTION PUBLICA - NECHI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('677', 'ADMINISTRACION AGROPECUARIA - SIMITI', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('678', 'TECNOLOGIA EN SERVICO A BORDO - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('679', 'TECNOLOGIA  EN GESTION HOTELERA - CARTAGENA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('680', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CERES NELSON MANDELA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('681', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('682', 'TECNICO PROFESIONAL EN SERVICIOS GASTRONOMICOS - CERES POZON', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('683', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CERES SAN JOSE DE LOS CAMPANOS', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('684', 'DOCTORADO EN CIENCIAS FISICAS', 'Postgrado', '19', null);
INSERT INTO `programa` VALUES ('685', 'DOCTORADO EN TOXICOLOGIA AMBIENTAL', 'Postgrado', '7', null);
INSERT INTO `programa` VALUES ('686', 'DOCTORADO EN CIENCIAS', 'Postgrado', '16', null);
INSERT INTO `programa` VALUES ('687', 'ADMINISTRACION FINANCIERA -  CNV CARTAGENA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('688', 'ADMINISTRACION FINANCIERA - CVN SINCE', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('689', 'ADMINISTRACION FINANCIERA CNV - TURBACO', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('690', 'ADMINISTRACION FINANCIERA  CNV- SAN MARCOS', 'Pregrado', '14', null);
INSERT INTO `programa` VALUES ('691', 'ADMINISTRACION FINANCIERA CNV - MAGANGUE', 'Pregrado', '11', null);
INSERT INTO `programa` VALUES ('692', 'ADMINISTRACION FINANCIERA CNV - LORICA', 'Pregrado', '22', null);
INSERT INTO `programa` VALUES ('693', 'TECNICO PROFESIONAL EN ADMINISTRACION AGROPECUARIA - CARTAGENA - ARTICULADO', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('694', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('695', 'TECNICO PROFESIONAL EN PROCESAMIENTO Y CONSERVACION DE PRODUCTOS ACUICOLAS Y PESQUEROS - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('696', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('697', 'TECNICA PROFESIONAL EN PROCESOS METROLOGICOS', 'Pregrado', '16', null);
INSERT INTO `programa` VALUES ('698', 'TECNICO LABORAL EN ADMINISTRACION AGROPECUARIA - CARTAGENA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('699', 'TECNICO PROFESIONAL EN GUIANZA Y SERVICIOS RECREATIVOS - CERES BOSQUE', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('700', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - LORICA', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('701', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - ARIGUANI', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('702', 'TECNICO PROFESIONAL EN PRODUCCION ACUICOLA - TOLU', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('703', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - TOLU', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('704', 'TECNICO PROFESIONAL EN PROCESAMIENTO Y CONSERVACION DE PRODUCTOS  ACUICOLAS Y PESQUEROS - TOLU', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('705', 'TECNICO PROFESIONAL EN PROCESAMIENTO CONCENTRADO PARA PECES Y ESPECIES MENORES - ZAMBRANO', 'Pregrado', '19', null);
INSERT INTO `programa` VALUES ('706', 'TECNOLOGIA EN SISTEMA - CNV CARTAGENA', 'Pregrado', '10', null);
INSERT INTO `programa` VALUES ('707', 'MAESTRIA EN ENFERMERIA', 'Postgrado', '8', null);
INSERT INTO `programa` VALUES ('708', 'TECNOLOGIA EN GESTION PUBLICA - CERETÉ', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('997', 'DIPLOMADO EN DOCENCIA UNIV.POR COMPETENCIAS', 'Postgrado', '3', null);
INSERT INTO `programa` VALUES ('998', 'CURSOS EXTRACURRICULARES DE INGLÉS', 'Pregrado', '98', null);
INSERT INTO `programa` VALUES ('999', 'CURSOS VIRTUALES', 'Pregrado', '99', null);
INSERT INTO `programa` VALUES ('1000', 'CURSOS DE INGLES', 'Pregrado', '3', null);
INSERT INTO `programa` VALUES ('1001', 'EXTENSION UNIVERSITARIA', 'Pregrado', '31', null);
INSERT INTO `programa` VALUES ('1002', 'TECNICO LABORAL EN PRODUCCION ACUICOLA - CARTAGENA', 'Pregrado', '31', null);

-- ----------------------------
-- Table structure for representante
-- ----------------------------
DROP TABLE IF EXISTS `representante`;
CREATE TABLE `representante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) NOT NULL,
  `persona_id` varchar(25) NOT NULL,
  `programa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_representante_programa1` (`programa_id`),
  KEY `fk_representante_persona1` (`persona_id`),
  CONSTRAINT `fk_representante_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_representante_programa1` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of representante
-- ----------------------------
INSERT INTO `representante` VALUES ('1', 'Comite Facultad', '45470344', '1');
INSERT INTO `representante` VALUES ('2', 'Comite Central', '6602802', '1');
INSERT INTO `representante` VALUES ('3', 'Autoevaluacion Institucional', '654321', '1');

-- ----------------------------
-- Table structure for representantehasprivilegio
-- ----------------------------
DROP TABLE IF EXISTS `representantehasprivilegio`;
CREATE TABLE `representantehasprivilegio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `representante_id` int(11) NOT NULL,
  `privilegio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_representantehasprivilegio_representante1` (`representante_id`),
  KEY `fk_representantehasprivilegio_privilegio1` (`privilegio_id`),
  CONSTRAINT `fk_representantehasprivilegio_privilegio1` FOREIGN KEY (`privilegio_id`) REFERENCES `privilegio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_representantehasprivilegio_representante1` FOREIGN KEY (`representante_id`) REFERENCES `representante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of representantehasprivilegio
-- ----------------------------

-- ----------------------------
-- Table structure for resultadoevaluacion
-- ----------------------------
DROP TABLE IF EXISTS `resultadoevaluacion`;
CREATE TABLE `resultadoevaluacion` (
  `idResultadoEvaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(45) DEFAULT NULL,
  `encabezado_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  PRIMARY KEY (`idResultadoEvaluacion`),
  KEY `fk_ResultadoEvaluacion_encabezado1` (`encabezado_id`),
  KEY `fk_ResultadoEvaluacion_pregunta1` (`pregunta_id`),
  CONSTRAINT `fk_ResultadoEvaluacion_encabezado1` FOREIGN KEY (`encabezado_id`) REFERENCES `encabezado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ResultadoEvaluacion_pregunta1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resultadoevaluacion
-- ----------------------------

-- ----------------------------
-- Table structure for sede
-- ----------------------------
DROP TABLE IF EXISTS `sede`;
CREATE TABLE `sede` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sede
-- ----------------------------
