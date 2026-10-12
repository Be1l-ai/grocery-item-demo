-- Grocery Items Schema for Mexican Products
-- Database: cantiga-grocery-db
-- Table: grocery_items

CREATE DATABASE IF NOT EXISTS `cantiga-grocery-db`;

USE `cantiga-grocery-db`;

CREATE TABLE `grocery_items` (
    `item_id` INT AUTO_INCREMENT PRIMARY KEY,
    `item_name` VARCHAR(150) NOT NULL,
    `brand_name` VARCHAR(100) NOT NULL,
    `category` VARCHAR(50) NOT NULL,
    `subcategory` VARCHAR(50),
    `price_mxn` DECIMAL(10,2) NOT NULL,
    `unit` VARCHAR(20) NOT NULL,
    `country_origin` VARCHAR(50) DEFAULT 'Mexico',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);