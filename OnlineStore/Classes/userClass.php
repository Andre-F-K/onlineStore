<?php


class User{

    public $userName;
    public $password;
    public $email;

    function __construct($userName, $password, $email){
        $this->userName = $userName;
        $this->password = $password;
        $this->email = $email;
    }

        function get_name() {
            echo $this->userName;
    
          }
          
        static function register_User($userName, $Password, $email)
          {
            $servername = "localhost";
            $username = "root"; 
            $password = "root"; 
            $dbname = "online_store";

            $conn = new mysqli($servername, $username, $password, $dbname);
            
            if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
            }

            $stmt = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
            $stmt->bind_param("sss", $userName, $email, $Password);
            
            if ($stmt->execute()) {
                return "User registered successfully.";
            } else {
                return "Error registering user: " . $stmt->error;
            }

          }

        public function checkUserExists($userName, $email)
        {
            $servername = "localhost";
            $username = "root"; 
            $password = "root"; 
            $dbname = "online_store";

            $conn = new mysqli($servername, $username, $password, $dbname);
            
        // Prepare and execute the SQL query to check if the user exists
        $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND email = ?");
        $stmt->bind_param("ss", $userName, $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            return true; // User exists
            
        } else {
            return false; // User does not exist
        }

        $stmt->close();
        }

        public function registerUser($email, $Password)
        {
            $servername = "localhost";
            $username = "root"; 
            $password = "root"; 
            $dbname = "online_store";

            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check if the user already exists
            if ($this->checkUserExists($email, $Password)){
            return "User already exists. Please choose a different username or email.";
            }
            

            // Prepare and execute the SQL query to insert the user details into the database
            $hashedPassword = password_hash($Password, PASSWORD_BCRYPT);
            $stmt = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
            $stmt->bind_param("sss", $userName, $email, $Password);

            if ($stmt->execute()) {
                return "User registered successfully.";
                
            } else {
                return "Error registering user: " . $stmt->error;
            }

 
        }

          

}