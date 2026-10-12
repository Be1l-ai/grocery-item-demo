<?php
// fetch_demo.php - Uses fetch() to retrieve a single record
// Displays result with print_r() wrapped in <pre> tags
// Includes a form to enter the item_id to fetch
require_once 'dbconfig.php';

$search_id = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the item_id from the form submission
    $search_id = $_POST['item_id'] ?? '';
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Fetch Single Item - fetch()</title>
</head>
<body>
    <h1>Fetch Single Grocery Item (fetch)</h1>
    <p><a href="index.php">Back to Home</a></p>

    <!-- Form to enter item ID -->
    <form method="POST" action="fetch_demo.php">
        <label>Enter Item ID: <input type="number" name="item_id" value="<?php echo htmlspecialchars($search_id); ?>"></label>
        <input type="submit" value="Fetch Item">
    </form>

    <?php
    // If item_id was submitted, fetch and display the record
    if (!empty($search_id)) {
        // Prepare SQL with placeholder (?) for item_id
        $sql = "SELECT * FROM grocery_items WHERE item_id = ?";
        $stmt = $pdo->prepare($sql);
        // Bind the parameter value
        $item_id = $search_id;
        $stmt->bindParam(1, $item_id, PDO::PARAM_INT);
        $stmt->execute();

        // fetch() retrieves the next row as an associative array
        $item = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($item) {
            // Display result with print_r inside <pre> tags
            echo "<pre>";
            print_r($item);
            echo "</pre>";
        } else {
            echo "<p>No item found with ID: " . htmlspecialchars($item_id) . "</p>";
        }
    }
    ?>
</body>
</html>