<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "legal";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

$sql = "SELECT * FROM `share_experiences`";
$result = $conn->query($sql);

?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

  
    <link rel="stylesheet" href="./experiencepage.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Mogra:wght@400&display=swap"
    />
    <style>
      .experience-page{
        width: 100vw;
      }
      .experience-page h1{
        font-size:40px;
        font-weight: 500;
        font-family: var(--font-mogra);
        text-align:center;
      }
      .form-div{
        width:60%;
        margin:auto;
      }
      .form-div h3{
        font-size:28px;
        font-weight: 500;
        font-family: var(--font-mogra);
      }
      .form-div input{
        border: 1px solid var(--color-black);
        background-color: var(--color-gainsboro);
        border-radius: var(--br-xl);
        box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
        box-sizing: border-box;
      }
      .case-title{
        width:50%;
        height:50px;
      }
      .case-description{
        width:50%;
        height:150px;
      }
    </style>
  </head>
  <body>
    <div class="share-your-case-experience" style="height:150px;">
      <div class="legal-resources-hub">LEGAL RESOURCES HUB</div>
      <div class="share-your-case-experience-child"></div>
      <div class="glossary">Glossary</div>
      <div class="about-us">About us</div>
      <div class="login">Login</div>
      <div class="home">Home</div>

      <a class="glossary" href="glossary.html"></a>
      <a class="about-us" href="aboutus.html"></a>
      <a class="login" href="userlogin.html"></a>
      <a class="home" href="index.html"></a>


      <img class="image-46-icon" alt="" src="./images/hammer.jpeg" />
    </div>
      <!-- <div class="share-your-case">Share Your Case Experiences</div>
      <div class="recently-shared-experiences">Recently shared Experiences</div>
      <input
        class="case-titele-box"
        name="Case_title"
        id="case tite box"
        placeholder="Case title"
        type="text"
      />

      <input
        class="case-description-box"
        name="Enter_case_description"
        id="case description box"
        placeholder="Enter case description"
        type="text"
      />

      <input class="recently-shared-box" type="text" />

      <div class="case-title">Case Title :</div>
      <div class="case-description">Case description :</div>
      <button class="post-box" onclick="submit_form();"></button>
      <button class="reply-button-box"></button>
      <div class="post">Post</div>
      <div class="reply">Reply</div>
    </form> -->
    <div class="experience-page">
      <form class="experience-form" id="share-your-case-experience-form"  action="./shareexperiences.php" method="post">
        <h1>Share your own Experiences</h1>
        <div class="form-div">
          <h3>Case Title : </h3> 
          <input type="text" name="Case_title" placeholder="Case title" class="case-title">
          <h3>Case Description : </h3> 
          <input type="text" name="Enter_case_description" placeholder="Enter case description" class="case-description">
          <div class="submit-button">Post</div>
        </div>
      </form>
      <div class="shared-experience-div">
        <h1>Recently Shared Experiences</h1>
        <div class="shared-experience">
          <h3>Case Title : asdfdsfdfdsfasdf</h3>
          <h3>Case Description : </h3>
          <p>This is a test description</p>
        </div>
      </div>
    </div>
  </body>
</html>
<script>
  function submit_form() {
    document.getElementById("share-your-case-experience-form").submit();
  }
</script>