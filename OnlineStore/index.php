


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="styles/login.css">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<body class="bg-dark vh-100">
    
    
<header class="d-block bg-white">
    <ul class="nav">
        <li class="nav-item">
          <a class="nav-link active" href="signUp.php">Sign Up</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="mainStore.php">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul> 
    </header>

    <?php 
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    // Include the Users class
    require_once 'Classes/userClass.php';

    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $email = $_POST["email"];
        $Password = $_POST["Password"];
        $userName = $_POST["userName"];
        $user = new User($userName,$Password,$email );

        if ($user->checkUserExists($userName, $email)) {
            // Register the user if not already exists
            header("Location: mainStore.php");
           //  echo 'bestaan nie';
       } else{
        echo 'koos';
       }

        // Validate and the user
        // $result = $user->checkUserExists($userName, $email);
        // header("Location: mainStore.php");
        // exit;
        // header("Location: mainStore.php");
    }
?>
 
    <div class="d-flex justify-content-center align-items-center vh-100" >
    <div class="loginForm w-50 bg-white rounded-3 p-3">
        <form class="text-center" action="index.php" method="post">
            <h1>Login</h1>
            <div class="mb-3">
                    <label for="userName" class="form-label">User Name</label>
                    <input type="text" class="form-control" name="userName" id="userName">
                </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Email address</label>
              <input type="email" name='email' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" name='Password' class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" class="btn btn-info">Login</button>
          </form>   
    </div>
</div>

</body>
</html>