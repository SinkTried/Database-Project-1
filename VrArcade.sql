-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema VR_ARCADE
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema VR_ARCADE
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `VR_ARCADE` ;
-- -----------------------------------------------------
-- Schema vr_arcade
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vr_arcade
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vr_arcade` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `VR_ARCADE` ;

-- -----------------------------------------------------
-- Table `VR_ARCADE`.`Games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VR_ARCADE`.`Games` (
  `GamesId` INT NOT NULL AUTO_INCREMENT,
  `GameName` VARCHAR(50) NOT NULL,
  `GameStatus` VARCHAR(1) NULL DEFAULT 'R' COMMENT 'Check if the game is in working condition. R for running D for down',
  `Price` DECIMAL(10) NOT NULL,
  `Section` VARCHAR(45) NOT NULL COMMENT 'Defines where in the store the game is located',
  `Package` VARCHAR(45) NOT NULL,
  `EmpID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`GamesId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VR_ARCADE`.`Employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VR_ARCADE`.`Employees` (
  `EmpId` INT NOT NULL AUTO_INCREMENT,
  `EmpFirstName` VARCHAR(45) NOT NULL,
  `EmpLastName` VARCHAR(45) NOT NULL,
  `DOB` VARCHAR(45) NOT NULL,
  `ContactNumber` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmpId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VR_ARCADE`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VR_ARCADE`.`Reservation` (
  `ResId` INT NOT NULL AUTO_INCREMENT,
  `Customer Name` VARCHAR(100) NOT NULL,
  `ResDate` VARCHAR(45) NOT NULL,
  `Package` VARCHAR(45) NOT NULL,
  `Payment` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ResId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `VR_ARCADE`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `VR_ARCADE`.`Customer` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `CustomerName` VARCHAR(100) NOT NULL,
  `CustomerEmail` VARCHAR(100) NOT NULL,
  `CustomerNumber` INT NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;

USE `vr_arcade` ;

-- -----------------------------------------------------
-- Table `vr_arcade`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vr_arcade`.`customer` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `CustomerName` VARCHAR(100) NOT NULL,
  `CustomerEmail` VARCHAR(100) NOT NULL,
  `CustomerNumber` INT NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vr_arcade`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vr_arcade`.`employees` (
  `EmpId` INT NOT NULL AUTO_INCREMENT,
  `EmpFirstName` VARCHAR(45) NOT NULL,
  `EmpLastName` VARCHAR(45) NOT NULL,
  `DOB` VARCHAR(45) NOT NULL,
  `ContactNumber` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmpId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vr_arcade`.`games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vr_arcade`.`games` (
  `GamesId` INT NOT NULL AUTO_INCREMENT,
  `GameName` VARCHAR(50) NOT NULL,
  `GameStatus` VARCHAR(1) NULL DEFAULT 'R' COMMENT 'Check if the game is in working condition. R for running D for down',
  `Package` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`GamesId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `vr_arcade`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vr_arcade`.`reservation` (
  `ResId` INT NOT NULL AUTO_INCREMENT,
  `CustomerName` VARCHAR(100) NOT NULL,
  `ResDate` VARCHAR(45) NOT NULL,
  `Package` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ResId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `vr_arcade`.`package` (
  `packID` INT NOT NULL AUTO_INCREMENT,
  `PackageName` VARCHAR(100) NOT NULL,
  `PackagePrice` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`packID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

use vr_arcade;


Insert into customer (CustomerName,CustomerEmail,CustomerNumber)
values ('John Smith','john.smith@email.com','1234567891');

Insert into employees (EmpFirstName,EmpLastName,DOB,ContactNumber,Email)
values ('Bruce','Wayne','4-7-1915','1234567891','b.wayne@email.com');

Insert into games (GameName,GameStatus,Package)
values ('Asphalt 9 Legends Aracede','R','Regular Pacakage');

Insert into reservation (CustomerName,ResDate,Package)
values ('John Smith','01-01-2026','Regular Pacakage');

Select * from customer;

Select * from employees;

Select * from games;

Select * from reservation;
