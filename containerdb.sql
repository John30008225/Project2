-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 12, 2019 at 04:56 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `containerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Athlete Account`
--

CREATE TABLE `Athlete Account` (
  `Name` varchar(100) NOT NULL,
  `UserID` int(250) NOT NULL,
  `DOB` int(6) NOT NULL,
  `Height` int(3) NOT NULL,
  `Weight` int(3) NOT NULL,
  `Position` int(2) NOT NULL,
  `Club` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE `Type` (
  `Plan` int(1) NOT NULL,
  `UserID` int(250) NOT NULL,
  `Price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Email` varchar(50) DEFAULT NULL,
  `UserID` int(250) NOT NULL,
  `Password` varchar(20) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Athlete Account`
--
ALTER TABLE `Athlete Account`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Athlete Account`
--
ALTER TABLE `Athlete Account`
  ADD CONSTRAINT `Athlete Account_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Type` (`UserID`);

--
-- Constraints for table `Type`
--
ALTER TABLE `Type`
  ADD CONSTRAINT `Type_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Athlete Account` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Lydia Pate",1,"05.12.98",113,110,15,"Waikato University Rugby Club");
INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Garrett Morrison",2,"10.08.73",112,40,8,"San Diego Rugby Club");
INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Merrill Norman",3,"20.10.17",154,83,7,"Southern United Rugby Football Club");
INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Ray Singleton",4,"03.04.78",185,85,4,"Oxford Rugby Club");
INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Vladimir Kelly",5,"14.04.96",191,46,12,"Canterbury Crusaders Rugby Club");
INSERT INTO Athlete Account (Name,UserID,DOB,Height,Weight,Position,Club) VALUES ("Garrett Morrison",2,"10.08.73",112,40,8,"Mount Maunganui Rugby Club");

INSERT INTO Type (Plan,UserID,Price) VALUES (3,100338,"$96.13");
INSERT INTO Type (Plan,UserID,Price) VALUES (2,809594,"$10.47");
INSERT INTO Type (Plan,UserID,Price) VALUES (3,608946,"$243.72");
INSERT INTO Type (Plan,UserID,Price) VALUES (1,779226,"$159.39");
INSERT INTO Type (Plan,UserID,Price) VALUES (3,430062,"$15.01");
INSERT INTO Type (Plan,UserID,Price) VALUES (2,437762,"$111.01");

INSERT INTO User (Email,UserID,Password) VALUES ("sapien@tristiquesenectus.com",378640,"KQY70YJG9NFP");
INSERT INTO User (Email,UserID,Password) VALUES ("ultrices.Duis.volutpat@arcuSedeu.org",370579,"HIB96OXS8XQG");
INSERT INTO User (Email,UserID,Password) VALUES ("sem@nislarcu.ca",273882,"XKC93WXM3VSB");
INSERT INTO User (Email,UserID,Password) VALUES ("amet.risus@semper.edu",109280,"GLV84EIA2RMJ");
INSERT INTO User (Email,UserID,Password) VALUES ("fringilla@Aliquamrutrum.net",348666,"FZH57XZQ1KGK");
INSERT INTO User (Email,UserID,Password) VALUES ("ut.lacus.Nulla@euismodet.net",928740,"NTJ21YRB2KCM");
