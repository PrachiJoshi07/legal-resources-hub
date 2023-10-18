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
$full_name = $_POST['full_name'];
$email = $_POST['email'];
$Location = $_POST['Location'];
$phone_number = $_POST['phone_number'];
$experience_in_areas = $_POST['experience_in_areas'];
$practice_areas = $_POST['practice_areas'];
$organisation = $_POST['organisation'];
$create_password = md5($_POST['create_password']);
$confirm_password = $_POST['confirm_password'];


$sql = "INSERT INTO `new_lawyer_registration_form` (full_name,email,`Location`,phone_number,experience_in_areas,practice_areas,organisation,create_password,confirm_password)
VALUES ('$full_name','$email','$Location','$phone_number','$experience_in_areas','$practice_areas','$organisation','$create_password','$confirm_password')";

$sql2 = "INSERT INTO `lawyer_login` (username,`password`)
VALUES ('$email', '$create_password')";



if ($conn->query($sql) === TRUE) {
  echo "Registered succesfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

if ($conn->query($sql2) === TRUE) {
  echo "Login added succesfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();

header("Location: http://localhost/legalproject/lawyerlogin.html");
?>