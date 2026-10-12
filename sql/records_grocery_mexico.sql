-- Grocery Items Data - Mexico
-- Database: cantiga-grocery-db
-- Table: grocery_items
-- 100+ records with real Mexican brands

USE `cantiga-grocery-db`;

-- ============================================================
-- SNACKS (25 items)
-- ============================================================

-- Marinela
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Gansito Chocolate Cake', 'Marinela', 'snacks', 'sponge cakes', 18.50, 'piece', 'Mexico'),
('Pingüinos Vanilla', 'Marinela', 'snacks', 'sponge cakes', 18.50, 'piece', 'Mexico'),
('Submarinos Chocolate', 'Marinela', 'snacks', 'sponge cakes', 18.50, 'piece', 'Mexico'),
('Chocorroles Original', 'Marinela', 'snacks', 'cookies', 22.00, 'bag', 'Mexico'),
('Roles de Canela', 'Marinela', 'snacks', 'cookies', 19.75, 'bag', 'Mexico'),
('Tres Leches Cake', 'Marinela', 'snacks', 'cakes', 45.00, 'piece', 'Mexico');

-- Barcel
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Takis Fuego', 'Barcel', 'snacks', 'chips', 28.00, 'bag', 'Mexico'),
('Takis Nitro', 'Barcel', 'snacks', 'chips', 28.00, 'bag', 'Mexico'),
('Ricolino Paleta Payaso', 'Barcel', 'snacks', 'candy', 12.50, 'piece', 'Mexico'),
('Duvalín', 'Barcel', 'snacks', 'candy', 11.25, 'piece', 'Mexico'),
('Panditas', 'Barcel', 'snacks', 'candy', 9.50, 'bag', 'Mexico'),
('Chetos Flamin Hot', 'Barcel', 'snacks', 'chips', 25.00, 'bag', 'Mexico'),
('Frooty Tooty', 'Barcel', 'snacks', 'candy', 10.00, 'bag', 'Mexico'),
('Turbitas', 'Barcel', 'snacks', 'candy', 8.75, 'bag', 'Mexico');

-- Gamesa
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Emperador Chocolate', 'Gamesa', 'snacks', 'cookies', 24.00, 'bag', 'Mexico'),
('Marías Integral', 'Gamesa', 'snacks', 'cookies', 26.50, 'bag', 'Mexico'),
('Animalitos', 'Gamesa', 'snacks', 'cookies', 19.00, 'bag', 'Mexico'),
('Chokis', 'Gamesa', 'snacks', 'cookies', 16.50, 'bag', 'Mexico'),
('Cremas Vainilla', 'Gamesa', 'snacks', 'cookies', 27.00, 'bag', 'Mexico'),
('Maria Cookies', 'Gamesa', 'snacks', 'cookies', 21.00, 'bag', 'Mexico'),
('Emperador Integral', 'Gamesa', 'snacks', 'cookies', 28.50, 'bag', 'Mexico');

-- Sabritas
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Ruffles Queso', 'Sabritas', 'snacks', 'chips', 32.00, 'bag', 'Mexico'),
('Cheetos Sabritas', 'Sabritas', 'snacks', 'chips', 26.00, 'bag', 'Mexico'),
('Doritos Nacho Cheese', 'Sabritas', 'snacks', 'chips', 30.00, 'bag', 'Mexico'),
('Sabritones', 'Sabritas', 'snacks', 'chips', 24.00, 'bag', 'Mexico'),
('Churrumais', 'Sabritas', 'snacks', 'chips', 28.50, 'bag', 'Mexico'),
('Sun Chips Multigrain', 'Sabritas', 'snacks', 'chips', 35.00, 'bag', 'Mexico'),
('Fritos Original', 'Sabritas', 'snacks', 'chips', 27.50, 'bag', 'Mexico'),
('Tostitos Salsa Verde', 'Sabritas', 'snacks', 'chips', 31.00, 'bag', 'Mexico');

