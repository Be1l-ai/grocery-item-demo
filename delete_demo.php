<?php
// delete_demo.php - Uses prepared statements to DELETE a record
// Includes a form to enter the item_id to delete
require_once 'dbconfig.php';

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the item_id from the form
    $item_id = $_POST['item_id'] ?? '';

    // DELETE statement with named placeholder for security
    $sql = "DELETE FROM grocery_items WHERE item_id = :item_id";
    $stmt = $pdo->prepare($sql);
    // Bind parameter
    $stmt->bindParam(':item_id', $item_id, PDO::PARAM_INT);

    // Execute the DELETE
    try {
        $stmt->execute();
        // rowCount() returns number of affected rows
        if ($stmt->rowCount() > 0) {
            $message = "Record with ID $item_id deleted successfully.";
        } else {
            $message = "No record found with ID $item_id (nothing deleted).";
        }
    } catch (PDOException $e) {
        $message = "Delete failed: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Grocery Item</title>
</head>
<body>
    <h1>Delete Grocery Item</h1>
    <p><a href="index.php">Back to Home</a></p>

    <?php if ($message): ?>
    <p><strong><?php echo htmlspecialchars($message); ?></strong></p>
    <?php endif; ?>

    <!-- Form to enter item ID for deletion -->
    <form method="POST" action="delete_demo.php">
        <table>
            <tr><td>Enter Item ID to delete:</td><td><input type="number" name="item_id" required></td></tr>
            <tr><td></td><td><input type="submit" value="Delete Item"></td></tr>
        </table>
    </form>
</body>
</html>