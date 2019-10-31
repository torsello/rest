-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema arbolito
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arbolito
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arbolito` DEFAULT CHARACTER SET utf8 ;
USE `arbolito` ;

-- -----------------------------------------------------
-- Table `arbolito`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arbolito`.`user` (
  `id` CHAR(36) NOT NULL,
  `username` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(50) NULL DEFAULT NULL,
  `dni` VARCHAR(50) NULL DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `surname` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `arbolito`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arbolito`.`transaction` (
  `id` CHAR(36) NOT NULL,
  `currency` VARCHAR(45) NULL DEFAULT NULL,
  `amount` DECIMAL(10,2) NULL DEFAULT NULL,
  `datetime` DATETIME NULL,
  `user_id` CHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_balance_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_balance_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `arbolito`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
