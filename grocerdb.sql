-- MySQL Script generated by MySQL Workbench
-- Sun Feb 18 12:28:14 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema grocer
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema grocer
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `grocer` ;
USE `grocer` ;

-- -----------------------------------------------------
-- Table `grocer`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocer`.`Product` (
  `ProductNumber` INT NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Unit` VARCHAR(45) NULL,
  `ItemType` VARCHAR(45) NULL,
  `Location` VARCHAR(45) NULL,
  `QuantityOnHand` INT NULL,
  PRIMARY KEY (`ProductNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grocer`.`Vendor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocer`.`Vendor` (
  `VendorId` INT NOT NULL,
  `VendorName` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `ZipCode` VARCHAR(45) NULL,
  PRIMARY KEY (`VendorId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grocer`.`Purchase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocer`.`Purchase` (
  `PurchaseId` INT NOT NULL,
  `ProductNumber` INT NULL,
  `VendorId` INT NULL,
  `Cost` DECIMAL(5,2) NULL,
  `PurchaseDate` DATETIME NULL,
  `Quantity` INT NULL,
  PRIMARY KEY (`PurchaseId`),
  INDEX `ProductNumber_idx` (`ProductNumber` ASC) VISIBLE,
  INDEX `VendorId_idx` (`VendorId` ASC) VISIBLE,
  CONSTRAINT `ProductNumber`
    FOREIGN KEY (`ProductNumber`)
    REFERENCES `grocer`.`Product` (`ProductNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `VendorId`
    FOREIGN KEY (`VendorId`)
    REFERENCES `grocer`.`Vendor` (`VendorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grocer`.`Sale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grocer`.`Sale` (
  `SaleId` INT NOT NULL,
  `ProductNum` INT NULL,
  `Quantity` INT NULL,
  `Price` DECIMAL(5,2) NULL,
  `SaleDate` DATETIME NULL,
  `CustomerNumber` INT NULL,
  PRIMARY KEY (`SaleId`),
  INDEX `ProductNum_idx` (`ProductNum` ASC) VISIBLE,
  CONSTRAINT `ProductNum`
    FOREIGN KEY (`ProductNum`)
    REFERENCES `grocer`.`Product` (`ProductNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
