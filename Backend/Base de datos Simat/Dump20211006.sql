-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: tablassimatsql
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idEstudiante` int NOT NULL AUTO_INCREMENT,
  `idUsuariosEstudiante` int NOT NULL,
  `idSedeEducativaEstudiante` int DEFAULT NULL,
  `estrato` varchar(45) DEFAULT NULL,
  `nombresAcudiente` varchar(45) DEFAULT NULL,
  `apellidosAcudiente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`),
  KEY `UsuarioEstudiante` (`idUsuariosEstudiante`) /*!80000 INVISIBLE */,
  KEY `SedeEducativaEstudiante` (`idSedeEducativaEstudiante`) /*!80000 INVISIBLE */,
  CONSTRAINT `sedeeducativaestudiante` FOREIGN KEY (`idSedeEducativaEstudiante`) REFERENCES `sedeeducativa` (`idSedeEducativa`),
  CONSTRAINT `UsuarioEstudiante` FOREIGN KEY (`idUsuariosEstudiante`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,1,1,'4','Ramon','Cataño'),(2,2,2,'4','Jose','Carrillo'),(3,3,3,'6','Fernando','Quintero'),(4,22,4,'1','LiaLis','Quintana'),(5,23,5,'2','Jose ','Carrillo'),(6,24,6,'8','Azula','Carrillo');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `idMatricula` int NOT NULL AUTO_INCREMENT,
  `idEstudianteMatricula` int NOT NULL,
  `year` varchar(4) NOT NULL,
  `periodo` varchar(45) NOT NULL,
  `fechaMatricula` date NOT NULL,
  `grado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idMatricula`),
  UNIQUE KEY `idMatricula_UNIQUE` (`idMatricula`),
  UNIQUE KEY `idEstudianteMatricula_UNIQUE` (`idEstudianteMatricula`),
  KEY `idEstudianteMatricula` (`idEstudianteMatricula`) /*!80000 INVISIBLE */,
  CONSTRAINT `EstudianteMatricula` FOREIGN KEY (`idEstudianteMatricula`) REFERENCES `estudiante` (`idEstudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (2,5,'2021','1','2021-01-01','2'),(3,6,'2021','2','2021-06-01','3'),(5,4,'2021','1','2021-01-01','4');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `idProfesores` int NOT NULL AUTO_INCREMENT,
  `idUsuariosProfesores` int NOT NULL,
  `tipoContrato` varchar(45) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `escalafon` varchar(45) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaEgreso` date DEFAULT NULL,
  PRIMARY KEY (`idProfesores`),
  UNIQUE KEY `idProfesorescol_UNIQUE` (`idProfesores`),
  UNIQUE KEY `idUsuariosProfesores_UNIQUE` (`idUsuariosProfesores`),
  CONSTRAINT `UsuarioProfesores` FOREIGN KEY (`idUsuariosProfesores`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,7,'Tiempo Completo',5000000,'TrabajadoraSocial','6','1983-02-01','2020-01-14'),(2,8,'Medio Tiempo',5000000,'psicologo','B','1996-02-01','2019-12-31'),(6,18,'Tiempo Completo',5000000,'De la nasa','5','2020-01-01','2020-12-31'),(7,20,'Medio Tiempo',8000000,'abogada','8','1900-01-01','1900-01-01'),(8,21,'Tiempo Completo',0,'dsdfdf','null','1900-01-01','1900-01-01');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedeeducativa`
--

