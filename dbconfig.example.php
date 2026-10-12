<?php
// dbconfig.php - Database connection configuration
// Creates the $pdo variable used by all demo files
// template file only, use .env for serious useage
$host = 'localhost';
$dbname = 'cantiga-grocery-db';
$username = 'root';
$password = '';

try {
    // Connect to MySQL using PDO with UTF8 charset
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    // Set error mode to EXCEPTION for error handling
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Set default fetch mode to associative array
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
?>