-- Ricolino
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Bubu Lubu', 'Ricolino', 'snacks', 'candy', 13.50, 'piece', 'Mexico'),
('Kinky Bar', 'Ricolino', 'snacks', 'candy', 7.50, 'piece', 'Mexico'),
('Mikado', 'Ricolino', 'snacks', 'candy', 9.00, 'piece', 'Mexico'),
('Kranky Chocolate', 'Ricolino', 'snacks', 'candy', 11.00, 'piece', 'Mexico'),
('Paleta Payaso Ricolino', 'Ricolino', 'snacks', 'candy', 12.50, 'piece', 'Mexico'),
('Mazapán de Cacahuate', 'Ricolino', 'snacks', 'candy', 8.00, 'piece', 'Mexico');

-- ============================================================
-- BEVERAGES (20 items)
-- ============================================================

-- Jarritos
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Mandarina', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Tamarindo', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Limón', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Piña', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Fresa', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Toronja', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico'),
('Mango', 'Jarritos', 'beverages', 'soda', 19.50, 'bottle', 'Mexico');

-- Coca-Cola FEMSA
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Coca-Cola', 'Coca-Cola FEMSA', 'beverages', 'soda', 16.00, 'bottle', 'Mexico'),
('Sprite', 'Coca-Cola FEMSA', 'beverages', 'soda', 16.00, 'bottle', 'Mexico'),
('Fanta Naranja', 'Coca-Cola FEMSA', 'beverages', 'soda', 16.00, 'bottle', 'Mexico'),
('Fresca', 'Coca-Cola FEMSA', 'beverages', 'soda', 16.00, 'bottle', 'Mexico'),
('Sidral Mundet', 'Coca-Cola FEMSA', 'beverages', 'soda', 17.50, 'bottle', 'Mexico'),
('Barrilitos', 'Coca-Cola FEMSA', 'beverages', 'soda', 15.50, 'bottle', 'Mexico'),
('Topo Chico', 'Coca-Cola FEMSA', 'beverages', 'mineral water', 14.00, 'bottle', 'Mexico');

-- Jumex
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Néctar Mango', 'Jumex', 'beverages', 'nectar', 18.50, 'bottle', 'Mexico'),
('Néctar Guayaba', 'Jumex', 'beverages', 'nectar', 18.50, 'bottle', 'Mexico'),
('Néctar Durazno', 'Jumex', 'beverages', 'nectar', 18.50, 'bottle', 'Mexico'),
('Néctar Piña', 'Jumex', 'beverages', 'nectar', 18.50, 'bottle', 'Mexico'),
('Jugo de Naranja', 'Jumex', 'beverages', 'juice', 22.00, 'bottle', 'Mexico'),
('Jugo de Tamarindo', 'Jumex', 'beverages', 'juice', 22.00, 'bottle', 'Mexico');

-- Boing
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Mango', 'Boing', 'beverages', 'juice', 13.50, 'bottle', 'Mexico'),
('Guayaba', 'Boing', 'beverages', 'juice', 13.50, 'bottle', 'Mexico'),
('Fresa', 'Boing', 'beverages', 'juice', 13.50, 'bottle', 'Mexico'),
('Piña', 'Boing', 'beverages', 'juice', 13.50, 'bottle', 'Mexico'),
('Durazno', 'Boing', 'beverages', 'juice', 13.50, 'bottle', 'Mexico');

-- ============================================================
-- CANNED & JARRED (15 items)
-- ============================================================

-- Herdez
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Salsa Verde', 'Herdez', 'canned', 'salsa', 28.00, 'jar', 'Mexico'),
('Salsa Roja', 'Herdez', 'canned', 'salsa', 28.00, 'jar', 'Mexico'),
('Salsa Taquera', 'Herdez', 'canned', 'salsa', 29.50, 'jar', 'Mexico'),
('Guacamole', 'Herdez', 'canned', 'salsa', 35.00, 'jar', 'Mexico'),
('Chipotles en Adobo', 'Herdez', 'canned', 'salsa', 32.00, 'jar', 'Mexico'),
('Salsa Ranchera', 'Herdez', 'canned', 'salsa', 28.50, 'jar', 'Mexico');

