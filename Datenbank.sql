-- --------------------------------------------------------
-- Host:                         192.168.35.100
-- Server Version:               5.5.54-MariaDB - Source distribution
-- Server Betriebssystem:        Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Tabelle test.Test_Marks
CREATE TABLE IF NOT EXISTS `Test_Marks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` int(11) DEFAULT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `Subject_Name` varchar(50) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `StudentID` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.Test_Marks: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `Test_Marks` DISABLE KEYS */;
INSERT INTO `Test_Marks` (`ID`, `StudentID`, `SubjectID`, `Subject_Name`, `Marks`) VALUES
	(1, 1, 1, 'Physics', 99),
	(2, 1, 2, 'Maths', 77),
	(3, 1, 3, 'C#', 100),
	(4, 1, 1, 'Physics', 99),
	(5, 2, 1, 'Physics', 80),
	(6, 2, 2, 'English', 95),
	(7, 2, 3, 'commerce', 95),
	(8, 2, 1, 'BankPo', 99);
/*!40000 ALTER TABLE `Test_Marks` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.Test_Student
CREATE TABLE IF NOT EXISTS `Test_Student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.Test_Student: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `Test_Student` DISABLE KEYS */;
INSERT INTO `Test_Student` (`ID`, `Name`, `RollNo`) VALUES
	(1, 'Devesh', '03021013014'),
	(2, 'ROLI', '0302101444'),
	(3, 'ROLI Ji', '030212222'),
	(4, 'NIKHIL', 'KANPUR');
/*!40000 ALTER TABLE `Test_Student` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