DROP TABLE IF EXISTS `sedeeducativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedeeducativa` (
  `idSedeEducativa` int NOT NULL AUTO_INCREMENT,
  `sedeEducativacol` varchar(45) DEFAULT NULL,
  `nid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSedeEducativa`),
  UNIQUE KEY `idSedeEducativa_UNIQUE` (`idSedeEducativa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedeeducativa`
--

LOCK TABLES `sedeeducativa` WRITE;
/*!40000 ALTER TABLE `sedeeducativa` DISABLE KEYS */;
INSERT INTO `sedeeducativa` VALUES (1,'San Pedro','12'),(2,'San Pedro XX','13'),(3,'Saleciano','17'),(4,'Potosi','15'),(5,'San Carlos','18'),(6,'San Pedro','19');
/*!40000 ALTER TABLE `sedeeducativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `tipoUsuario` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `tipoIdentificacion` varchar(45) NOT NULL,
  `identificacion` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `eps` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'camilo','123','Estudiante','Camilo','Cataño','CC-Cedula de Ciudadania','23232','calle 21','21221321','cam@gmail.com','Masculino','Solter@','2002-01-01','sanitas'),(2,'maria','123','Estudiante','Maria','Ramirez','TI-Tarjeta Identidad','000003','calle 7','32222222','peq@gmail.com','Femenino','Solter@','2016-12-10','famisanar'),(3,'estefania','123','Estudiante','Estefania','Perez','CC-Cedula de Ciudadania','111111','calle 8','32333333','e@gmail.com','Femenino','Solter@','1983-01-11','sanitas'),(7,'veronica','123','Profesor','Veronica','Garcia','CC-Cedula de Ciudadania','000005','calle 13','454545445','v@gmail.com','Femenino','Casad@','1983-12-11','medimas'),(8,'ligia','123','Profesor','Ligia','Moreno','CC-Cedula de Ciudadania','000006','calle 13','32888888','li@gmail.com','Femenino','Casad@','1970-04-04','sanitas'),(18,'sharon','456','Profesor','Sharon','Tellez','CC-Cedula de Ciudadania','35345435','calle 14','424234','s@gmail.com','Femenino','Casad@','1983-12-11','sanitas'),(20,'Nini','123','Profesor','Nini','Martinez','CC-Cedula de Ciudadania','325435456','null','null','null','Femenino','Casad@','1900-01-01','fdgfdgfd'),(21,'jose','123','Profesor','jose','Maria','CC-Cedula de Ciudadania','44355','null','null','null','Masculino','Casad@','1900-01-01','rtfghfgh'),(22,'vero','123','Estudiante','Vero ','Carrillo','CC-Cedula de Ciudadania','122345',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'carmen','123','Estudiante','Carmen','Quintana','TI-Tarjeta Identidad','2342343',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'mercy','12345','Estudiante','Mercy','Carrillo','CC-Cedula de Ciudadania','43534554','calle 25','3424242','mercy@gmail.com','Masculino','Casad@','2012-12-01','sanitas');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistaestudiante`
--

DROP TABLE IF EXISTS `vistaestudiante`;
/*!50001 DROP VIEW IF EXISTS `vistaestudiante`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaestudiante` AS SELECT 
 1 AS `usuario`,
 1 AS `clave`,
 1 AS `tipoUsuario`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `tipoIdentificacion`,
 1 AS `identificacion`,
 1 AS `direccion`,
 1 AS `telefono`,
 1 AS `correo`,
 1 AS `genero`,
 1 AS `estadoCivil`,
 1 AS `fechaNacimiento`,
 1 AS `eps`,
 1 AS `idEstudiante`,
 1 AS `idUsuariosEstudiante`,
 1 AS `estrato`,
 1 AS `nombresAcudiente`,
 1 AS `apellidosAcudiente`,
 1 AS `idSedeEducativaEstudiante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistamatricula`
--

DROP TABLE IF EXISTS `vistamatricula`;
/*!50001 DROP VIEW IF EXISTS `vistamatricula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistamatricula` AS SELECT 
 1 AS `idUsuariosEstudiante`,
 1 AS `idSedeEducativaEstudiante`,
 1 AS `estrato`,
 1 AS `nombresAcudiente`,
 1 AS `apellidosAcudiente`,
 1 AS `idMatricula`,
 1 AS `idEstudianteMatricula`,
 1 AS `year`,
 1 AS `periodo`,
 1 AS `fechaMatricula`,
 1 AS `grado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaprofesor`
--

DROP TABLE IF EXISTS `vistaprofesor`;
/*!50001 DROP VIEW IF EXISTS `vistaprofesor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaprofesor` AS SELECT 
 1 AS `usuario`,
 1 AS `clave`,
 1 AS `tipoUsuario`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `tipoIdentificacion`,
 1 AS `identificacion`,
 1 AS `direccion`,
 1 AS `telefono`,
 1 AS `correo`,
 1 AS `genero`,
 1 AS `estadoCivil`,
 1 AS `fechaNacimiento`,
 1 AS `eps`,
 1 AS `idProfesores`,
 1 AS `idUsuariosProfesores`,
 1 AS `tipoContrato`,
 1 AS `salario`,
 1 AS `titulo`,
 1 AS `escalafon`,
 1 AS `fechaIngreso`,
 1 AS `fechaEgreso`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistaestudiante`
--

/*!50001 DROP VIEW IF EXISTS `vistaestudiante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaestudiante` AS select `usuario`.`usuario` AS `usuario`,`usuario`.`clave` AS `clave`,`usuario`.`tipoUsuario` AS `tipoUsuario`,`usuario`.`nombres` AS `nombres`,`usuario`.`apellidos` AS `apellidos`,`usuario`.`tipoIdentificacion` AS `tipoIdentificacion`,`usuario`.`identificacion` AS `identificacion`,`usuario`.`direccion` AS `direccion`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `correo`,`usuario`.`genero` AS `genero`,`usuario`.`estadoCivil` AS `estadoCivil`,`usuario`.`fechaNacimiento` AS `fechaNacimiento`,`usuario`.`eps` AS `eps`,`estudiante`.`idEstudiante` AS `idEstudiante`,`estudiante`.`idUsuariosEstudiante` AS `idUsuariosEstudiante`,`estudiante`.`estrato` AS `estrato`,`estudiante`.`nombresAcudiente` AS `nombresAcudiente`,`estudiante`.`apellidosAcudiente` AS `apellidosAcudiente`,`estudiante`.`idSedeEducativaEstudiante` AS `idSedeEducativaEstudiante` from ((`estudiante` join `usuario` on((`estudiante`.`idUsuariosEstudiante` = `usuario`.`idUsuario`))) join `sedeeducativa` on((`estudiante`.`idSedeEducativaEstudiante` = `sedeeducativa`.`idSedeEducativa`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistamatricula`
--

/*!50001 DROP VIEW IF EXISTS `vistamatricula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistamatricula` AS select `estudiante`.`idUsuariosEstudiante` AS `idUsuariosEstudiante`,`estudiante`.`idSedeEducativaEstudiante` AS `idSedeEducativaEstudiante`,`estudiante`.`estrato` AS `estrato`,`estudiante`.`nombresAcudiente` AS `nombresAcudiente`,`estudiante`.`apellidosAcudiente` AS `apellidosAcudiente`,`matricula`.`idMatricula` AS `idMatricula`,`matricula`.`idEstudianteMatricula` AS `idEstudianteMatricula`,`matricula`.`year` AS `year`,`matricula`.`periodo` AS `periodo`,`matricula`.`fechaMatricula` AS `fechaMatricula`,`matricula`.`grado` AS `grado` from (`matricula` join `estudiante` on((`matricula`.`idEstudianteMatricula` = `estudiante`.`idEstudiante`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaprofesor`
--

/*!50001 DROP VIEW IF EXISTS `vistaprofesor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaprofesor` AS select `usuario`.`usuario` AS `usuario`,`usuario`.`clave` AS `clave`,`usuario`.`tipoUsuario` AS `tipoUsuario`,`usuario`.`nombres` AS `nombres`,`usuario`.`apellidos` AS `apellidos`,`usuario`.`tipoIdentificacion` AS `tipoIdentificacion`,`usuario`.`identificacion` AS `identificacion`,`usuario`.`direccion` AS `direccion`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `correo`,`usuario`.`genero` AS `genero`,`usuario`.`estadoCivil` AS `estadoCivil`,`usuario`.`fechaNacimiento` AS `fechaNacimiento`,`usuario`.`eps` AS `eps`,`profesores`.`idProfesores` AS `idProfesores`,`profesores`.`idUsuariosProfesores` AS `idUsuariosProfesores`,`profesores`.`tipoContrato` AS `tipoContrato`,`profesores`.`salario` AS `salario`,`profesores`.`titulo` AS `titulo`,`profesores`.`escalafon` AS `escalafon`,`profesores`.`fechaIngreso` AS `fechaIngreso`,`profesores`.`fechaEgreso` AS `fechaEgreso` from (`profesores` join `usuario` on((`profesores`.`idUsuariosProfesores` = `usuario`.`idUsuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 19:38:11
