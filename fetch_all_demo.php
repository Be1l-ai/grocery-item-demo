<?php
// fetch_all_demo.php - Uses fetchAll() to retrieve all records
// Displays results with print_r() wrapped in <pre> tags
require_once 'dbconfig.php';

// Prepare SQL: SELECT all columns from grocery_items
$sql = "SELECT * FROM grocery_items";
$stmt = $pdo->prepare($sql);
$stmt->execute();

// fetchAll() retrieves all rows as an array of associative arrays
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Fetch All Items - fetchAll()</title>
</head>
<body>
    <h1>Fetch All Grocery Items (fetchAll)</h1>
    <p><a href="index.php">Back to Home</a></p>

    <!-- Display the full result array using print_r inside <pre> for readable formatting -->
    <pre><?php print_r($items); ?></pre>
    <p>Total items: <?php echo count($items); ?></p>
</body>
</html>