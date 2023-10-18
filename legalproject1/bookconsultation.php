<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "legal";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST['Name'];
$email = $_POST['Email'];
$state = $_POST['State'];
$city = $_POST['City'];
$pincode = $_POST['pincode'];
$address = $_POST['Enter_your_adress'];
$day = $_POST['day'];
$time = $_POST['Time'];
$legal_domain = $_POST['legal-domain'];
$problem_description = $_POST['problem-description'];

$sql = "INSERT INTO `book_consultation` (client_name, email, `state`, city, pincode, `address`, `day`, `datetime`, `legal_domain`, problem_description, user_id)
VALUES ('$name', '$email', '$state', '$city', '$pincode', '$address', '$day', '$time', '$legal_domain', '$problem_description', 1)";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

header("Location: http://localhost/legalproject");
?>