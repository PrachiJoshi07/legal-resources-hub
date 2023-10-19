<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader

require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';

$servername = "localhost";
$username = "root";
$password = "";
$database = "legal";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(!empty($_POST)){

  $lawyer_id = $_POST['lawyer_id'];
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
    // $result = $conn->query("SELECT full_name, email FROM new_lawyer_registration_form WHERE `id` = $lawyer_id ");
    // if (mysqli_num_rows($result) > 0) {
    //   while($row = mysqli_fetch_assoc($result)) {
    //     //Create an instance; passing `true` enables exceptions
    //     $mail = new PHPMailer(); $mail->IsSMTP(); $mail->Mailer = "smtp";
    //     //Server settings
    //     $mail->SMTPDebug  = 1;  
    //     $mail->SMTPAuth   = TRUE;
    //     $mail->SMTPSecure = "tls";
    //     $mail->Port       = 587;
    //     $mail->Host       = "smtp.gmail.com";
    //     $mail->Username   = "";
    //     $mail->Password   = "";                                  //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //     //Recipients
    //     $mail->IsHTML(true);
    //     $mail->AddAddress("omadityajain@gmail.com");
    //     $mail->SetFrom("jainomaditya@gmail.com", "om jain");
    //     $mail->Subject = "Test is Test Email sent via Gmail SMTP Server using PHP Mailer";
    //     $content = "<b>This is a Test Email sent via Gmail SMTP Server using PHP mailer class.</b>";
    //     $mail->MsgHTML($content); 
    //     if(!$mail->Send()) {
    //       echo "Error while sending Email.";
    //       var_dump($mail);
    //     } else {
    //       echo "Email sent successfully";
    //     }
    //   }
    // }
    
    
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

}

// $conn->close();

// header("Location: http://localhost/legalproject");
?>
<!-- <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./bookconsultation.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Mogra:wght@400&display=swap"
    />
    <script src= 
    "https://smtpjs.com/v3/smtp.js"> 
  </script> 
  </head>
  <body>
    <form id="consultation_form" class="book-consultation" action="./bookconsultation.php" method="post" >
      <div class="main-background-box"></div>
      <div class="legal-resources-hub">LEGAL RESOURCES HUB</div>


      <input type="hidden" name="lawyer_id" value="<?php if(!empty($_GET['id'])) echo $_GET['id']; ?>">


      <div class="home-glossary-box"></div>
      <div class="login">login</div>
      <a class="login" href="userlogin.html">Login</a>
      
      <div class="about-us">About us</div>
      <div class="glossary">Glossary</div>
      <div class="home">Home</div>

      <a class="glossary" href="glossary.html">Glossary</a>
      <a class="about-us" href="aboutus.html">About us</a>
      <a class="home" href="index.html">Home</a>








      <img class="image-46-icon" alt="" src="./images/hammer.jpeg" />

      <img class="image-box-icon" alt="" src="./images/Rectangle 4book consultation.png" />

      <input
        class="client-name-box"
        name="Name"
        id="client name box 1 "
        placeholder="Name"
        type="text"
      />

      <input
        class="address-box"
        name="Enter your adress"
        id="adrdress box"
        placeholder="Enter your address"
        type="text"
      />

      <input
        class="legal-domain-box"
        placeholder="Enter your Domain (eg-criminal,civil,etc)"
        type="text"
        name="legal-domain"
      />

      <input
        class="short-description-box"
        placeholder="Write short description of your problem domain"
        type="text"
        name="problem-description"
      />

      <input
        class="time-box"
        name="Time"
        id="Time box"
        placeholder="Date and Time"
        type="datetime-local"
      />

      <input class="day-box" placeholder="Enter Day" name="day" type="text" />

      <div class="date-and-time">Date and Time</div>
      <div class="day">Day</div>
      <input
        class="email-box"
        name="Email"
        id="email box"
        placeholder="Enter your email"
        type="email"
      />

      <input
        class="state-box"
        name="State"
        id="state box"
        placeholder="State"
        type="text"
      />

      <input
        class="city-box"
        name="City"
        id="city box"
        placeholder="City"
        type="text"
      />

      <button class="book-consultation-finam-button"></button>
      <div class="book-consultation1" onclick="submit_form();">Book Consultation</div>
      <input
        class="pincode-box"
        name="pincode"
        id="pincode box"
        placeholder="Pincode"
        type="number"
      />

      <div class="client-name">Client Name</div>
      <div class="state">State</div>
      <div class="pincode">Pincode</div>
      <div class="city">City</div>
      <div class="email">Email</div>
      <div class="address">Address</div>
      <div class="legal-domain">Legal Domain</div>
      <div class="short-description-about">
        Short Description about problem (optional)
      </div>
      <div class="note-confirmation-of">
        Note- confirmation of your appointment is sent to your email in 2 hours.
      </div>
    </form>
    
  </body>
</html>
<script>
  function submit_form(){
    document.getElementById("consultation_form").submit();
  }
</script> -->
