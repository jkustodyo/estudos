-- -----------------------------------------------------
-- Table `categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categories` ;

CREATE  TABLE IF NOT EXISTS `categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `products` ;

CREATE  TABLE IF NOT EXISTS `products` (
  `id` CHAR(36) NOT NULL ,
  `name` VARCHAR(100) NOT NULL ,
  `slug` VARCHAR(100) NOT NULL ,
  `price` DECIMAL(6,2) NOT NULL DEFAULT 0 ,
  `description` TEXT NOT NULL ,
  `picture` VARCHAR(255) NULL ,
  `active` TINYINT(1) NOT NULL DEFAULT 0 ,
  `created` DATETIME NULL ,
  `modified` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `slug_UNIQUE` (`slug` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `users` ;

CREATE  TABLE IF NOT EXISTS `users` (
  `id` CHAR(36) NOT NULL ,
  `name` VARCHAR(50) NOT NULL ,
  `surname` VARCHAR(50) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `password` CHAR(40) BINARY NOT NULL ,
  `active` TINYINT(1) NOT NULL DEFAULT 0 ,
  `created` DATETIME NULL ,
  `modified` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `categories_products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categories_products` ;

CREATE  TABLE IF NOT EXISTS `categories_products` (
  `category_id` INT UNSIGNED NOT NULL ,
  `product_id` CHAR(36) NOT NULL ,
  INDEX `fk_categories_products_categories_idx` (`category_id` ASC) ,
  INDEX `fk_categories_products_products1_idx` (`product_id` ASC) ,
  CONSTRAINT `fk_categories_products_categories`
    FOREIGN KEY (`category_id` )
    REFERENCES `categories` (`id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categories_products_products1`
    FOREIGN KEY (`product_id` )
    REFERENCES `products` (`id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
