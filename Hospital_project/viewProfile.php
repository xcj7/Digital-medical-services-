<!DOCTYPE html>  
<html>  
<head>  
<title>View profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<script src="JS/style.js"></script>

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>  
<body>
<?php 

session_start();

if (isset($_SESSION['husername'])){require 'Bar/top1.php';}
else{header("location:login.php");} 

require 'Controller/showData.php';

?> 

<div class="div">
<fieldset>
<legend>PROFILE</legend>

<div class="justLeft">
  <p>Name of hospital              :   <?php echo $hname ?></p><hr>
  <p>User name of hospital         :   <?php echo $husername ?></p><hr>
  <p>Password of hospital          :   <?php echo $hpassword?></p><hr>
  <p>Email of hospital             :   <?php echo $hemail ?></p><hr>
  <p>Hospital location             :   <?php echo $hlocation ?></p><hr>
  <p>Hospital phone number         :   <?php echo $hphone ?></p><hr>
  <p>Hospital established date     :   <?php echo $hedate ?></p><hr>
  <p>Hospital  government id       :   <?php echo $hosid ?></p><hr>
  <p>Hospital ICU seat number      :   <?php echo $hicuseatno ?></p><hr>
  <p>Hospital ward number          :   <?php echo $hoswno ?></p><hr>
  <p>Hospital seat number          :   <?php echo $hosnoseat ?></p><hr>
  <p>Hospital cabin number         :   <?php echo $hcabinno ?></p><hr>
  <p>Hospital ward number          :   <?php echo $hoswno ?></p><hr>
</div> 

<div class="justRight">
<img class="proPic" 
  src="Uploads/<?php 
  if (isset($_SESSION['pic'])){echo $_SESSION['pic'];} 
  else{echo "pic.png";
  }
  ?>" alt="Profile Picture">
  <div class="textCenter"> <a href="changeProfilePicture.php" >Change Profile Picture</a>
  </div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>
<a href="editProfile.php" class="btn btn-info">Edit Profile</a><br><br>
<a href="changePassword.php" class="btn btn-info">Change Password</a>
<br><br><br><br><br><br><br><br><br>

</fieldset> 
</div>
   
</body>
<?php
require 'Bar/footer.php';
?>  
</html> 