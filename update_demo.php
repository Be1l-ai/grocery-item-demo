<?php
// update_demo.php - Uses prepared statements to UPDATE an existing record
// Includes a form for input and can pre-load data when item_id is passed via GET
require_once 'dbconfig.php';

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get all field values from the form
    $item_id = $_POST['item_id'] ?? '';
    $item_name = $_POST['item_name'] ?? '';
    $brand_name = $_POST['brand_name'] ?? '';
    $category = $_POST['category'] ?? '';
    $subcategory = $_POST['subcategory'] ?? '';
    $price_mxn = $_POST['price_mxn'] ?? '';
    $unit = $_POST['unit'] ?? '';
    $country_origin = $_POST['country_origin'] ?? 'Mexico';

    // UPDATE statement with named placeholders for security
    $sql = "UPDATE grocery_items 
            SET item_name = :item_name, 
                brand_name = :brand_name, 
                category = :category, 
                subcategory = :subcategory, 
                price_mxn = :price_mxn, 
                unit = :unit, 
                country_origin = :country_origin
            WHERE item_id = :item_id";

    $stmt = $pdo->prepare($sql);
    // Bind all parameters
    $stmt->bindParam(':item_id', $item_id, PDO::PARAM_INT);
    $stmt->bindParam(':item_name', $item_name, PDO::PARAM_STR);
    $stmt->bindParam(':brand_name', $brand_name, PDO::PARAM_STR);
    $stmt->bindParam(':category', $category, PDO::PARAM_STR);
    $stmt->bindParam(':subcategory', $subcategory, PDO::PARAM_STR);
    $stmt->bindParam(':price_mxn', $price_mxn);
    $stmt->bindParam(':unit', $unit, PDO::PARAM_STR);
    $stmt->bindParam(':country_origin', $country_origin, PDO::PARAM_STR);

    // Execute the UPDATE
    try {
        $stmt->execute();
        // rowCount() returns number of affected rows
        if ($stmt->rowCount() > 0) {
            $message = "Record with ID $item_id updated successfully.";
        } else {
            $message = "No record found with ID $item_id (nothing updated).";
        }
    } catch (PDOException $e) {
        $message = "Update failed: " . $e->getMessage();
    }
}

// If item_id passed via GET, load existing data to pre-fill the form
$existing_item = null;
if (isset($_GET['item_id'])) {
    $item_id = $_GET['item_id'];
    $sql = "SELECT * FROM grocery_items WHERE item_id = :item_id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':item_id', $item_id, PDO::PARAM_INT);
    $stmt->execute();
    $existing_item = $stmt->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update Grocery Item</title>
</head>
<body>
    <h1>Update Grocery Item</h1>
    <p><a href="index.php">Back to Home</a></p>

    <?php if ($message): ?>
    <p><strong><?php echo htmlspecialchars($message); ?></strong></p>
    <?php endif; ?>

    <!-- Form to edit item fields -->
    <form method="POST" action="update_demo.php">
        <table>
            <tr><td>Item ID:</td><td><input type="number" name="item_id" value="<?php echo htmlspecialchars($existing_item['item_id'] ?? ''); ?>" required></td></tr>
            <tr><td>Item Name:</td><td><input type="text" name="item_name" value="<?php echo htmlspecialchars($existing_item['item_name'] ?? ''); ?>"></td></tr>
            <tr><td>Brand Name:</td><td><input type="text" name="brand_name" value="<?php echo htmlspecialchars($existing_item['brand_name'] ?? ''); ?>"></td></tr>
            <tr><td>Category:</td><td><input type="text" name="category" value="<?php echo htmlspecialchars($existing_item['category'] ?? ''); ?>"></td></tr>
            <tr><td>Subcategory:</td><td><input type="text" name="subcategory" value="<?php echo htmlspecialchars($existing_item['subcategory'] ?? ''); ?>"></td></tr>
            <tr><td>Price (MXN):</td><td><input type="number" step="0.01" name="price_mxn" value="<?php echo htmlspecialchars($existing_item['price_mxn'] ?? ''); ?>"></td></tr>
            <tr><td>Unit:</td><td><input type="text" name="unit" value="<?php echo htmlspecialchars($existing_item['unit'] ?? ''); ?>"></td></tr>
            <tr><td>Country Origin:</td><td><input type="text" name="country_origin" value="<?php echo htmlspecialchars($existing_item['country_origin'] ?? 'Mexico'); ?>"></td></tr>
            <tr><td></td><td><input type="submit" value="Update Item"></td></tr>
        </table>
    </form>

    <!-- Links to pre-fill form with existing data -->
    <p>Load existing item:
        <a href="update_demo.php?item_id=1">Item 1</a> |
        <a href="update_demo.php?item_id=2">Item 2</a> |
        <a href="update_demo.php?item_id=3">Item 3</a>
    </p>
</body>
</html>