-- La Costeña
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Chiles Jalapeños', 'La Costeña', 'canned', 'peppers', 22.00, 'jar', 'Mexico'),
('Chiles Chipotles', 'La Costeña', 'canned', 'peppers', 24.50, 'jar', 'Mexico'),
('Rajas', 'La Costeña', 'canned', 'peppers', 26.00, 'jar', 'Mexico'),
('Frijoles Negros', 'La Costeña', 'canned', 'beans', 19.50, 'can', 'Mexico'),
('Frijoles Bayos', 'La Costeña', 'canned', 'beans', 19.50, 'can', 'Mexico'),
('Jalapeños Enteros', 'La Costeña', 'canned', 'peppers', 20.00, 'jar', 'Mexico');

-- Embasa
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Salsa Verde', 'Embasa', 'canned', 'salsa', 24.00, 'jar', 'Mexico'),
('Salsa Roja', 'Embasa', 'canned', 'salsa', 24.00, 'jar', 'Mexico'),
('Chipotles', 'Embasa', 'canned', 'salsa', 27.50, 'jar', 'Mexico'),
('Salsa Verde Fundiente', 'Embasa', 'canned', 'salsa', 30.00, 'jar', 'Mexico');

-- San Marcos
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Chipotles en Adobo', 'San Marcos', 'canned', 'salsa', 33.50, 'jar', 'Mexico'),
('Jalapeños', 'San Marcos', 'canned', 'peppers', 24.50, 'jar', 'Mexico'),
('Rajas con Crema', 'San Marcos', 'canned', 'salsa', 35.00, 'jar', 'Mexico');

-- El Mexicano
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Frijoles Refritos', 'El Mexicano', 'canned', 'beans', 18.50, 'can', 'Mexico'),
('Frijoles Negros', 'El Mexicano', 'canned', 'beans', 18.50, 'can', 'Mexico'),
('Frijoles Charros', 'El Mexicano', 'canned', 'beans', 21.00, 'can', 'Mexico'),
('Frijoles Pintos', 'El Mexicano', 'canned', 'beans', 18.00, 'can', 'Mexico');

-- ============================================================
-- DAIRY (15 items)
-- ============================================================

-- Lala
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Leche Entera', 'Lala', 'dairy', 'milk', 22.50, 'liter', 'Mexico'),
('Leche Deslactosada', 'Lala', 'dairy', 'milk', 28.00, 'liter', 'Mexico'),
('Yogur Natural', 'Lala', 'dairy', 'yogurt', 16.50, 'cup', 'Mexico'),
('Yogur Fresa', 'Lala', 'dairy', 'yogurt', 17.50, 'cup', 'Mexico'),
('Crema Ácida', 'Lala', 'dairy', 'cream', 24.00, 'cup', 'Mexico'),
('Yogur Griego', 'Lala', 'dairy', 'yogurt', 28.50, 'cup', 'Mexico'),
('Leche con Cereal', 'Lala', 'dairy', 'milk', 27.00, 'liter', 'Mexico');

-- Alpura
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Leche Entera', 'Alpura', 'dairy', 'milk', 21.50, 'liter', 'Mexico'),
('Leche Light', 'Alpura', 'dairy', 'milk', 23.00, 'liter', 'Mexico'),
('Yogur Griego Natural', 'Alpura', 'dairy', 'yogurt', 32.00, 'cup', 'Mexico'),
('Queso Panela', 'Alpura', 'dairy', 'cheese', 35.00, 'piece', 'Mexico'),
('Queso Oaxaca', 'Alpura', 'dairy', 'cheese', 42.00, 'piece', 'Mexico'),
('Requesón', 'Alpura', 'dairy', 'cheese', 28.50, 'cup', 'Mexico');

