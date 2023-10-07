<?php
// cart.php

include 'Classes/products.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "online_store";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch selected product IDs from the $_POST['products'] array
$selectedProductIds = $_POST['products'] ?? [];

// // Debug statement
// echo "Selected Product IDs (cart.php): ";
// var_dump($selectedProductIds);

$idString = implode(',', array_map('intval', $selectedProductIds));
// Prepare the SQL query using the IN operator
$sql = "SELECT * FROM products WHERE id IN ($idString)";

$result = $conn->query($sql);

$totals = 0;


$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Store</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="index.js"> </script>
</head>
<body class="bg-dark vh-100">
<header class="d-block bg-white">
        <ul class="nav d-flex justify-content-around">
            <li class="nav-item">
            <a class="btn btn-primary bg-info" href="mainStore.php" role="button">Back to Main store</a>
            </li>
            <li class="nav-item">
            <?php echo '<td><a class="btn btn-primary bg-info" role="button"  onClick="confirm(\'Proceed to checkout?\')">Check Out</a></td>';?>
            </li>
            <li class="nav-item">
                <a class="btn btn-primary bg-info" href="signUp.php" role="button">Log Out</a>
            </li>
        </ul>
        
    </header>

<main class="container mt-4 bg-white">
    <section id="cart">
        <h2>Cart</h2>
        <div class="row">
            <?php
            if ($result->num_rows > 0) {
                // Loop through the result set and process each row
                while ($row = $result->fetch_assoc()) {
                    // Access the data using $row['column_name']
                    $id = $row['id'];
                    $title = $row['title'];
                    $description = $row['description'];
                    $price = $row['price'];
                    $rating = $row['rating'];
                    $thumbnail = $row['thumbnail'];

                    $cartProducts = new Products($id, $title, $description, $price, $thumbnail);
                    $totals += $price;
                    
                    echo '
                                <div class="col-lg-4 col-md-6 mb-4">
                                    <div class="card h-20 bg-info">
                                        <img src="' . $thumbnail . '" class="card-img-top img-fluid" style="height: 320px" alt="Product Image">
                                        <div class="card-body">
                                            <h5 class="card-title">' . $title . '</h5>
                                            <p class="card-text">' . $description . '</p>
                                            <p>Price: $' . $price . '</p>
                                        </div>
                                    </div>
                                </div>
                                ';  
                        
                    
                    
                }
            } else {
                echo "No results found.";
                echo $idString;
            }
            

               echo '<nav class="navbar navbar-light bg-light w-100 d-flex justify-content-around ">
                        <a class="navbar-brand " href="#">Your Total is :<h1>'.'$'.$totals.'</h1></a>
                        </nav>'
            ?>
        </div>
    </section>
</main>
            

</body>
</html>
