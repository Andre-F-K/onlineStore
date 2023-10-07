<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

include 'Classes/userClass.php';
include 'Classes/products.php';
 

$servername = "localhost";
$username = "root"; 
$password = "root"; 
$dbname = "online_store";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$userName = $_POST['userName'];
$email = $_POST['email'];
$Password = password_hash($_POST["password"], PASSWORD_BCRYPT);;

$user = new User($userName, $email, $Password);

// Check if the user already exists
if ($user->checkUserExists($userName, $email)) {
     // Register the user if not already exists
}
$user::register_User($userName, $Password, $email);



// Read JSON file and convert to PHP array
$jsonData = file_get_contents('Data/products.json');
$products = json_decode($jsonData, true);

// Check if the 'products' table is empty
$sql = "SELECT COUNT(*) AS count FROM products";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $rowCount = $row['count'];

    if ($rowCount == 0) {
        // Insert products into the database
        foreach ($products as $product) {
            $title = $product['title'];
            $description = $product['description'];
            $price = $product['price'];
            $rating = $product['rating'];
            $thumbnail = $product['thumbnail'];

            $sql = "INSERT INTO products (title, description, price, rating, thumbnail ) VALUES ('$title', '$description', '$price', '$rating', '$thumbnail')";
            // if ($conn->query($sql) === true) {
            //     echo "Product '$title' inserted successfully.<br>";
            // } else {
            //     echo "Error inserting product '$title': " . $conn->error . "<br>";
            // }  
        } 
    }
}












// Fetch products from the database
$sql = "SELECT * FROM products";
$result = $conn->query($sql);

// Check if any products were fetched
if ($result->num_rows > 0) {
    echo 'werk';
    // Loop through the result set and process each product
    while ($row = $result->fetch_assoc()) {
        // Access product data using $row['column_name']
        $productId = $row['id'];
        $productTitle = $row['title'];
        $productDescription = $row['description'];
        $productPrice = $row['price'];
        $productThumbnail = $row['thumbnail'];

        // Do something with the product data, e.g., display it on the page
        // $productsClass = new Products($productId ,$productTitle, $productDescription, $productPrice, $productThumbnail);
        // echo "Product ID: " . $productId . "<br>";
        // echo "Product Name: " . $productTitle . "<br>";
        // echo "Product Description: " . $productDescription . "<br>";
        // echo "Product Price: " . $productPrice . "<br>";
        // echo "<br>";
    }
} else {
    echo "No products found.";
}

// Initialize the cart array in the session if it doesn't exist
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Check if the form is submitted and add selected product IDs to the cart
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['products']) && is_array($_POST['products'])) {
    foreach ($_POST['products'] as $productId) {
        // Check if the product ID is not already in the cart
        if (!in_array($productId, $_SESSION['cart'])) {
            $_SESSION['cart'][] = $productId;
            
        }
    }

    // Debug statement
    echo "Selected Product IDs (mainStore.php): ";
    var_dump($_SESSION['cart']);

}



// Fetch products from the database
$sql = "SELECT * FROM products";
$result = $conn->query($sql);


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
        <p>Welcome Mr <?php echo $user->get_name();?></p>
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link active" href="index.php">Log Out</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="mainstore.php">Main store</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
        <a class="btn btn-primary" href="cart.php" role="button">Cart</a>
    </header>

    <main class="container mt-4 bg-white">
        <section id="products">
            <h2>Products</h2>
            <form method="post" action="cart.php">
                <div class="row">
                    <?php
                    foreach ($products as $product) {
                        $productsClass = new Products($product["id"], $product["title"], $product["description"], $product["price"], $product["thumbnail"]);
                        echo '
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card">
                                    <img src="' . $product["thumbnail"] . '" class="card-img-top img-fluid" style="height: 320px" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">' . $productsClass->get_title() . '</h5>
                                        <p class="card-text">' . $product["description"] . '</p>
                                        <p>Price: $' . $product["price"] . '</p>
                                        <label for="product_' . $product["id"] . '">Add to Cart</label>
                                        <input type="checkbox" id="product_' . $product["id"] . '" name="products[]" value="' . $product["id"] . '">
                                    </div>
                                </div>
                            </div>
                            ';
                    }
                    ?>
                </div>
                <button class="btn btn-primary" type="submit">Go to Cart</button>
            </form>
        </section>
    </main>
</body>
</html>