-- Santa Clara
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Leche Entera', 'Santa Clara', 'dairy', 'milk', 20.50, 'liter', 'Mexico'),
('Yogur Natural', 'Santa Clara', 'dairy', 'yogurt', 15.50, 'cup', 'Mexico'),
('Crema', 'Santa Clara', 'dairy', 'cream', 22.00, 'cup', 'Mexico'),
('Queso Chihuahua', 'Santa Clara', 'dairy', 'cheese', 48.00, 'piece', 'Mexico'),
('Leche Condensada', 'Santa Clara', 'dairy', 'milk', 26.00, 'can', 'Mexico');

-- Nutri Leche
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Leche Entera', 'Nutri Leche', 'dairy', 'milk', 18.50, 'liter', 'Mexico'),
('Leche Semi Descremada', 'Nutri Leche', 'dairy', 'milk', 19.50, 'liter', 'Mexico'),
('Leche Sabor Vanilla', 'Nutri Leche', 'dairy', 'milk', 20.00, 'liter', 'Mexico');

-- Los Volcanes
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Queso Oaxaca', 'Los Volcanes', 'dairy', 'cheese', 45.00, 'piece', 'Mexico'),
('Queso Panela', 'Los Volcanes', 'dairy', 'cheese', 38.00, 'piece', 'Mexico'),
('Crema', 'Los Volcanes', 'dairy', 'cream', 23.50, 'cup', 'Mexico'),
('Requesón', 'Los Volcanes', 'dairy', 'cheese', 29.00, 'cup', 'Mexico'),
('Queso Cotija', 'Los Volcanes', 'dairy', 'cheese', 52.00, 'piece', 'Mexico');

-- ============================================================
-- BAKERY (15 items)
-- ============================================================

-- Bimbo
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Pan Blanco', 'Bimbo', 'bakery', 'bread', 12.50, 'loaf', 'Mexico'),
('Pan Integral', 'Bimbo', 'bakery', 'bread', 18.00, 'loaf', 'Mexico'),
('Pan de Caja', 'Bimbo', 'bakery', 'bread', 15.00, 'loaf', 'Mexico'),
('Hot Dog Buns', 'Bimbo', 'bakery', 'bread', 14.50, 'pack', 'Mexico'),
('Hamburger Buns', 'Bimbo', 'bakery', 'bread', 16.00, 'pack', 'Mexico'),
('Pan Francés', 'Bimbo', 'bakery', 'bread', 13.50, 'loaf', 'Mexico'),
('Mini Pan Dulce', 'Bimbo', 'bakery', 'bread', 19.00, 'bag', 'Mexico');

-- Marinela (bakery)
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Donas', 'Marinela', 'bakery', 'pastries', 22.00, 'piece', 'Mexico'),
('Conchas', 'Marinela', 'bakery', 'pastries', 8.50, 'piece', 'Mexico'),
('Orejas', 'Marinela', 'bakery', 'pastries', 7.50, 'piece', 'Mexico'),
('Cuernitos', 'Marinela', 'bakery', 'pastries', 12.00, 'piece', 'Mexico'),
('Bigotes', 'Marinela', 'bakery', 'pastries', 10.50, 'piece', 'Mexico'),
('Rosca de Reyes', 'Marinela', 'bakery', 'pastries', 85.00, 'piece', 'Mexico');

-- El Molino
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Pan Dulce', 'El Molino', 'bakery', 'pastries', 25.00, 'bag', 'Mexico'),
('Conchas', 'El Molino', 'bakery', 'pastries', 9.50, 'piece', 'Mexico'),
('Polvorones', 'El Molino', 'bakery', 'pastries', 32.00, 'bag', 'Mexico'),
('Besos de Chocolate', 'El Molino', 'bakery', 'pastries', 15.00, 'piece', 'Mexico');

