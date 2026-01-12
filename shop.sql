create database cake;
use cake;

-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 123.206.49.150    Database: cakeshop
-- ------------------------------------------------------
-- Server version	5.7.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `name` varchar(45) DEFAULT NULL,
                         `cover` varchar(45) DEFAULT NULL,
                         `image1` varchar(45) DEFAULT NULL,
                         `image2` varchar(45) DEFAULT NULL,
                         `price` float DEFAULT NULL,
                         `intro` varchar(300) DEFAULT NULL,
                         `stock` int(11) DEFAULT NULL,
                         `type_id` int(11) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `fk_type_id_idx` (`type_id`),
                         CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES
                        (1,'Snow Pearl','/picture/1-1.jpg','/picture/1-2.jpg','/picture/1-3.jpg',50.2,'Beautiful look',789,1),
                        (2,'Romantic Heart','/picture/2-1.jpg','/picture/2-2.jpg','/picture/2-3.jpg',229,'Holy pure white',10,8),
                        (3,'Nostalgic Love','/picture/3-1.jpg','/picture/3-2.jpg','/picture/3-3.jpg',229,'Great elegance',10,5),
                        (4,'Rose Mystery','/picture/4-1.jpg','/picture/4-2.jpg','/picture/4-3.jpg',299,'Graceful silence',10,5),
                        (5,'Time Train','/picture/5-1.jpg','/picture/5-2.jpg','/picture/5-3.jpg',269,'Lights connecting past and future.',10,5),
                        (6,'Night Gown','/picture/6-1.jpg','/picture/6-2.jpg','/picture/6-3.jpg',299,'Silver shine in the night air.',10,5),
                        (7,'Love of Rose','/picture/7-1.jpg','/picture/7-2.jpg','/picture/7-3.jpg',299,'Charm jumping on the rose.',10,4),
                        (8,'Pearl Park','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Walk into paradise',10,3),
                        (9,'Ice Pearl','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Wonderful feeling.',10,1),
                        (10,'Rose Pearl','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected quality.',10,2),
                        (11,'Demi Pearl','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'.',10,2),
                        (12,'Forest Pearl','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Gentle forest breeze',10,2),
                        (13,'Honey Pearl','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Sweet honey feeling.',10,2),
                        (14,'Italy Pearl','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'',10,2),
                        (15,'Bear Pearl','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Walk into bear world',10,3),
                        (16,'Ice Pearl','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'',10,1),
                        (17,'Rose Pearl','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Pure white beauty.',10,2),
                        (18,'Creamy Pearl','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'.',10,2),
                        (19,'Forest Pearl','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (20,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (21,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (23,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (24,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (25,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (26,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (27,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (28,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (29,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (30,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (31,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (32,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (33,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (34,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (35,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (36,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (37,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (38,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (39,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (40,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (41,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (42,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (43,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (44,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (45,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (46,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (47,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (48,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (49,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (50,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (51,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (52,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (53,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (54,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (55,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (56,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (57,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (58,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (59,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (60,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (61,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (62,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (63,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (64,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (65,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (66,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (67,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (68,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (69,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (70,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (71,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (72,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (73,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (74,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (75,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (76,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (77,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (78,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (79,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (80,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (81,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (82,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (83,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (84,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (85,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (86,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (87,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (88,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (89,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (90,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (91,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (92,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (93,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (94,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (95,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (97,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (98,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (99,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (100,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (101,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (102,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (103,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (104,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (105,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (106,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (108,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (109,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (110,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (111,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (112,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (113,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (114,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (115,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (116,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (117,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (118,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (119,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (120,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (121,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (122,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (123,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (124,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (125,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (126,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (127,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (128,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (129,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (130,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (131,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (132,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (133,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (134,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (135,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (136,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (137,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (138,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (139,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (140,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (141,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (142,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (143,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (144,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (145,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (146,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (147,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (148,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (149,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (150,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (151,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (152,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (153,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (154,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (155,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (156,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (157,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (158,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (159,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (160,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (161,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (162,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (163,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (164,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (165,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (166,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (167,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (168,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (169,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (170,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (171,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2),
                        (172,'Golden Earring','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Golden pearls creating a sweet journey.',10,2),
                        (173,'Baroque Bangle','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Made with top quality baroque pearls.',10,2),
                        (174,'Bear Pearl Brooch','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Cute bear playing with shiny round pearls.',10,3),
                        (175,'Pink Pearl Ring','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'Sweet pink pearls with silky smooth luster.',10,1),
                        (176,'Rose Pearl Stud','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'Selected French pearls with rich luster.',10,2),
                        (177,'Demi Pearl Ring','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'Ensuring the pure mellow scent of pearls.',10,2),
                        (178,'Forest Pearl Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Rich creamy luster, smooth texture.',10,2);

/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `total` float DEFAULT NULL,
                         `amount` int(6) DEFAULT NULL,
                         `status` tinyint(1) DEFAULT NULL,
                         `paytype` tinyint(1) DEFAULT NULL,
                         `name` varchar(45) DEFAULT NULL,
                         `phone` varchar(45) DEFAULT NULL,
                         `address` varchar(45) DEFAULT NULL,
                         `datetime` datetime DEFAULT NULL,
                         `user_id` int(11) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `fk_user_id_idx` (`user_id`),
                         CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (47,50.2,1,4,2,'MR.wei','1','china','2018-12-01 10:44:10',25);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `price` float DEFAULT NULL,
                             `amount` int(11) DEFAULT NULL,
                             `goods_id` int(11) DEFAULT NULL,
                             `order_id` int(11) DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             KEY `fk_order_id_idx` (`order_id`),
                             KEY `fk_orderitem_goods_id_idx` (`goods_id`),
                             CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
                             CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (43,50.2,1,1,47);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `type` tinyint(1) DEFAULT NULL,
                             `goods_id` int(11) DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             KEY `fk_goods_id_idx` (`goods_id`),
                             CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,10),(11,3,12),(12,3,13),(13,3,14),(14,3,15),(15,3,16),(16,3,17),(17,3,18),(18,3,19),(25,1,1),(26,2,1),(27,3,1);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `name` varchar(45) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Pearl1'),(2,'Pearl2'),(3,'Pearl3'),(4,'Pearl4'),(5,'Pearl5'),(8,'Pearl6'),(10,'Pearl7');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `username` varchar(45) DEFAULT NULL,
                        `email` varchar(45) DEFAULT NULL,
                        `password` varchar(45) DEFAULT NULL,
                        `name` varchar(45) DEFAULT NULL,
                        `phone` varchar(45) DEFAULT NULL,
                        `address` varchar(45) DEFAULT NULL,
                        `isadmin` bit(1) DEFAULT NULL,
                        `isvalidate` bit(1) DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `username_UNIQUE` (`username`),
                        UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'admin','admin@sikiedu.com','admin','MR.wei','181','china','','\0'),(24,'MR.wang','01@edu.cn','wl1997','MR.wang','18245631746','china','\0','\0'),(25,'1','1','1','MR.wei','181','china',NULL,NULL),(26,'2','2','2',NULL,NULL,NULL,NULL,NULL),(27,'3','3','3',NULL,NULL,NULL,NULL,NULL),(28,'4','4','4',NULL,NULL,NULL,NULL,NULL),(29,'5','5','5',NULL,NULL,NULL,NULL,NULL),(30,'6','6','6',NULL,NULL,NULL,NULL,NULL),(31,'7','7',NULL,NULL,NULL,NULL,NULL,NULL);/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


