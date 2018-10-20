-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema monopolydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `monopolydb` ;

-- -----------------------------------------------------
-- Schema monopolydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `monopolydb` DEFAULT CHARACTER SET utf8 ;
USE `monopolydb` ;

-- -----------------------------------------------------
-- Table `land`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `land` ;

CREATE TABLE IF NOT EXISTS `land` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `color` ENUM('BROWN', 'LIGHT_BLUE', 'PINK', 'ORANGE', 'RED', 'YELLOW', 'GREEN', 'BLUE', 'NONE') NOT NULL,
  `type` ENUM('GO', 'PROPERTY', 'COMMUNITY_CHEST', 'TAX', 'RAILROAD', 'CHANCE', 'JAIL', 'UTILITY', 'FREE_PARKING', 'GO_TO_JAIL') NOT NULL,
  `purchase_price` INT NULL,
  `rent_price` INT NULL,
  `position` INT NOT NULL,
  `number_of_houses` INT NULL DEFAULT 0,
  `number_of_hotels` INT NULL DEFAULT 0,
  `status` ENUM('OWNED', 'NOT_OWNED', 'MORTGAGED') NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS monopolyuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'monopolyuser'@'localhost' IDENTIFIED BY 'monopoly';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'monopolyuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `land`
-- -----------------------------------------------------
START TRANSACTION;
USE `monopolydb`;
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (1, 'GO', 'NONE', 'GO', NULL, NULL, 1, NULL, NULL, 'NOT_OWNED', 'Pass go collect $200');
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (2, 'Mediteranean Avenue', 'BROWN', 'PROPERTY', 60, 2, 2, 0, 0, 'NOT_OWNED', 'First Property');
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (3, 'Community Chest', 'NONE', 'COMMUNITY_CHEST', NULL, NULL, 3, NULL, NULL, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (4, 'Baltic Avenue', 'BROWN', 'PROPERTY', 60, 4, 4, 0, 0, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (5, 'Income Tax', 'NONE', 'TAX', NULL, 200, 5, NULL, NULL, 'NOT_OWNED', 'You have to pay income tax of $200');
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (6, 'Reading Railroad', 'NONE', 'RAILROAD', 200, 25, 6, NULL, NULL, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (7, 'Oriental Avenue', 'LIGHT_BLUE', 'PROPERTY', 100, 6, 7, 0, 0, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (8, 'Chance', 'NONE', 'CHANCE', NULL, NULL, 8, NULL, NULL, 'NOT_OWNED', 'Draw a card from the Chance pile');
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (9, 'Vermont Avenue', 'LIGHT_BLUE', 'PROPERTY', 100, 6, 9, 0, 0, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (10, 'Connecticut Avenue', 'LIGHT_BLUE', 'PROPERTY', 120, 8, 10, 0, 0, 'NOT_OWNED', NULL);
INSERT INTO `land` (`id`, `name`, `color`, `type`, `purchase_price`, `rent_price`, `position`, `number_of_houses`, `number_of_hotels`, `status`, `description`) VALUES (11, 'Jail', 'NONE', 'JAIL', NULL, NULL, 11, NULL, NULL, 'NOT_OWNED', NULL);

COMMIT;

