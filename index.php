<?php
// index.php - Main navigation hub
echo "<!DOCTYPE html>";
echo "<html><head><title>Cantiga Grocery - Demo Hub</title></head><body>";

echo "<h1>Cantiga Grocery DB - Demo Hub</h1>";
echo "<p>Mexican Grocery Items Database</p>";
echo "<p>Database: <strong>cantiga-grocery-db</strong></p>";
echo "<p>Table: <strong>grocery_items</strong> (8 columns, 155+ records)</p>";

echo "<h2>Available Demos</h2>";
echo "<ul>";
echo "<li><a href='fetch_all_demo.php'>Fetch All Records (fetchAll + print_r)</a></li>";
echo "<li><a href='fetch_demo.php'>Fetch Single Record (fetch + print_r)</a></li>";
echo "<li><a href='insert_demo.php'>Insert Record (with form)</a></li>";
echo "<li><a href='update_demo.php'>Update Record (with form)</a></li>";
echo "<li><a href='delete_demo.php'>Delete Record (with form)</a></li>";
echo "<li><a href='html_table_demo.php'>HTML Table View</a></li>";
echo "</ul>";

echo "<h2>SQL Files</h2>";
echo "<ul>";
echo "<li><a href='sql/schema_grocery_mexico.sql'>schema_grocery_mexico.sql</a> - Database and table schema</li>";
echo "<li><a href='sql/records_grocery_mexico.sql'>records_grocery_mexico.sql</a> - 155 product records</li>";
echo "</ul>";

echo "<hr>";
echo "<p><a href='index.php'>Back to Home</a></p>";
echo "</body></html>";