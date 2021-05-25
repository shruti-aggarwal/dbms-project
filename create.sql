CREATE DATABASE  IF NOT EXISTS `propertymanagementdatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `propertymanagementdatabase`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: propertymanagementdatabase
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AppointmentSchedule`
--

DROP TABLE IF EXISTS `AppointmentSchedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AppointmentSchedule` (
  `AppointmentID` int(11) NOT NULL AUTO_INCREMENT,
  `ScheduledDate` datetime NOT NULL,
  `StaffID` int(11) NOT NULL,
  `ResidentID` int(11) NOT NULL,
  `MeetingNotes` varchar(45) DEFAULT NULL,
  `MRLogged` char(3) DEFAULT NULL,
  `MRNotes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AppointmentId`),
  KEY `Staff Id_idx` (`StaffId`),
  KEY `Resident Id_idx` (`Resident_Id`),
  CONSTRAINT `ResidentID` FOREIGN KEY (`ResidentID`) REFERENCES `residential_details` (`ResidentID`),
  CONSTRAINT `StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staffdetails` (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppointmentSchedule`
--

LOCK TABLES `AppointmentSchedule` WRITE;
/*!40000 ALTER TABLE `AppointmentSchedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `AppointmentSchedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BuildingDetails`
--

DROP TABLE IF EXISTS `BuildingDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `BuildingDetails` (
  `BuildingNo` int(11) NOT NULL,
  `Parking` varchar(45) DEFAULT NULL,
  `Gym` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BuildingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BuildingDetails`
--

LOCK TABLES `BuildingDetails` WRITE;
/*!40000 ALTER TABLE `BuildingDetails` DISABLE KEYS */;
INSERT INTO `buildingdetails` VALUES (1,'Parking available','Gym available'),(2,'Parking available','Gym not available'),(3,'Parking available','Gym not available'),(4,'Parking available','Gym not available'),(5,'Parking available','Gym not available'),(6,'Parking available','Gym available'),(7,'Street parking','Gym not available'),(8,'Street Parking','Gym not available'),(9,'Parking available','Gym not available'),(10,'Parking available','Gym available');
/*!40000 ALTER TABLE `BuildingDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inspection`
--

DROP TABLE IF EXISTS `Inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Inspection` (
  `InspectionID` int(11) NOT NULL AUTO_INCREMENT,
  `DateLogged` datetime NOT NULL,
  `InspectedBy` int(11) NOT NULL,
  `UnitsNo` int(11) DEFAULT NULL,
  `UnitIdNo` int(11) NOT NULL,
  `DevicesDamaged` int(11) DEFAULT NULL,
  PRIMARY KEY (`InspectionID`),
  UNIQUE KEY `Unit Id number_UNIQUE` (`UnitIdNo`),
  KEY `Staff Id_idx` (`Inspected_By`),
  CONSTRAINT `InspectedBy` FOREIGN KEY (`InspectedBy`) REFERENCES `StaffDetails` (`staff id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inspection`
--

LOCK TABLES `Inspection` WRITE;
/*!40000 ALTER TABLE `Inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LeaseDetails`
--

DROP TABLE IF EXISTS `LeaseDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `LeaseDetails` (
  `LeaseID` int(11) NOT NULL AUTO_INCREMENT,
  `ResidentBuildingNo` int(11) NOT NULL,
  `ResidentUnitNo` int(11) NOT NULL,
  `UpcomingResident` int(11) NOT NULL,
  `LeaseDate` datetime NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `LeaseTerm` int(11) NOT NULL,
  `MonthlyRent` int(11) NOT NULL,
  `SecurityDepositAmount` int(11) NOT NULL,
  `PetDeposit` int(11) DEFAULT NULL,
  `LeaseStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`LeaseID`),
  KEY `Resident Id_idx` (`UpcomingResident`),
  KEY `Building number_idx` (`ResidentBuildingNo`),
  KEY `Unit number_idx` (`ResidentUnitNo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LeaseDetails`
--

LOCK TABLES `LeaseDetails` WRITE;
/*!40000 ALTER TABLE `LeaseDetails` DISABLE KEYS */;
INSERT INTO `LeaseDetails` VALUES (7,1,1,1,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(8,1,1,2,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(9,1,2,3,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(10,1,2,4,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(11,1,3,2,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2500,2500,100,'Active'),(12,2,3,5,'2018-12-11 00:00:00','2019-01-01 00:00:00','2020-12-31 00:00:00',12,2700,2700,150,'Active'),(13,2,3,6,'2018-12-11 00:00:00','2017-01-01 00:00:00','2018-06-30 00:00:00',6,2700,2700,150,'Expired');
/*!40000 ALTER TABLE `LeaseDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LeasePayment`
--

DROP TABLE IF EXISTS `LeasePayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leasepayment` (
  `LeasePaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentType` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `Amount` int(11) NOT NULL,
  `LeaseID` int(11) NOT NULL,
  `LateFees` int(11) DEFAULT NULL,
  `PaidBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`LeasePaymentID`),
  KEY `LeaseId_idx` (`LeaseID`),
  KEY `Paid By_idx` (`PaidBy`),
  CONSTRAINT `Lease Id` FOREIGN KEY (`LeaseID`) REFERENCES `LeaseDetails` (`LeaseID`),
  CONSTRAINT `Paid By` FOREIGN KEY (`PaidBy`) REFERENCES `ResidentialDetails` (`ResidentID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LeasePayment`
--

LOCK TABLES `LeasePayment` WRITE;
/*!40000 ALTER TABLE `LeasePayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `LeasePayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MaintenanceRequests`
--

DROP TABLE IF EXISTS `MaintenanceRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `MaintenanceRequests` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `LoggedBy` int(11) NOT NULL,
  `ReportedToStaffID` int(11) NOT NULL,
  `MRNotes` varchar(45) DEFAULT NULL,
  `Priority` varchar(45) NOT NULL,
  `DateLogged` datetime DEFAULT NULL,
  `Status` varchar(45) NOT NULL,
  `DueDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  KEY `Reported to Staff id_idx` (`ReportedToStaffID`),
  KEY `Logged By Resident Id_idx` (`Logged By`),
  CONSTRAINT `Logged By Resident Id` FOREIGN KEY (`Logged By`) REFERENCES `ResidentialDetails` (`ResidentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MaintenanceRequests`
--

LOCK TABLES `MaintenanceRequests` WRITE;
/*!40000 ALTER TABLE `MaintenanceRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `MaintenanceRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResidentialDetails`
--

DROP TABLE IF EXISTS `ResidentialDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ResidentialDetails` (
  `ResidentID` int(11) NOT NULL AUTO_INCREMENT,
  `ResidentFirstName` varchar(45) NOT NULL,
  `ResidentLastName` varchar(45) NOT NULL,
  `EmailAddress` varchar(45) DEFAULT NULL,
  `HomePhoneNo` bigint(20) NOT NULL,
  `MobilePhoneNo` bigint(20) NOT NULL,
  PRIMARY KEY (`ResidentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResidentialDetails`
--

LOCK TABLES `ResidentialDetails` WRITE;
/*!40000 ALTER TABLE `ResidentialDetails` DISABLE KEYS */;
INSERT INTO `ResidentialDetails` VALUES (6,'Ashmita','Nigam','ashmitan@gmail.com',9,90),(7,'Ria','Rajput','rrajput@hotmail.com',9920055780,9867227460),(8,'Jessica','Simpson','jsimpson@hotmail.com',8572631098,8572891100),(9,'Wang','Wei','wangwei@yahoo.com',8761234980,866690056),(10,'Jennifer','Goddard','jenniferg@gmail.com',7074119097,7074119097);
/*!40000 ALTER TABLE `ResidentialDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'Management Staff'),(2,'Maintenance Staff');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SecurityDepositReturns`
--

DROP TABLE IF EXISTS `SecurityDepositReturns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SecurityDepositReturns` (
  `PaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `ReturnDate` datetime NOT NULL,
  `SecurityDepositAmount` int(11) NOT NULL,
  `AmountReturned` int(11) DEFAULT NULL,
  `LeavingBldgNo` int(11) NOT NULL,
  `UnitNo` int(11) NOT NULL,
  `LeavingResident` int(11) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `Building number_idx` (`LeavingBldgNo`),
  KEY `Unit number_idx` (`UnitNo`),
  KEY `Leaving Resident_idx` (`LeavingResident`),
  CONSTRAINT `Leaving Resident` FOREIGN KEY (`LeavingResident`) REFERENCES `LeaseDetails` (`UpcomingResident`),
  CONSTRAINT `Resident Bldg No` FOREIGN KEY (`LeavingBldgNo`) REFERENCES `LeaseDetails` (`ResidentBbuildingNo`),
  CONSTRAINT `Resident Unit No` FOREIGN KEY (`UnitNo`) REFERENCES `LeaseDetails` (`ResidentUnitNo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SecurityDepositReturns`
--

LOCK TABLES `SecurityDepositReturns` WRITE;
/*!40000 ALTER TABLE `SecurityDepositReturns` DISABLE KEYS */;
INSERT INTO `SecurityDepositReturns` VALUES (3,'2018-08-31 00:00:00',2500,2450,2,3,6),(4,'2018-01-02 10:00:00',2000,1500,1,1,1);
/*!40000 ALTER TABLE `SecurityDepositReturns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StaffDetails`
--

DROP TABLE IF EXISTS `StaffDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `StaffDetails` (
  `StaffID` int(11) NOT NULL AUTO_INCREMENT,
  `StaffFirstName` varchar(45) NOT NULL,
  `StaffLastName` varchar(45) NOT NULL,
  `Role_RoleId` int(11) NOT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `fk_Staff Table_Role_idx` (`Role_RoleId`),
  CONSTRAINT `RoleId` FOREIGN KEY (`Role_RoleId`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StaffDetails`
--

LOCK TABLES `StaffDetails` WRITE;
/*!40000 ALTER TABLE `StaffDetails` DISABLE KEYS */;
INSERT INTO `StaffDetails` VALUES (7,'Yana','Simpson',2);
/*!40000 ALTER TABLE `StaffDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitDetails`
--

DROP TABLE IF EXISTS `UnitDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `UnitDetails` (
  `UnitNo` int(11) NOT NULL,
  `BuildingNo` int(11) NOT NULL,
  `UnitType` varchar(45) NOT NULL,
  `UnitLaundry` char(3) DEFAULT NULL,
  `PetsPermission` char(3) DEFAULT NULL,
  `NoOfBedrooms` varchar(45) NOT NULL,
  `NoOfBathrooms` varchar(45) NOT NULL,
  `CurrentResident` int(11) DEFAULT NULL,
  PRIMARY KEY (`UnitNo`),
  KEY `Resident Id_idx` (`CurrentResident`),
  KEY `Building number_idx` (`BuildingNo`),
  CONSTRAINT `Building No` FOREIGN KEY (`BuildingNo`) REFERENCES `BuildingDetails` (`building number`),
  CONSTRAINT `Current Resident` FOREIGN KEY (`CurrentResident`) REFERENCES `ResidentialDetails` (`ResidentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitDetails`
--

LOCK TABLES `UnitDetails` WRITE;
/*!40000 ALTER TABLE `UnitDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnitDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `negative_value` BEFORE INSERT ON `unitdetails` FOR EACH ROW begin
    SET @NoOfBedrooms:= NEW.No_of_Bedrooms;
    IF new.No_of_Bedrooms < 0 then
    signal sqlstate '45000' set message_text = "Trying to insert a negative value in table";
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `negative_value_bathrooms` BEFORE INSERT ON `unitdetails` FOR EACH ROW begin
    SET @NoOfBathrooms:= NEW.No_of_Bathrooms;
    IF new.No_of_Bedrooms < 0 then
    signal sqlstate '45000' set message_text = "Trying to insert a negative value in table";
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ViewLeaseDetails`
--

DROP TABLE IF EXISTS `ViewLeaseDetails`;
/*!50001 DROP VIEW IF EXISTS `ViewLeaseDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `ViewLeaseDetails` AS SELECT 
 1 AS `LeaseID`,
 1 AS `ResidentBuildingNo`,
 1 AS `ResidentUnitNo`,
 1 AS `StartDate`,
 1 AS `EndDate`,
 1 AS `LeasePaymentID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewresdetails`
--

DROP TABLE IF EXISTS `ViewResidentDetails`;
/*!50001 DROP VIEW IF EXISTS `ViewResidentDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `ViewResidentDetails` AS SELECT 
 1 AS `ResidentID`,
 1 AS `ResidentFirstName`,
 1 AS `ResidentLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'propertymanagementdatabase'
--

--
-- Dumping routines for database 'propertymanagementdatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_AddDatatoSecurityDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_AddDatatoSecurityDeposit`(IN Return_Date datetime,
 IN SecurityDepositAmount INT,
 IN AmountReturned INT,
 IN LeavingBldgNo INT,
 IN UnitNo INT,
 IN LeavingResident INT)
BEGIN
INSERT INTO SecurityDepositReturns(
 ReturnDate,
 SecurityDepositAmount,
 AmountReturned,
 LeavingBldgNo,
 UnitNo,
 LeavingResident
 )
 values 
 ( ReturnDate,
 SecurityDepositAmount,
 AmountReturned,
 LeavingBldgNo,
 UnitNo,
 LeavingResident);
END ;;
DELIMITER ;
