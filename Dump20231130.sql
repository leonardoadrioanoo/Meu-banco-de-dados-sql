-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `cursoid` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(60) DEFAULT NULL,
  `departamento` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`cursoid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Engenharia de Software','Ciência da Computação'),(2,'Biologia','Ciências Biológicas'),(3,'História ','Ciências Humanas'),(4,'Matemática','Ciências Exatas'),(5,'Engenharia Civil','Departamento de Engenharia Civil'),(6,'Biologia Marinha','Departamento de Biologia'),(7,'Economia','Departamento de Economia'),(8,'Psicologia Clínica','Departamento de Psicologia'),(9,'Arquitetura','Departamento de Arquitetura'),(10,'História da Arte','Departamento de História da Arte'),(11,'Química Orgânica','Departamento de Química'),(12,'Direito Internacional','Departamento de Direito'),(13,'Gestão de Recursos Humanos','Departamento de Administração'),(14,'Medicina Veterinária','Departamento de Medicina Veterinária'),(15,'Matemática Aplicada','Departamento de Matemática'),(16,'Literatura Inglesa','Departamento de Estudos Literários'),(17,'Engenharia Elétrica','Departamento de Engenharia Elétrica'),(18,'Nutrição','Departamento de Nutrição'),(19,'Física Nuclear','Departamento de Física'),(20,'Marketing Digital','Departamento de Marketing'),(21,'Sociologia Urbana','Departamento de Sociologia'),(22,'Linguística Aplicada','Departamento de Linguística'),(23,'Gestão Ambiental','Departamento de Ciências Ambientais'),(24,'Enfermagem Pediátrica','Departamento de Enfermagem'),(25,'Teatro e Performance','Departamento de Artes Cênicas'),(26,'Engenharia Aeroespacial','Departamento de Engenharia Aeroespacial'),(27,'Design Gráfico','Departamento de Design'),(28,'Filosofia Política','Departamento de Filosofia');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `idade` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `idcurso` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (31,'Lucas Sana','2002-11-21','M',13),(30,'Fernando Filas','2003-10-22','M',20),(29,'Diana Cambuli','1999-09-22','M',25),(28,'Gabi Kilo','1999-07-24','M',6),(27,'Paulo Cesar','2000-03-26','M',11),(26,'Daniele Rocha','2001-05-27','M',10),(25,'Lorezo Freitas','2002-12-28','M',14);
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `estudantes`
--

DROP TABLE IF EXISTS `estudantes`;
/*!50001 DROP VIEW IF EXISTS `estudantes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `estudantes` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `idade`,
 1 AS `sexo`,
 1 AS `idcurso`,
 1 AS `nomecursos`,
 1 AS `departamento_curso`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `estudantes`
--

/*!50001 DROP VIEW IF EXISTS `estudantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estudantes` AS select `estudante`.`id` AS `id`,`estudante`.`nome` AS `nome`,`estudante`.`idade` AS `idade`,`estudante`.`sexo` AS `sexo`,`estudante`.`idcurso` AS `idcurso`,`cursos`.`nome_curso` AS `nomecursos`,`cursos`.`departamento` AS `departamento_curso` from (`estudante` join `cursos` on((`estudante`.`idcurso` = `cursos`.`cursoid`))) */;
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

-- Dump completed on 2023-11-30 21:22:38
