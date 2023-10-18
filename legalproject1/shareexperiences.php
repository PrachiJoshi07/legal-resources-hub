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
// echo "<pre>";
// print_r($_POST);die();
$Case_title = $_POST['Case_title'];
$Enter_case_description = $_POST['Enter_case_description'];

$sql = "INSERT INTO `share_experiences` (case_title,case_description)
VALUES ('$Case_title', '$Enter_case_description')";

if ($conn->query($sql) === TRUE) {
  echo "Share experiences succesfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();

header("Location: http://localhost/legalproject/experiencepage.html");
?>