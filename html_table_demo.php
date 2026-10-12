<?php
// html_table_demo.php - Renders SQL query result set into an HTML table (no CSS)
// Uses plain HTML table with border attribute only
require_once 'dbconfig.php';

// Prepare and execute SQL query with ORDER BY for consistent display
$sql = "SELECT item_id, item_name, brand_name, category, subcategory, price_mxn, unit, country_origin 
        FROM grocery_items ORDER BY item_id ASC";
$stmt = $pdo->prepare($sql);
$stmt->execute();

// Fetch all results as associative arrays
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Grocery Items Table - cantiga-grocery-db</title>
</head>
<body>
    <h1>Grocery Items List (HTML Table)</h1>
    <p><a href="index.php">Back to Home</a></p>
    <p>Total items: <?php echo count($items); ?></p>

    <!-- Plain HTML table (no CSS, just border attribute) -->
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Item Name</th>
                <th>Brand</th>
                <th>Category</th>
                <th>Subcategory</th>
                <th>Price (MXN)</th>
                <th>Unit</th>
                <th>Country Origin</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($items as $item): ?>
            <tr>
                <td><?php echo htmlspecialchars($item['item_id']); ?></td>
                <td><?php echo htmlspecialchars($item['item_name']); ?></td>
                <td><?php echo htmlspecialchars($item['brand_name']); ?></td>
                <td><?php echo htmlspecialchars($item['category']); ?></td>
                <td><?php echo htmlspecialchars($item['subcategory']); ?></td>
                <td>$<?php echo number_format($item['price_mxn'], 2); ?></td>
                <td><?php echo htmlspecialchars($item['unit']); ?></td>
                <td><?php echo htmlspecialchars($item['country_origin']); ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>