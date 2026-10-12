<?php
// insert_demo.php - Uses prepared statements to INSERT a new record
require_once 'dbconfig.php';

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form values
    $item_name = $_POST['item_name'] ?? '';
    $brand_name = $_POST['brand_name'] ?? '';
    $category = $_POST['category'] ?? '';
    $subcategory = $_POST['subcategory'] ?? '';
    $price_mxn = $_POST['price_mxn'] ?? '';
    $unit = $_POST['unit'] ?? '';
    $country_origin = $_POST['country_origin'] ?? 'Mexico';

    // Prepared statement prevents SQL injection
    $sql = "INSERT INTO grocery_items
            (item_name, brand_name, category, subcategory, price_mxn, unit, country_origin)
            VALUES
            (:item_name, :brand_name, :category, :subcategory, :price_mxn, :unit, :country_origin)";

    $stmt = $pdo->prepare($sql);
    // Bind parameters to placeholders
    $stmt->bindParam(':item_name', $item_name, PDO::PARAM_STR);
    $stmt->bindParam(':brand_name', $brand_name, PDO::PARAM_STR);
    $stmt->bindParam(':category', $category, PDO::PARAM_STR);
    $stmt->bindParam(':subcategory', $subcategory, PDO::PARAM_STR);
    $stmt->bindParam(':price_mxn', $price_mxn);
    $stmt->bindParam(':unit', $unit, PDO::PARAM_STR);
    $stmt->bindParam(':country_origin', $country_origin, PDO::PARAM_STR);

    // Execute and capture result
    try {
        $stmt->execute();
        $message = "Record inserted successfully. New item ID: " . $pdo->lastInsertId();
    } catch (PDOException $e) {
        $message = "Insert failed: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Grocery Item</title>
</head>
<body>
    <h1>Insert New Grocery Item</h1>
    <p><a href="index.php">Back to Home</a></p>

    <?php if ($message): ?>
    <p><strong><?php echo htmlspecialchars($message); ?></strong></p>
    <?php endif; ?>

    <form method="POST" action="insert_demo.php">
        <table>
            <tr><td>Item Name:</td><td><input type="text" name="item_name" required></td></tr>
            <tr><td>Brand Name:</td><td><input type="text" name="brand_name" required></td></tr>
            <tr><td>Category:</td><td><input type="text" name="category" required></td></tr>
            <tr><td>Subcategory:</td><td><input type="text" name="subcategory"></td></tr>
            <tr><td>Price (MXN):</td><td><input type="number" step="0.01" name="price_mxn" required></td></tr>
            <tr><td>Unit:</td><td><input type="text" name="unit" required></td></tr>
            <tr><td>Country Origin:</td><td><input type="text" name="country_origin" value="Mexico"></td></tr>
            <tr><td></td><td><input type="submit" value="Insert Item"></td></tr>
        </table>
    </form>
</body>
</html>