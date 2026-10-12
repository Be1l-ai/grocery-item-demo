# Cantiga Grocery Mexico

Grocery items database for Mexican products with real brand names.

## Country Choice

**Mexico** was chosen for its rich culinary heritage and globally recognized brands across multiple product categories. Mexican cuisine is celebrated worldwide, and the country has established major food and beverage manufacturers that produce high-quality products with authentic flavors.

## Database Schema

Database: `cantiga-grocery-db`
Table: `grocery_items`

| Column | Data Type | Description |
|--------|-----------|-------------|
| item_id | INT AUTO_INCREMENT PRIMARY KEY | Unique identifier |
| item_name | VARCHAR(150) | Product name (e.g., "Gansito Chocolate Cake") |
| brand_name | VARCHAR(100) | Mexican brand (e.g., "Marinela") |
| category | VARCHAR(50) | Main category (snacks, beverages, canned, dairy, bakery, condiments) |
| subcategory | VARCHAR(50) | Sub-category (cookies, chips, soda, milk, bread, salsa, etc.) |
| price_mxn | DECIMAL(10,2) | Price in Mexican Pesos |
| unit | VARCHAR(20) | Unit of measure (piece, pack, bottle, kg, liter) |
| country_origin | VARCHAR(50) | Default 'Mexico' |
| created_at | TIMESTAMP | Auto-set on insert |

## Mexican Brands Used

### Snacks
- **Marinela** - Gansito, Pingüinos, Submarinos, Chocorroles, Roles de Canela
- **Barcel** - Takis Fuego, Takis Nitro, Ricolino Paleta Payaso, Duvalín, Panditas, Chetos, Frooty Tooty, Turbitas
- **Gamesa** - Emperador, Marías, Animalitos, Chokis, Cremas
- **Sabritas** - Ruffles, Cheetos, Doritos, Sabritones, Churrumais, Sun Chips, Fritos, Tostitos
- **Ricolino** - Bubu Lubu, Kinky, Mikado, Kranky, Paleta Payaso, Mazapán

### Beverages
- **Jarritos** - Mandarina, Tamarindo, Limón, Piña, Fresa, Toronja, Mango
- **Coca-Cola FEMSA** - Coca-Cola, Sprite, Fanta, Fresca, Sidral Mundet, Barrilitos, Topo Chico
- **Jumex** - Néctar Mango, Néctar Guayaba, Néctar Durazno, Néctar Piña, Jugo de Naranja, Jugo de Tamarindo
- **Boing** - Mango, Guayaba, Fresa, Piña, Durazno

### Canned & Jarred Goods
- **Herdez** - Salsa Verde, Salsa Roja, Salsa Taquera, Guacamole, Chipotles en Adobo, Salsa Ranchera
- **La Costeña** - Chiles Jalapeños, Chiles Chipotles, Rajas, Frijoles Negros, Frijoles Bayos
- **Embasa** - Salsa Verde, Salsa Roja, Chipotles, Salsa Verde Fundiente
- **San Marcos** - Chipotles en Adobo, Jalapeños, Rajas con Crema
- **El Mexicano** - Frijoles Refritos, Frijoles Negros, Frijoles Charros, Frijoles Pintos

### Dairy
- **Lala** - Leche Entera, Leche Deslactosada, Yogur Natural, Yogur Fresa, Crema, Yogur Griego
- **Alpura** - Leche Entera, Leche Light, Yogur Griego, Queso Panela, Queso Oaxaca, Requesón
- **Santa Clara** - Leche, Yogur, Crema, Queso Chihuahua, Leche Condensada
- **Nutri Leche** - Leche Entera, Leche Semi Descremada, Leche Sabor Vanilla
- **Los Volcanes** - Queso Oaxaca, Queso Panela, Crema, Requesón, Queso Cotija

### Bakery
- **Bimbo** - Pan Blanco, Pan Integral, Pan de Caja, Hot Dog Buns, Hamburger Buns, Pan Francés, Mini Pan Dulce
- **El Molino** - Pan Dulce, Conchas, Polvorones, Besos de Chocolate
- **La Especial** - Bolillos, Teleras, Pan de Muerto, Rosca
- **Panificación Moderna** - Pan Blanco, Pan Integral, Bagels, Pan de Agua

### Sauces & Condiments
- **Valentina** - Salsa Picante Clásica, Salsa Picante Extra, Salsa Negra
- **Tajín** - Clásico, Fruta, Habanero, Clásico Polvo
- **Cholula** - Original, Chipotle, Green Pepper, Sweet Habanero
- **La Victoria** - Salsa Roja, Salsa Verde, Enchilada Sauce, Salsa Suprema
- **McCormick México** - Mayonesa, Mostaza, Ketchup, Salsa Inglesa, Aderezo Ranch, Vinagre de Manzana

## Files

- `sql/schema_grocery_mexico.sql` - Database and table schema (8 columns)
- `sql/records_grocery_mexico.sql` - 155 product records with INSERT statements

## Setup

```sql
-- Run in MySQL
SOURCE sql/schema_grocery_mexico.sql;
SOURCE sql/records_grocery_mexico.sql;
```

## Validation

- Database `cantiga-grocery-db` exists
- Table `grocery_items` has 8 columns with correct types
- 155 records inserted
- All records use Mexican brand names
- Prices are realistic MXN values