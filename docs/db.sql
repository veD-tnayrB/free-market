-- MySQL dump 10.13  Distrib 8.0.38, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: free-market
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.1

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
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_tokens` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `access_token` text,
  `time_updated` timestamp NULL DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT NULL,
  `notifications_token` varchar(255) DEFAULT NULL,
  `timezone` varchar(45) DEFAULT 'UTC',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `access_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `access_tokens_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
INSERT INTO `access_tokens` VALUES ('00e51f58-a863-413d-b4d4-74ad3dbda911','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMjUyMTYyNTE5LCJpYXQiOjE3MjAyNTIxNjIsImV4cCI6MTcyMDMzODU2Mn0.KXYJs9DPkXW9lD6YFJR5anQhp2BeMSQgIAKqf3bRaLM',NULL,NULL,'eIcKGHGQhhVZLPX1geT9cz:APA91bEvZPiPGyFFtU36V1k5gV7z6TEtzrqv7A7iIgpvFBf-bmJwaDX_pf8nBx2v_3whF5VcPLzdeT8JdsdUnf5i0pM3AMX3ltuI0o6pC_TgVuy75dg9H3ucnP8TPOu8OZ6z2_h_vnDN','America/Caracas'),('0db5b764-1517-41f9-8075-98e5c4453fa7','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMjgzNDI2NDIzLCJpYXQiOjE3MjAyODM0MjYsImV4cCI6MTcyMDM2OTgyNn0.2x1mQmn0wStxHOR23mllmBidarwNVFmEtqUGo3YKmgM',NULL,NULL,'','America/Caracas'),('25bc35ec-54cf-4a97-b9f7-6affda3d2c02','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzE5ODgwOTIzMDg1LCJpYXQiOjE3MTk4ODA5MjMsImV4cCI6MTcxOTk2NzMyM30.VP6F2QHhXY5dwIl8t4RCnUhOtg5-Hg2WwWxo3b0fIQ4',NULL,NULL,'fFMgtmGYEoUC-Hhdoc94l8:APA91bHIe50Mdx1XX7UJAKoU-pGW2ZrsSOYL5_YWfKW7tMRGAZG2yMPeRPegwB487IJMPBlDoNvX5WX_lrCCLkxf3hYsI2wGJkEcin62cXzgGN1atlQoerjskqTGxIZ2Jvlm5NXZG9sT','America/Caracas'),('27dcb3b9-a443-446f-b37d-24afbc34c99d','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwNTA2NzcyMzQ2LCJpYXQiOjE3MjA1MDY3NzIsImV4cCI6MTcyMDU5MzE3Mn0.fGZil96H_TVF1cklXDQ4-5J_OiglRmUga7dKIFMuDac',NULL,NULL,'','America/Caracas'),('2fa3cab3-142f-42a8-9fcc-f74121fbd04c','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwNTEwMjQxMDI1LCJpYXQiOjE3MjA1MTAyNDEsImV4cCI6MTcyMDU5NjY0MX0.9YGncQeavZ2S8nNonxpq2OCEdgjPMLAFj_bYqCtd4JQ',NULL,NULL,'','America/Caracas'),('4f140a6b-9904-4634-ab6e-40e82ba8a54a','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwNTA3NTk5OTExLCJpYXQiOjE3MjA1MDc1OTksImV4cCI6MTcyMDU5Mzk5OX0.H-kMy1Gha1iPcuINPjEHZmi5yCHOB5b98VSwHQyES6k',NULL,NULL,'','America/Caracas'),('59368b35-3aa1-4258-a702-889e221b33cb','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzI3MjUyMzY2Mzg0LCJpYXQiOjE3MjcyNTIzNjYsImV4cCI6MTcyNzMzODc2Nn0.39ITYGbwa56dc99eFagrbQqoOqzAZXN6OEFnsFKD3LI',NULL,NULL,'eOH5Vip6NA1jzWTKapSSTC:APA91bGb5g5EW-FzVbYtj7qsry9USK5SVYfNQZdG59kDOCWkNamInuFo0mQduj_VZvCDHAbRXPy5NvTZQPacUZk6QXfMN0u42dXnsc_vWxB2jqM7HrgPExhsCFcXO473ldh26NfgO2DW','America/Caracas'),('6467c6b9-e0ee-4eab-85c6-5106c8cd8839','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMjIyMTU5NTM0LCJpYXQiOjE3MjAyMjIxNTksImV4cCI6MTcyMDMwODU1OX0.7-u8brUP91uxL4HOE0aNidfCBEN0xIyl1ckU2yzupwY',NULL,NULL,'fFMgtmGYEoUC-Hhdoc94l8:APA91bHIe50Mdx1XX7UJAKoU-pGW2ZrsSOYL5_YWfKW7tMRGAZG2yMPeRPegwB487IJMPBlDoNvX5WX_lrCCLkxf3hYsI2wGJkEcin62cXzgGN1atlQoerjskqTGxIZ2Jvlm5NXZG9sT','America/Caracas'),('86698e91-50bd-44ba-b0da-98d469c1ff54','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzI3MjUzMTU1NjYzLCJpYXQiOjE3MjcyNTMxNTUsImV4cCI6MTcyNzMzOTU1NX0.lry2eYZAS7Nc2tuOx34_AhXhU_k2EQG3VsmiHw90YUE',NULL,NULL,'eOH5Vip6NA1jzWTKapSSTC:APA91bGb5g5EW-FzVbYtj7qsry9USK5SVYfNQZdG59kDOCWkNamInuFo0mQduj_VZvCDHAbRXPy5NvTZQPacUZk6QXfMN0u42dXnsc_vWxB2jqM7HrgPExhsCFcXO473ldh26NfgO2DW','America/Caracas'),('8f246bb1-9285-4103-a76e-604e427b91ea','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMjUyNzUwNDY3LCJpYXQiOjE3MjAyNTI3NTAsImV4cCI6MTcyMDMzOTE1MH0.SfxJ_dMaiWMfOKWwFYZYVYwUb0igTfunYnV9iIxncpo',NULL,NULL,'','America/Caracas'),('998f260e-8f1f-47ad-9755-1ab5db79d059','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMjU2ODE0Mjk3LCJpYXQiOjE3MjAyNTY4MTQsImV4cCI6MTcyMDM0MzIxNH0.YJE6oFMbeCLFvB1CHqQScJQmfQj7pgIDrEMv64dH8CU',NULL,NULL,'fkY6Tfer4-FogC4LW-xgsS:APA91bEmRqcs6jwKFOGeV-dJtys3mQrJo_wI1FbrSh02grqkXevdndAGzHWCxKAPNxNdLKWtmboV0qrRBWxOdZcpcGY3HTvfPIXem90rvMo7tA7wypR25kwJ88ey7MlYtUrKQh3Cf3xO','America/Caracas'),('b7123e87-8fc2-43ee-8741-e8c992656fe0','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwNTA1MTI3MTg3LCJpYXQiOjE3MjA1MDUxMjcsImV4cCI6MTcyMDU5MTUyN30.L-15M2cqJQKEw8h54AzlvLNolar5Lj5UrRGYXX5fW58',NULL,NULL,'eXnEwTuoY632APDHl-Xeh6:APA91bHsoIkLFnoaFd-1pht7bh52FPXxbvRmkXukookHfakTzuPt_yTOSfncddojnX_M_tKbHK3xvJ6iYusuMkoosHGnLM_KATzgjo21e32evk-jrlZrWBCQu4Vhi2rg5b395eXJL8wW','America/Caracas'),('c2581c7d-04a3-4b4a-85cc-462a3435885e','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwNDc5NjIxMDk5LCJpYXQiOjE3MjA0Nzk2MjEsImV4cCI6MTcyMDU2NjAyMX0.8zLwLyNqHUbptdlfyngJ08f-COh8mCv8bis3cCMHMEI',NULL,NULL,'eXnEwTuoY632APDHl-Xeh6:APA91bHsoIkLFnoaFd-1pht7bh52FPXxbvRmkXukookHfakTzuPt_yTOSfncddojnX_M_tKbHK3xvJ6iYusuMkoosHGnLM_KATzgjo21e32evk-jrlZrWBCQu4Vhi2rg5b395eXJL8wW','America/Caracas'),('dd86b930-1f31-4996-804a-9bd3f5fa2bf4','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzIwMzAzOTg1NTMzLCJpYXQiOjE3MjAzMDM5ODUsImV4cCI6MTcyMDM5MDM4NX0.cJyVbmIrutuiE3oPOZOo9Hb2-tJEZH9KPWRDooNqzqY',NULL,NULL,'fj1wgPkvvhs-q99IrVxQbo:APA91bEaQ_ZUsAiN48fqF5Ec5fR0zeE7tI4FRxRT2oIqMciF-KWxhtBja9LVe4sG_NmBo02NDplx_9k_Ot-pmUahslUQg3lU10Rs8a-WJvQ4WRDewYqtFl4qxf4_ZSpbnTj8EL6K4wzW','America/Caracas'),('ec60968c-6414-467b-8caa-016085863b18','869252b8-c1f6-40f9-ba8d-c22317d9062b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJjYWJhbGxlcm9AYmFsZWFyZXNncm91cC5jb20iLCJpZCI6Ijg2OTI1MmI4LWMxZjYtNDBmOS1iYThkLWMyMjMxN2Q5MDYyYiIsImdlbmVyYXRlZEF0IjoxNzI3MjU3MDQwMTY5LCJpYXQiOjE3MjcyNTcwNDAsImV4cCI6MTcyNzM0MzQ0MH0.BbWH0nGTOpB9KSFxQtBYehNFrVk-Mm-eLeSLoE_AB7Y',NULL,NULL,'','America/Caracas');
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('5e3914a1-630c-4d04-8941-a9fe32e79271','Android','','2024-07-09 19:25:20','2024-07-09 19:25:20'),('e00a38e8-781e-48fc-bde6-59eeaa956bb3','IPhone','','2024-07-09 06:39:33','2024-07-09 06:39:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` char(36) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT NULL,
  `time_updated` timestamp NULL DEFAULT NULL,
  `order` int DEFAULT NULL,
  `icon` text,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES ('599bf2ba-aab0-11ee-a26d-543aacbde303','Users','/users',NULL,NULL,2,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-users\"><path d=\"M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2\"/><circle cx=\"9\" cy=\"7\" r=\"4\"/><path d=\"M22 21v-2a4 4 0 0 0-3-3.87\"/><path d=\"M16 3.13a4 4 0 0 1 0 7.75\"/></svg>',1),('5d535805-36a8-41f0-ada9-971ad7ae022b','Categories','/categories',NULL,NULL,6,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-tags\"><path d=\"m15 5 6.3 6.3a2.4 2.4 0 0 1 0 3.4L17 19\"/><path d=\"M9.586 5.586A2 2 0 0 0 8.172 5H3a1 1 0 0 0-1 1v5.172a2 2 0 0 0 .586 1.414L8.29 18.29a2.426 2.426 0 0 0 3.42 0l3.58-3.58a2.426 2.426 0 0 0 0-3.42z\"/><circle cx=\"6.5\" cy=\"9.5\" r=\".5\" fill=\"currentColor\"/></svg>',1),('5e96375b-cf9c-4458-893f-822423ba9323','Products','/products',NULL,NULL,5,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-package-open\"><path d=\"M12 22v-9\"/><path d=\"M15.17 2.21a1.67 1.67 0 0 1 1.63 0L21 4.57a1.93 1.93 0 0 1 0 3.36L8.82 14.79a1.655 1.655 0 0 1-1.64 0L3 12.43a1.93 1.93 0 0 1 0-3.36z\"/><path d=\"M20 13v3.87a2.06 2.06 0 0 1-1.11 1.83l-6 3.08a1.93 1.93 0 0 1-1.78 0l-6-3.08A2.06 2.06 0 0 1 4 16.87V13\"/><path d=\"M21 12.43a1.93 1.93 0 0 0 0-3.36L8.83 2.2a1.64 1.64 0 0 0-1.63 0L3 4.57a1.93 1.93 0 0 0 0 3.36l12.18 6.86a1.636 1.636 0 0 0 1.63 0z\"/></svg>',1),('699bde79-aab0-11ee-a26d-543aacbde303','Dashboard','/dashboard',NULL,NULL,1,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-layout-dashboard\"><rect width=\"7\" height=\"9\" x=\"3\" y=\"3\" rx=\"1\"/><rect width=\"7\" height=\"5\" x=\"14\" y=\"3\" rx=\"1\"/><rect width=\"7\" height=\"9\" x=\"14\" y=\"12\" rx=\"1\"/><rect width=\"7\" height=\"5\" x=\"3\" y=\"16\" rx=\"1\"/></svg>',1),('699e17e1-aab0-11ee-a26d-543aacbde303','Notifications','/notifications',NULL,NULL,4,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-bell-plus\"><path d=\"M19.3 14.8C20.1 16.4 21 17 21 17H3s3-2 3-9c0-3.3 2.7-6 6-6 1 0 1.9.2 2.8.7\"/><path d=\"M10.3 21a1.94 1.94 0 0 0 3.4 0\"/><path d=\"M15 8h6\"/><path d=\"M18 5v6\"/></svg>',1),('999c13a0-aab0-11ee-a26d-543aacbde303','Profiles','/profiles',NULL,NULL,3,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-user-round-cog\"><path d=\"M2 21a8 8 0 0 1 10.434-7.62\"/><circle cx=\"10\" cy=\"8\" r=\"5\"/><circle cx=\"18\" cy=\"18\" r=\"3\"/><path d=\"m19.5 14.3-.4.9\"/><path d=\"m16.9 20.8-.4.9\"/><path d=\"m21.7 19.5-.9-.4\"/><path d=\"m15.2 16.9-.9-.4\"/><path d=\"m21.7 16.5-.9.4\"/><path d=\"m15.2 19.1-.9.4\"/><path d=\"m19.5 21.7-.4-.9\"/><path d=\"m16.9 15.2-.4-.9\"/></svg>',1),('999c13a0-aab0-11ee-a26d-543aeeee303','Modules','/modules',NULL,NULL,100,'<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"lucide lucide-package\"><path d=\"m7.5 4.27 9 5.15\"/><path d=\"M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z\"/><path d=\"m3.3 7 8.7 5 8.7-5\"/><path d=\"M12 22V12\"/></svg>',1);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules_actions`
--

DROP TABLE IF EXISTS `modules_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules_actions` (
  `id` char(36) NOT NULL,
  `module_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_modules_actions_moduleid` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_modules_actions_moduleid` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules_actions`
--

LOCK TABLES `modules_actions` WRITE;
/*!40000 ALTER TABLE `modules_actions` DISABLE KEYS */;
INSERT INTO `modules_actions` VALUES ('23764bc5-072b-41f0-9f23-102a999245b0','5e96375b-cf9c-4458-893f-822423ba9323','products.update','Allow the user to update information about a product even if the user isnt the creator','2024-07-06 07:57:36','2024-07-06 07:57:36'),('25332b67-7dad-46f2-8b23-745c64a80ca3','5e96375b-cf9c-4458-893f-822423ba9323','products.get-template','Allow the user to generate a excel or a csv file with the products','2024-07-06 07:57:36','2024-07-06 07:57:36'),('33c5d2e1-0cf1-4e41-93e2-b2894637b934','5e96375b-cf9c-4458-893f-822423ba9323','products.generate-report','Generate a excel or a csv file with the profiles','2024-07-06 07:57:36','2024-07-06 07:57:36'),('35b716f4-a3c6-4e46-bd57-cf4e1b21394b','5e96375b-cf9c-4458-893f-822423ba9323','products.import','Import profiles with excel or csv','2024-07-06 07:57:36','2024-07-06 07:57:36'),('4745c7b4-fed7-11ee-bd59-54929796d903','599bf2ba-aab0-11ee-a26d-543aacbde303','users.get','Get one user information','2024-04-20 05:35:47','2024-05-25 01:46:45'),('496b2d16-1b7a-4023-a0b3-95a7e0ea02ce','5e96375b-cf9c-4458-893f-822423ba9323','products.get','Allow the user to read information about a product','2024-07-06 07:57:36','2024-07-06 07:57:36'),('4bbb3e89-faa4-43e5-8c04-c86d19ab8dce','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.get','Allow the user to enter in the categories managment view or even get detailed information about a category','2024-07-09 06:29:45','2024-07-09 06:29:45'),('54965db2-06b9-4376-a5b3-99071d639d16','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.create','Allow the user to create a category','2024-07-09 06:28:27','2024-07-09 06:28:27'),('5536415f-ca71-4c8d-afab-bf492f11ae37','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.list','Allow the user to enter in the list category module','2024-07-09 06:29:45','2024-07-09 06:29:45'),('599c13a0-aab0-11ee-a26d-543aeeee303','999c13a0-aab0-11ee-a26d-543aeeee303','modules.update','Allow the user to create actions over a module','2024-05-26 04:26:06','2024-05-26 04:26:06'),('8db70029-33b1-49c0-ab55-e06aeeedf40d','5e96375b-cf9c-4458-893f-822423ba9323','products.list','Allow the user to list the products and apply filters to them','2024-07-06 07:57:36','2024-07-06 07:57:36'),('952b48d9-9c01-4778-b219-04adc0e579a3','5e96375b-cf9c-4458-893f-822423ba9323','products.create','Allow the user to create a product','2024-07-06 07:57:36','2024-07-06 07:57:36'),('999c13a0-aab0-11ee-a26d-543ae32e303','999c13a0-aab0-11ee-a26d-543aeeee303','modules.list','Allow to enter the modules list','2024-05-05 02:34:41','2024-05-05 02:34:41'),('a25bd240-8b8c-49d6-a484-9147a719ea4d','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.update','Allow the user to update the information of a category','2024-07-09 06:29:45','2024-07-09 06:29:45'),('ae8974ca-e74c-46e7-9a62-f918402ee58c','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.generate-report','Allow the user to download/generate a report, a csv or a xlsx file with the information of a list','2024-07-09 06:28:27','2024-07-09 06:28:27'),('b80b1030-2d59-4922-b1be-64418d7546fb','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.get-template','Allow the user to get the template for the category module','2024-07-09 06:28:27','2024-07-09 06:28:27'),('d745c7b4-fed7-11ee-bd59-54929796d903','599bf2ba-aab0-11ee-a26d-543aacbde303','users.list','Get a list of users','2024-04-20 05:35:47','2024-04-20 06:16:35'),('d745da43-fed7-11ee-bd59-54929796d903','599bf2ba-aab0-11ee-a26d-543aacbde303','users.create','Create new user','2024-04-20 05:35:47','2024-05-25 01:46:45'),('d745ff23-fed7-11ee-bd59-54929796d903','599bf2ba-aab0-11ee-a26d-543aacbde303','users.update','Edit existing user','2024-04-20 05:35:47','2024-05-25 01:46:45'),('ec3f811a-0933-47d9-9494-f84db037ae8e','999c13a0-aab0-11ee-a26d-543aeeee303','modules.create','Allow the user to create actions over a module','2024-05-26 04:53:10','2024-05-26 04:53:10'),('f2aee4df-9073-4f70-95c3-7d30eee33600','5d535805-36a8-41f0-ada9-971ad7ae022b','categories.import','Allow the user to import massivelly data','2024-07-09 06:28:27','2024-07-09 06:28:27'),('f97d895e-fed2-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.get','Read one profile data','2024-04-20 05:36:45','2024-05-25 01:46:45'),('f97d895e-fed7-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.list','Read profile data','2024-04-20 05:36:45','2024-04-20 06:16:35'),('f97d92cc-fed7-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.create','Create new profile','2024-04-20 05:36:45','2024-05-25 01:46:45'),('f97d9490-fed7-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.update','Edit existing profile','2024-04-20 05:36:45','2024-05-25 01:46:45'),('fc3a7582-did7-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.get-template','Generate a excel or a csv file with the profiles','2024-04-21 15:16:26','2024-04-21 15:16:26'),('fc3a7582-did7-11ee-bd59-54929796d956','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.generate-report','Generate a excel or a csv file with the profiles','2024-04-21 15:16:26','2024-04-21 15:16:26'),('fc3a7582-fed7-11ee-bd59-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','profiles.read','Read notifications','2024-04-20 05:36:49','2024-05-25 01:46:45'),('fc3a7c83-fed7-11ee-bd59-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','notifications.create','Create new notification','2024-04-20 05:36:49','2024-05-25 01:46:45'),('fc3a7de4-fed7-11ee-bd59-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','notifications.update','Edit existing notification','2024-04-20 05:36:49','2024-05-25 01:46:45'),('fc6a7582-fed7-11ee-bd59-54929796d903','999c13a0-aab0-11ee-a26d-543aacbde303','profiles.import','Import profiles with excel or csv','2024-04-21 15:16:26','2024-04-21 15:16:26'),('fdd299a6-fed7-11ee-bd59-54929796d955','599bf2ba-aab0-11ee-a26d-543aacbde303','users.get-template','Get the template used to import users','2024-04-21 15:08:13','2024-04-21 15:08:13'),('fdf499a6-fed7-11ee-bd59-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','notifications.get','Read one dashboard data','2024-04-20 05:36:52','2024-05-25 01:46:45'),('fdf699a6-f2d7-11ee-bd59-54929796d955','599bf2ba-aab0-11ee-a26d-543aacbde303','users.generate-report','Generate a excel or a csv file with the users ','2024-04-21 15:06:53','2024-04-21 15:06:53'),('fdf699a6-fed7-11ee-bd59-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','notifications.list','Read dashboard data','2024-04-20 05:36:52','2024-04-24 13:03:03'),('fdf699a6-fed7-11ee-bd59-54929796d955','599bf2ba-aab0-11ee-a26d-543aacbde303','users.import','Import users with excel anor csv files','2024-04-21 15:05:58','2024-04-21 15:05:58'),('fdf699a6-fed7-13ee-bd35-54929796d903','699e17e1-aab0-11ee-a26d-543aacbde303','notifications.launch','Launch instanly a notification to all the accounts associated','2024-04-21 15:39:26','2024-05-25 01:46:45');
/*!40000 ALTER TABLE `modules_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `icon` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT '0',
  `frecuency` text,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('01446e79-a628-4a78-8b18-b2dd69436283','Nueva característica añadida','Nos complace anunciar que hemos añadido una nueva característica a nuestro sistema. Por favor, consulta la documentación para más detalles.','https://i.pinimg.com/564x/ea/e7/0f/eae70f35c316a431dea4e239286c27c2.jpg',NULL,'{\"04-06-2024\":[\"00:00\"],\"05-06-2024\":[\"09:00\"],\"12-06-2024\":[\"09:00\"],\"11-06-2024\":[\"09:00\"],\"27-06-2024\":[\"09:00\"],\"25-06-2024\":[\"09:00\"],\"23-06-2024\":[\"09:00\"],\"29-06-2024\":[\"09:00\"],\"30-06-2024\":[\"09:00\"]}','2024-01-05 01:41:18','2024-01-05 01:41:18','2024-09-15'),('2dacce1d-e953-4920-a112-5d652fcf18b9','Actualización del sistema','Querido usuario, hemos realizado una actualización importante en el sistema. Por favor, reinicia tu sesión para ver los cambios.','https://i.pinimg.com/564x/ea/e7/0f/eae70f35c316a431dea4e239286c27c2.jpg',NULL,'','2024-01-05 01:40:23','2024-01-05 01:40:23','2024-06-01'),('ddc248d9-42c0-4000-a23a-148e0d6de0df','Cambio en la política de privacidad','Hemos actualizado nuestra política de privacidad para cumplir con las nuevas regulaciones. Por favor, revísala y acepta los nuevos términos y condiciones.',NULL,NULL,'{\"25-05-2024\":[\"22:35\"],\"26-05-2024\":[\"09:00\"],\"27-05-2024\":[\"09:00\"],\"28-05-2024\":[\"09:00\"],\"29-05-2024\":[\"09:00\"],\"30-05-2024\":[\"09:00\"]}','2024-03-10 11:56:50','2024-03-10 11:56:50','2024-06-30');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `creator_user_id` char(36) NOT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text,
  `img` text NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_user_id` (`creator_user_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`creator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`creator_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('1a75f494-8233-495c-bfda-e4282d2a821c','Audifonos P9 Inalambricos Bluetooth Tipo Apple AirPods Max','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:19:57','2024-07-06 09:19:57','Audifonos Bluetooth Modelo P9\n\n****************************************************\nCARACTERÍSTICAS\n****************************************************\n\n- Nombre del Articulo: Auriculares Inalámbricos P9\n- Certificación: CE\n- Función: Impermeable, Cancelación de ruido, Micrófono\n- Estándar a prueba de agua: IPX-6\n- Cancelación activa de ruido\n- Nombre de la marca: OEM\n- Tiempo hablando: 6 horas\n- Trompeta magnética de 24 ohmio\n- Batería de litio recargable: 3,7 V/300 mAh\n- Tipo de Puerto: Tipo-C\n- Compatible con memoría MicroSD, Radio FM.','https://http2.mlstatic.com/D_NQ_NP_2X_978310-MLV74570550592_022024-F.webp',12),('2b487644-1d6a-4243-a90c-bf828dd1f633','Computadora Pc Gamer Ryzen 5 5600g, 8gb Ram, 256gb Mvne M.2','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 08:41:54','2024-07-06 08:41:54','-QUE INCLUYE LA COMPRA?\n\nDESCRIPCION\n-Ryzen 5 5600G 4.4 GHz Max Boost\n-T-Force Vulcan Z 8GB (1x8GB) 3200MHz (en la foto se muestran las corsair RGB)\n-ASUS Prime B450M-A II AMD AM4\n-TEAMGROUP MS30 256GB SATA III 6Gb/s SSD M.2 (en la foto aparece WD BLUE de 1TB)\n-Evga W3 Certificada 600 White 80+\n-CASE ZION 3 TRI-FAN RGB (El mismo de la foto)\n\n****************************************************\nCaracterística\n****************************************************\nCaracterísticas del producto\n\n****************************************************\nUBICACIÓN\n****************************************************\nOficina Calle Arismendi (altura Bco. Venezuela) - Lecheria\nContamos con Vigilancia\n****************************************************\nHORARIO DE TRABAJO\n****************************************************\nDe Todo los dias\nDe 9:00am A 9:00pm\nLaboramos Fines de Semana y Feriados\n\n****************************************************\nMÉTODOS DE PAGO\n****************************************************\n- Zelle\n-Binanc3 usdt\n- Efectivo Divisas\n-PayPal\n- Transferencia bancaria en banesco mercantil\n- Pago Móvil\n* Tarjetas de Débito (NOTA: Actualmente NO Tenemos Punto)\n\n****************************************************\nMÉTODOS DE DESPACHO\n****************************************************\n* Retiro Personalmente en Nuestra Oficina\n* Envíos Cobro en Destino o Gratis a Nivel Nacional\n- MRW\n- Zoom\n- Domesa','https://http2.mlstatic.com/D_NQ_NP_2X_934710-MLV51932842252_102022-F.webp',0),('4fbaefaa-30b3-47f5-b9ff-a8ac8a1f10c1','Macbook Pro 13 Apple M2 8gb Ram 256gb Ssd A2338','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:18:13','2024-07-06 09:18:13','****\nCONOCE NUESTRA UBICACIÓN\n*****\nEstamos ubicados en San Antonio de Los Altos, Zona Industrial Las Minas.\nContamos con estacionamiento gratis y vigilancia.\n\n*****\nCONOCE NUESTRO HORARIO\n*****\nPara entregas en nuestra tienda comercial nuestro horario es de lunes a viernes de 8:00 a.m. a 5:30 p.m. Los sábados solo trabajamos por delivery. Puedes hacer consultas telefónicas de lunes a domingo desde las 8:00 a.m. hasta las 5:30 p.m.\n\n****\n¿CÓMO PUEDES PAGAR TU PEDIDO?\n****\nPara pagos con moneda nacional puedes hacerlo desde Pago Móvil del Banco Mercantil o transferencias desde los siguientes bancos: Banesco, Mercantil, Provincial y Venezuela. Puedes cancelar a través de transferencias o depósitos en cuentas nacionales en divisas a través del Banco Mercantil.\n**\nPara transferencias desde cuentas internacionales contamos con Banesco Panamá, Banco Mercantil Panamá, FaceBank, Bank Of America. Se puede cancelar igualmente desde Zelle, PayPal y USDt.\n**\nTambién recibimos pagos en efectivo. De momento, solo contamos con pago con punto de venta en la tienda de Caracas.\n\n******\n¿CÓMO DESPACHAMOS NUESTROS PRODUCTOS?\n******\n• Hacemos envíos gratis a cualquier punto de Venezuela desde MRW, Zoom y Domesa.\n• Contamos con el servicio de envío con cobro en destino en Venezuela con Tealca, Liberty Express, MRW, Zoom y Domesa.\n• Ofrecemos servicio pickup o de retiro en nuestra tienda y delivery para los Altos Mirandinos hacia cualquier lugar de la Gran Caracas.\nProduct updated successfully','https://http2.mlstatic.com/D_NQ_NP_2X_966368-MLV70608295993_072023-F.webp',56),('60502623-3542-4eff-a5bc-acd1a5ff4054','Smart Tv LG Uhd 4k 43\'\' Procesador Alta Potencia Actual 2023','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:16:39','2024-07-06 09:16:39','TV LG UHD 4K de 43\'\' Serie 73, Procesador Alta Potencia, HDR10 / Dolby Digital Plus, Smart TV webOS23.\n\nOJO: Está marcado como \"Nuevo\" porque prácticamente lo está. Se entrega con su caja y su control con hasta las pilas que este trajo. Solamente se ha sacado para probarlo.\n\nIMPORTANTE: Por favor preguntar por disponibilidad antes de comprar, puesto que también se tiene ofrecido en otros espacios... A la orden.','https://http2.mlstatic.com/D_NQ_NP_2X_600995-MLV75764927429_042024-F.webp',25),('7bb2feeb-5eb0-4ee2-970b-24f48ea7a69a','Celular Apple iPhone 14 Plus 128gb 6gb Sim+esim','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:21:20','2024-07-06 09:21:20','El iPhone14 viene con una nueva cubierta frontal de escudo de cerámica más grande y duradera de 6.7 pulgadas de tamaño con un nuevo sistema de doble cámara, detección de choques, un servicio de seguridad primero en la industria de teléfonos inteligentes con SOS de emergencia por satélite, y la mejor duración de la batería en el iPhone y está protegido de derrames y accidentes comunes (resistencia al agua y al polvo).\n','https://http2.mlstatic.com/D_NQ_NP_2X_944669-MLV70380628043_072023-F.webp',25),('8c8af5a7-9860-461c-8691-af2101743090','Celular Apple iPhone 14 Plus 128gb 6gb Sim+esim','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:23:36','2024-07-06 09:23:36','TIENDA OFICIAL 212 GLOBAL ELECTRÓNICOS.\n\nTecnología al alcance de un clic.\n\nDESCRIPCIÓN DEL PRODUCTO\n\nEl iPhone14 viene con una nueva cubierta frontal de escudo de cerámica más grande y duradera de 6.7 pulgadas de tamaño con un nuevo sistema de doble cámara, detección de choques, un servicio de seguridad primero en la industria de teléfonos inteligentes con SOS de emergencia por satélite, y la mejor duración de la batería en el iPhone y está protegido de derrames y accidentes comunes (resistencia al agua y al polvo).\n\nCARACTERÍSTICAS\n\n- Marca: Apple.\n- Modelo: Iphone 14.\n- Dimensiones del producto: 146,7 x 71,5 x 7,8 mm (5,78 x 2,81 x 0,31 pulgadas).\n- Anunciado 2022, 07 de septiembre. Estado Disponible. Publicado el 2022, 07 de octubre.\n- Peso: 172g.\n- Composición: Frente de vidrio, parte posterior de vidrio, marco de aluminio.\n- Garantía: 3 meses.','https://http2.mlstatic.com/D_NQ_NP_2X_943654-MLV75381081337_032024-F.webp',70),('a4f69e7c-c798-4368-9a04-be237c5c3d4b','Celular Apple iPhone 15 Promax 1tb Nuevo Titanio Natural','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:14:21','2024-07-06 09:14:21','\nProducto:\nIPHONE 15 PRO MAX, 1TB, TITANIO NATURAL\n\n====================================================================\n\n***** CARACTERISTICAS DEL EQUIPO *****\n\nAPPLE IPHONE 15 PRO MAX\nPANTALLA Super Retina XDR 6,7 pulgadas ProMotion 1 - 120 Hz\nResolución 2.532 x 1.170 px 458 ppp\nBrillo pico de 2.000 nits\nContraste 2.000.000:1\nPROCESADOR Apple A17 Pro\nRAM 8 GB\nALMACENAMIENTO 1 TB\n(1 SIM + 2 ESIM)\nCÁMARAS TRASERAS 48 / 12 / 12\nCÁMARA FRONTAL 12 MP\nBATERÍA 4,422mAh\nSISTEMA OPERATIVO iOS 17\nCONECTIVIDAD5G (sub-6 GHz)\nLTE Gigabit con MIMO 4x4 y LAA\nWiFi 6E\nWifi 802.11ax (6.ª gen.) con MIMO 2x2\nBluetooth 5.3\nChip de banda ultraancha\nNFC\nCompatibilidad con Thread\nOTROS\nIP68\nSonido estéreo\nFaceID\nBotón de acción','https://http2.mlstatic.com/D_NQ_NP_2X_644745-MLV77187298853_062024-F.webp',0),('d5941bf7-fbbe-4f0c-99b9-36f6700db94a','Celular Apple iPhone 12 Pro De 128gb (Reacondicionado)','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-07-06 09:15:33','2024-07-06 09:15:33','*TENEMOS 4 TIENDAS FISICAS EN DIFERENTES CENTROS COMERCIALES DE CARACAS.\n\n*COMPRA CON SEGURIDAD - NO ARRIESGUES TU INVERSION\n\n*TODOS NUESTROS EQUIPOS TIENEN GARANTIA.\n\n_____ POR FAVOR DEDIQUE UNOS MINUTOS Y LEA _______\n\n\nSomos Mac Cel Import ¡Tu Oportunidad de Tenerlo!\n\nTraemos para ti:\n\n-Modelo: IPHONE 12 PRO\n-Capacidad Ram: 6\nMemoria interna: 512gb\n-Incluye: Cable de carga, forro y vidrio templado\n-Tiempo de Garantía: 3 MESES\n\n____________\nHORARIO DE TRABAJO\nLUNES A SABADO\n10:00AM - 7:00PM\n\nDOMINGO\n12:00 PM - 7:00 PM\n____________\nMETODOS DE PAGO:\n*ZELLE\n*PAYPAL\n*BANESCO PANAMA\n*MERCANTIL PANAMA\n*TRANSFERENCIAS EN BOLIVARES: A LA TASA DEL DIA\n*CASH: EFECTIVO\n*EUROS\n* PUNTO DE VENTA INTERNACIONAL\n*BINANCE (USDT)\n____________\nENVIOS GRATIS AL INTERIOR DEL PAIS: AGENCIA ZOOM\nDELIVERY EN CARACAS: CONSULTE COSTOS, DE ACUERDO A LA ZONA.\n____________\nCONDICIONES DE VENTA:\n1: PREGUNTAR TODO LO NECESARIO ANTES DE OFERTAR\n2: OFERTAR ES UN COMPROMISO\n3: ANTES DE CALIFICAR NEGATIVO O NEUTRAL PERMITANOS SOLVENTAR CUALQUIER INCONVENIENTE\n4: SINO ESTA SEGURO DE SU COMPRA NO OFERTE','https://http2.mlstatic.com/D_NQ_NP_2X_728404-MLV50729237610_072022-F.webp',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_categories` (
  `category_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_categories_category` (`category_id`),
  KEY `fk_products_categories_product` (`product_id`),
  CONSTRAINT `fk_products_categories_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_products_categories_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_categories`
--

LOCK TABLES `products_categories` WRITE;
/*!40000 ALTER TABLE `products_categories` DISABLE KEYS */;
INSERT INTO `products_categories` VALUES ('e00a38e8-781e-48fc-bde6-59eeaa956bb3','8c8af5a7-9860-461c-8691-af2101743090','a4cba409-e022-4188-9ff5-247cade9f807');
/*!40000 ALTER TABLE `products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_module_permissions`
--

DROP TABLE IF EXISTS `profile_module_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_module_permissions` (
  `profile_id` char(36) NOT NULL,
  `module_id` char(36) NOT NULL,
  `action_id` char(36) NOT NULL,
  PRIMARY KEY (`profile_id`,`module_id`,`action_id`),
  KEY `module_id` (`module_id`),
  KEY `fk_action_id` (`action_id`),
  CONSTRAINT `fk_action_id` FOREIGN KEY (`action_id`) REFERENCES `modules_actions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profile_module_permissions_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`),
  CONSTRAINT `profile_module_permissions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_module_permissions`
--

LOCK TABLES `profile_module_permissions` WRITE;
/*!40000 ALTER TABLE `profile_module_permissions` DISABLE KEYS */;
INSERT INTO `profile_module_permissions` VALUES ('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','4745c7b4-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745c7b4-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745da43-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745ff23-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdd299a6-fed7-11ee-bd59-54929796d955'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdf699a6-f2d7-11ee-bd59-54929796d955'),('0502b4cd-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-11ee-bd59-54929796d955'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','4745c7b4-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745c7b4-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745da43-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','d745ff23-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdd299a6-fed7-11ee-bd59-54929796d955'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdf699a6-f2d7-11ee-bd59-54929796d955'),('0502bf3a-aabb-11ee-a26d-543aacbde303','599bf2ba-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-11ee-bd59-54929796d955'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','4bbb3e89-faa4-43e5-8c04-c86d19ab8dce'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','54965db2-06b9-4376-a5b3-99071d639d16'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','5536415f-ca71-4c8d-afab-bf492f11ae37'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','a25bd240-8b8c-49d6-a484-9147a719ea4d'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','ae8974ca-e74c-46e7-9a62-f918402ee58c'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','b80b1030-2d59-4922-b1be-64418d7546fb'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5d535805-36a8-41f0-ada9-971ad7ae022b','f2aee4df-9073-4f70-95c3-7d30eee33600'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','23764bc5-072b-41f0-9f23-102a999245b0'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','25332b67-7dad-46f2-8b23-745c64a80ca3'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','33c5d2e1-0cf1-4e41-93e2-b2894637b934'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','35b716f4-a3c6-4e46-bd57-cf4e1b21394b'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','496b2d16-1b7a-4023-a0b3-95a7e0ea02ce'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','8db70029-33b1-49c0-ab55-e06aeeedf40d'),('0502b4cd-aabb-11ee-a26d-543aacbde303','5e96375b-cf9c-4458-893f-822423ba9323','952b48d9-9c01-4778-b219-04adc0e579a3'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7582-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7c83-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7de4-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf499a6-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-13ee-bd35-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7582-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7c83-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7de4-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf499a6-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-13ee-bd35-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7582-fed7-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fc3a7de4-fed7-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf499a6-fed7-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','699e17e1-aab0-11ee-a26d-543aacbde303','fdf699a6-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed2-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d92cc-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d9490-fed7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc3a7582-did7-11ee-bd59-54929796d903'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc3a7582-did7-11ee-bd59-54929796d956'),('0502b4cd-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc6a7582-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed2-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d92cc-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d9490-fed7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc3a7582-did7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc3a7582-did7-11ee-bd59-54929796d956'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc6a7582-fed7-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed2-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','f97d895e-fed7-11ee-bd59-54929796d903'),('0502c19a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aacbde303','fc3a7582-did7-11ee-bd59-54929796d903'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aeeee303','599c13a0-aab0-11ee-a26d-543aeeee303'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aeeee303','999c13a0-aab0-11ee-a26d-543ae32e303'),('0502bf3a-aabb-11ee-a26d-543aacbde303','999c13a0-aab0-11ee-a26d-543aeeee303','ec3f811a-0933-47d9-9494-f84db037ae8e');
/*!40000 ALTER TABLE `profile_module_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `time_created` timestamp NULL DEFAULT NULL,
  `time_updated` timestamp NULL DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES ('0502b4cd-aabb-11ee-a26d-543aacbde303','Admin','Tiene acceso total y control sobre todas las funcionalidades del sistema.','2023-12-31 00:28:30','2023-12-31 00:28:30',1),('0502bf3a-aabb-11ee-a26d-543aacbde303','Developer','Acceso a herramientas y funcionalidades de desarrollo, con capacidades para modificar y crear módulos. Mismos permisos que admin pero con funcionalidades de mantenimiento y gestion','2023-12-31 00:28:30','2023-12-31 00:28:30',1),('0502c19a-aabb-11ee-a26d-543aacbde303','User','Acceso estándar a las funcionalidades del sistema con permisos limitados.','2023-12-31 00:28:30','2023-12-31 00:28:30',1);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_notifications`
--

DROP TABLE IF EXISTS `profiles_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_notifications` (
  `profile_id` char(36) NOT NULL,
  `notification_id` char(36) NOT NULL,
  `id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_profiles_notifications_profile` (`profile_id`),
  KEY `fk_profiles_notifications_notification` (`notification_id`),
  CONSTRAINT `fk_profiles_notifications_notification` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_profiles_notifications_profile` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profiles_notifications_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profiles_notifications_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_notifications`
--

LOCK TABLES `profiles_notifications` WRITE;
/*!40000 ALTER TABLE `profiles_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sent_notifications`
--

DROP TABLE IF EXISTS `sent_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_notifications` (
  `id` char(36) NOT NULL,
  `notification_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `status` enum('sent','read','failed') NOT NULL,
  `time_sent` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sent_notifications_user_id` (`user_id`),
  KEY `idx_sent_notifications_notification_id` (`notification_id`),
  CONSTRAINT `fk_sent_notifications_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sent_notifications_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sent_notifications`
--

LOCK TABLES `sent_notifications` WRITE;
/*!40000 ALTER TABLE `sent_notifications` DISABLE KEYS */;
INSERT INTO `sent_notifications` VALUES ('236eaa9b-3eb0-4215-8d77-a1ded6962424','01446e79-a628-4a78-8b18-b2dd69436283','869252b8-c1f6-40f9-ba8d-c22317d9062b','read','2024-06-16 23:56:11','2024-06-16 23:57:03'),('a844fb0b-b3b5-40c8-a18a-468990311a3b','ddc248d9-42c0-4000-a23a-148e0d6de0df','869252b8-c1f6-40f9-ba8d-c22317d9062b','read','2024-06-16 23:45:36','2024-06-16 23:52:50'),('d4097543-2c20-4688-8129-77e4b722556a','ddc248d9-42c0-4000-a23a-148e0d6de0df','869252b8-c1f6-40f9-ba8d-c22317d9062b','read','2024-06-16 23:58:42','2024-06-16 23:58:52');
/*!40000 ALTER TABLE `sent_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totals`
--

DROP TABLE IF EXISTS `totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totals` (
  `users` int DEFAULT '0',
  `notifications` int DEFAULT '0',
  `profiles` int DEFAULT '0',
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totals`
--

LOCK TABLES `totals` WRITE;
/*!40000 ALTER TABLE `totals` DISABLE KEYS */;
INSERT INTO `totals` VALUES (24,2,3,'19ca14e7-ace5-4d3b-8a6f-36ec768e9c9r');
/*!40000 ALTER TABLE `totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_names` varchar(255) DEFAULT NULL,
  `names` varchar(255) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(32) DEFAULT NULL,
  `profile_img` longtext,
  `forget_password_token` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forget_password_token_UNIQUE` (`forget_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('6426a807-aa61-4d38-b388-71e95e3d88f6',1,'jrodriguez@balearesgroup.com','Rodriguez','Julio','2024-05-27 02:03:19','2024-05-27 02:03:41','ed0b50b5f5f208b10c5a299b1788c244','https://avatars.githubusercontent.com/u/7352361?v=4',NULL),('869252b8-c1f6-40f9-ba8d-c22317d9062b',1,'bcaballero@balearesgroup.com','Caballero','Bryant','2024-03-27 02:03:19','2024-06-15 21:47:51','','',NULL),('9920c776-1c31-4d04-a616-b09cf14a86e9',1,'jguidi@balearesgroup.com','Guidi','Juan','2024-04-27 02:15:55','2024-05-27 02:18:21','ed0b50b5f5f208b10c5a299b1788c244','https://media-mia3-1.cdn.whatsapp.net/v/t61.24694-24/309646926_719550366189499_8834063398460153986_n.jpg?ccb=11-4&oh=01_Q5AaIHOarBSvtEhYkjHGaC8F3mE52XGpLDmsdAK8XxNgXNDx&oe=66608D7C&_nc_sid=e6ed6c&_nc_cat=100',NULL),('c748695b-3009-4014-8335-c1ada3fde990',1,'mrodriguez@balearesgroup.com','Rodriguez','Moises','2024-02-27 02:00:04','2024-05-27 02:18:53','ed0b50b5f5f208b10c5a299b1788c244','https://avatars.githubusercontent.com/u/27926784?v=4',NULL),('de824bdb-7a37-4f09-814f-bbdb36efaca2',1,'fsanvicente@balearesgroup.com','Sanvicente','Francisco','2024-03-27 02:06:54','2024-05-27 02:18:21','ed0b50b5f5f208b10c5a299b1788c244','https://avatars.githubusercontent.com/u/64644109?v=4',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_notifications`
--

DROP TABLE IF EXISTS `users_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_notifications` (
  `id` char(36) NOT NULL,
  `notification_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_users_notifications_user` (`user_id`),
  KEY `fk_users_notifications_notification` (`notification_id`),
  CONSTRAINT `fk_users_notifications_notification` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_users_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_notifications`
--

LOCK TABLES `users_notifications` WRITE;
/*!40000 ALTER TABLE `users_notifications` DISABLE KEYS */;
INSERT INTO `users_notifications` VALUES ('d53e1312-0a31-4fe4-bf07-6a602f641c7a','ddc248d9-42c0-4000-a23a-148e0d6de0df','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-06-16 05:25:48','2024-06-16 05:25:48'),('d8946a54-46f9-4f5c-b3da-171a963c341c','01446e79-a628-4a78-8b18-b2dd69436283','869252b8-c1f6-40f9-ba8d-c22317d9062b','2024-06-23 09:00:48','2024-06-23 09:00:48');
/*!40000 ALTER TABLE `users_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profiles`
--

DROP TABLE IF EXISTS `users_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profiles` (
  `user_id` char(36) NOT NULL,
  `profile_id` char(36) NOT NULL,
  PRIMARY KEY (`user_id`,`profile_id`),
  KEY `profile_id` (`profile_id`),
  CONSTRAINT `users_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_profiles_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profiles`
--

LOCK TABLES `users_profiles` WRITE;
/*!40000 ALTER TABLE `users_profiles` DISABLE KEYS */;
INSERT INTO `users_profiles` VALUES ('869252b8-c1f6-40f9-ba8d-c22317d9062b','0502b4cd-aabb-11ee-a26d-543aacbde303'),('9920c776-1c31-4d04-a616-b09cf14a86e9','0502b4cd-aabb-11ee-a26d-543aacbde303'),('c748695b-3009-4014-8335-c1ada3fde990','0502b4cd-aabb-11ee-a26d-543aacbde303'),('6426a807-aa61-4d38-b388-71e95e3d88f6','0502bf3a-aabb-11ee-a26d-543aacbde303'),('869252b8-c1f6-40f9-ba8d-c22317d9062b','0502bf3a-aabb-11ee-a26d-543aacbde303'),('c748695b-3009-4014-8335-c1ada3fde990','0502bf3a-aabb-11ee-a26d-543aacbde303'),('de824bdb-7a37-4f09-814f-bbdb36efaca2','0502bf3a-aabb-11ee-a26d-543aacbde303');
/*!40000 ALTER TABLE `users_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_widgets`
--

DROP TABLE IF EXISTS `users_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_widgets` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `widget_id` char(36) NOT NULL,
  `column_position` int NOT NULL,
  `row_position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `widget_id` (`widget_id`),
  CONSTRAINT `users_widgets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_widgets_ibfk_2` FOREIGN KEY (`widget_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_widgets`
--

LOCK TABLES `users_widgets` WRITE;
/*!40000 ALTER TABLE `users_widgets` DISABLE KEYS */;
INSERT INTO `users_widgets` VALUES ('0a5a4f19-32dc-42fe-a61e-8432664088a4','869252b8-c1f6-40f9-ba8d-c22317d9062b','4018f013-8202-4531-a07b-a4c7c944f9ab',6,2),('413068eb-ea34-44d8-8171-6ed5286d2d62','869252b8-c1f6-40f9-ba8d-c22317d9062b','069bb9a5-16c2-4c1b-8c7f-7349738cc492',0,2),('43a8bc62-55d0-45ca-b9fa-500e0436aebe','c748695b-3009-4014-8335-c1ada3fde990','10264c81-a092-41ab-8937-c05957b2e544',0,1),('47549a42-aae1-40d0-af4a-f2a4c60efee5','9920c776-1c31-4d04-a616-b09cf14a86e9','069bb9a5-16c2-4c1b-8c7f-7349738cc492',0,2),('486f20c4-7251-4ba9-8ef3-b819c9898822','de824bdb-7a37-4f09-814f-bbdb36efaca2','4018f013-8202-4531-a07b-a4c7c944f9ab',6,2),('4b72fa29-31b1-4a3e-8ae9-251d49128c4b','9920c776-1c31-4d04-a616-b09cf14a86e9','e53bcab0-a571-4b4e-89e0-4356e18086dd',0,0),('4d45bb27-e87b-495f-8a61-7f3706e81e30','869252b8-c1f6-40f9-ba8d-c22317d9062b','10264c81-a092-41ab-8937-c05957b2e544',0,1),('503700bc-ae2e-4d1e-baf1-cef2bdeeaae3','c748695b-3009-4014-8335-c1ada3fde990','069bb9a5-16c2-4c1b-8c7f-7349738cc492',5,2),('783af0e1-6875-46c5-9177-3b1e23cc6ba7','6426a807-aa61-4d38-b388-71e95e3d88f6','4018f013-8202-4531-a07b-a4c7c944f9ab',3,2),('8247ea83-3e8a-4ab3-9854-d3aadaee82d7','6426a807-aa61-4d38-b388-71e95e3d88f6','10264c81-a092-41ab-8937-c05957b2e544',0,1),('9490e6c7-c198-4653-8823-ccdbe16684dc','9920c776-1c31-4d04-a616-b09cf14a86e9','10264c81-a092-41ab-8937-c05957b2e544',0,1),('9da093ed-b43e-4b46-9ba9-6d99aa0d0e0c','6426a807-aa61-4d38-b388-71e95e3d88f6','e53bcab0-a571-4b4e-89e0-4356e18086dd',0,0),('9fa621b4-07fc-41e0-a93d-e14d52cb4f01','c748695b-3009-4014-8335-c1ada3fde990','e53bcab0-a571-4b4e-89e0-4356e18086dd',0,0),('abf426e8-0f0d-4dc7-a87c-57ede6b83491','de824bdb-7a37-4f09-814f-bbdb36efaca2','10264c81-a092-41ab-8937-c05957b2e544',0,1),('b6c73935-c813-4f32-a133-1ca2f06b27a9','9920c776-1c31-4d04-a616-b09cf14a86e9','4018f013-8202-4531-a07b-a4c7c944f9ab',6,2),('be897f6c-8b27-4e47-b647-774e08d42d35','869252b8-c1f6-40f9-ba8d-c22317d9062b','e53bcab0-a571-4b4e-89e0-4356e18086dd',0,0),('c83c9b2a-dfa4-43e7-8776-4ace2a100f99','de824bdb-7a37-4f09-814f-bbdb36efaca2','069bb9a5-16c2-4c1b-8c7f-7349738cc492',0,2),('cf110754-d6c5-4e5b-9cbb-43188fb28aa1','de824bdb-7a37-4f09-814f-bbdb36efaca2','e53bcab0-a571-4b4e-89e0-4356e18086dd',0,0),('d4632334-74c3-40d6-94ea-71532ee2d9b2','6426a807-aa61-4d38-b388-71e95e3d88f6','069bb9a5-16c2-4c1b-8c7f-7349738cc492',6,2),('fbc79534-959d-418f-8552-f7a03d27317c','c748695b-3009-4014-8335-c1ada3fde990','4018f013-8202-4531-a07b-a4c7c944f9ab',0,2);
/*!40000 ALTER TABLE `users_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` char(36) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `metadata` text,
  `order` int DEFAULT NULL,
  `time_updated` timestamp NULL DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT NULL,
  `width` int NOT NULL DEFAULT '1',
  `height` int NOT NULL DEFAULT '1',
  `name` varchar(45) DEFAULT 'Widget-n',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES ('069bb9a5-16c2-4c1b-8c7f-7349738cc492',1,'registered-users','',2,'2023-11-26 08:19:08','2023-11-26 08:19:08',6,3,'Registerd users dashboard','It is a bar chart showing the evolution of monthly registered users.'),('10264c81-a092-41ab-8937-c05957b2e544',1,'totals','',1,'2023-12-05 02:45:10','2023-12-05 02:45:10',12,1,'Totals counter','Shows the total number of user records, profiles and notifications.'),('4018f013-8202-4531-a07b-a4c7c944f9ab',1,'online-users','',3,'2023-11-28 22:40:13','2023-11-28 22:40:13',3,3,'Online users comparator','Doughnut chart showing the comparison between online and offline users'),('e53bcab0-a571-4b4e-89e0-4356e18086dd',1,'welcome','',0,'2023-11-26 08:21:44','2023-11-26 08:21:44',12,1,'Welcome','Purely graphical widget, with no apparent functionality other than dedicating a good day/afternoon/evening to you!');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets_profiles`
--

DROP TABLE IF EXISTS `widgets_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets_profiles` (
  `id` char(36) NOT NULL,
  `widget_id` char(36) NOT NULL,
  `profile_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_widget_profile` (`widget_id`,`profile_id`),
  KEY `fk_profile_id` (`profile_id`),
  CONSTRAINT `fk_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_widget_id` FOREIGN KEY (`widget_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets_profiles`
--

LOCK TABLES `widgets_profiles` WRITE;
/*!40000 ALTER TABLE `widgets_profiles` DISABLE KEYS */;
INSERT INTO `widgets_profiles` VALUES ('26d1db1e-e61c-4560-88f2-8bb05e73afd6','069bb9a5-16c2-4c1b-8c7f-7349738cc492','0502b4cd-aabb-11ee-a26d-543aacbde303'),('29313a46-3e41-4c40-8c7e-fbe8a660e012','069bb9a5-16c2-4c1b-8c7f-7349738cc492','0502bf3a-aabb-11ee-a26d-543aacbde303'),('ed7f9ed4-92b1-4fb1-8d90-7e86b3ae592e','10264c81-a092-41ab-8937-c05957b2e544','0502b4cd-aabb-11ee-a26d-543aacbde303'),('91d6615f-b10d-4bd7-bae9-b395176b09ce','10264c81-a092-41ab-8937-c05957b2e544','0502bf3a-aabb-11ee-a26d-543aacbde303'),('78afa823-0d44-4061-9c3b-73fefe6aa16d','10264c81-a092-41ab-8937-c05957b2e544','0502c19a-aabb-11ee-a26d-543aacbde303'),('e7393003-a391-474f-99da-bdfa3548bada','4018f013-8202-4531-a07b-a4c7c944f9ab','0502b4cd-aabb-11ee-a26d-543aacbde303'),('287ec1c3-e7f2-4125-9d16-b18bef663e84','4018f013-8202-4531-a07b-a4c7c944f9ab','0502bf3a-aabb-11ee-a26d-543aacbde303'),('e600fec9-16a0-429e-b2c8-a23fcca28e89','e53bcab0-a571-4b4e-89e0-4356e18086dd','0502b4cd-aabb-11ee-a26d-543aacbde303'),('4dac6953-7ca3-47c0-9815-63af94bf9395','e53bcab0-a571-4b4e-89e0-4356e18086dd','0502bf3a-aabb-11ee-a26d-543aacbde303'),('add6c0d2-2863-45c9-93e6-ed6ed1c5dfce','e53bcab0-a571-4b4e-89e0-4356e18086dd','0502c19a-aabb-11ee-a26d-543aacbde303');
/*!40000 ALTER TABLE `widgets_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25  6:28:32