-- La Especial
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Bolillos', 'La Especial', 'bakery', 'bread', 8.00, 'piece', 'Mexico'),
('Teleras', 'La Especial', 'bakery', 'bread', 10.50, 'piece', 'Mexico'),
('Pan de Muerto', 'La Especial', 'bakery', 'pastries', 28.00, 'piece', 'Mexico'),
('Rosca', 'La Especial', 'bakery', 'pastries', 75.00, 'piece', 'Mexico');

-- Panificación Moderna
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Pan Blanco', 'Panificación Moderna', 'bakery', 'bread', 11.50, 'loaf', 'Mexico'),
('Pan Integral', 'Panificación Moderna', 'bakery', 'bread', 17.00, 'loaf', 'Mexico'),
('Bagels', 'Panificación Moderna', 'bakery', 'pastries', 24.00, 'piece', 'Mexico'),
('Pan de Agua', 'Panificación Moderna', 'bakery', 'pastries', 13.50, 'piece', 'Mexico');

-- ============================================================
-- SAUCES & CONDIMENTS (10 items)
-- ============================================================

-- Valentina
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Salsa Picante Clásica', 'Valentina', 'condiments', 'salsa', 19.50, 'bottle', 'Mexico'),
('Salsa Picante Extra', 'Valentina', 'condiments', 'salsa', 21.00, 'bottle', 'Mexico'),
('Salsa Negra', 'Valentina', 'condiments', 'salsa', 22.50, 'bottle', 'Mexico');

-- Tajín
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Clásico', 'Tajín', 'condiments', 'seasoning', 12.50, 'packet', 'Mexico'),
('Fruta', 'Tajín', 'condiments', 'seasoning', 14.00, 'packet', 'Mexico'),
('Habanero', 'Tajín', 'condiments', 'seasoning', 16.00, 'packet', 'Mexico'),
('Clásico Polvo', 'Tajín', 'condiments', 'seasoning', 28.00, 'bag', 'Mexico');

-- Cholula
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Original', 'Cholula', 'condiments', 'salsa', 35.00, 'bottle', 'Mexico'),
('Chipotle', 'Cholula', 'condiments', 'salsa', 38.00, 'bottle', 'Mexico'),
('Green Pepper', 'Cholula', 'condiments', 'salsa', 35.00, 'bottle', 'Mexico'),
('Sweet Habanero', 'Cholula', 'condiments', 'salsa', 38.50, 'bottle', 'Mexico');

-- La Victoria
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Salsa Roja', 'La Victoria', 'condiments', 'salsa', 16.50, 'jar', 'Mexico'),
('Salsa Verde', 'La Victoria', 'condiments', 'salsa', 16.50, 'jar', 'Mexico'),
('Enchilada Sauce', 'La Victoria', 'condiments', 'salsa', 20.00, 'jar', 'Mexico'),
('Salsa Suprema', 'La Victoria', 'condiments', 'salsa', 18.00, 'jar', 'Mexico');

-- McCormick México
INSERT INTO `grocery_items` (`item_name`, `brand_name`, `category`, `subcategory`, `price_mxn`, `unit`, `country_origin`) VALUES
('Mayonesa', 'McCormick México', 'condiments', 'sauce', 24.50, 'jar', 'Mexico'),
('Mostaza', 'McCormick México', 'condiments', 'sauce', 19.50, 'jar', 'Mexico'),
('Ketchup', 'McCormick México', 'condiments', 'sauce', 21.00, 'jar', 'Mexico'),
('Salsa Inglesa', 'McCormick México', 'condiments', 'sauce', 26.00, 'jar', 'Mexico'),
('Aderezo Ranch', 'McCormick México', 'condiments', 'sauce', 28.00, 'jar', 'Mexico'),
('Vinagre de Manzana', 'McCormick México', 'condiments', 'seasoning', 17.50, 'bottle', 'Mexico');