<!DOCTYPE html>  
<html>  
<head>  
<title>Edit profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<script src="JS/style.js"></script>
<script src="JS/duplication.js"></script>
</head>  
<body>
<?php 

session_start();

if (isset($_SESSION['susername']) ){require 'Bar/top1.php';}
else{header("location:Login.php");}

 require 'Controller/storeupdateprofile.php';

?> 

<div class="div">
<fieldset>
<legend>EDIT PROFILE</legend>                 
                
  <form method="post" name="form"> 
  <label for="sname">Supervisior name:</label>
  <input type="text" id="sname" name="sname" placeholder="ex : Enter Name " onkeyup="checkName()" onblur="checkName()">
  <span class="error" id="nameErr"> <?php echo $nameErr;?></span><hr>

  <label for="semail"> Email :</label>
  <input type="text" id="semail" name="semail" placeholder="ex : abc@something.com" onkeyup="showUser(this.value)" onblur="checkEmail()">
  <span class="error" id="emailErr"> <?php echo $emailErr;?></span><hr>
  <div id="txtHint"><b>Person email info will be listed here...</b></div>

  <label for="susername">Username :</label>
  <input type="text" id="susername" name="susername" onkeyup="showUser_name(this.value)" onblur="checkusername()">
  <span class="error" id="usernameErr"> <?php echo $usernameErr;?></span><hr>
  <div id="txtHint_2"><b>Person username info will be listed here...</b></div>

  <label for="spassword">Password :</label>
  <input type="password" id="spassword" name="spassword" onkeyup="checkPassword()" onblur="checkPassword()">
  <span class="error" id="passwordErr"> <?php echo $passwordErr;?></span><hr>

  <label for="sphone">Mobile number :</label>
  <input type="text" id="sphone" name="sphone" placeholder="ex : 017xxxxxxxxx" pattern="[0-9]{3}[0-9]{8}" onkeyup="showUser_phonenumber(this.value)" onblur="checkPhoneNumber()">
  <span class="error" id="mobile_numberErr"> <?php echo $mobile_numberErr;?></span><hr>
  <div id="txtHint_3"><b>Person phone number will be listed here...</b></div>

  <label for="saddress">Address :</label>
  <input type="text" id="saddress" name="saddress"  placeholder="area name,thana,union,district,division" onkeyup="checkaddress()" onblur="checkaddress()">
  <span class="error" id="addressErr"> <?php echo $addressErr;?></span><hr>


<input type="submit" name="submit" value="Submit" class="btn btn-info">
<input type="reset" name="reset" value="Reset" class="btn btn-info">
</form>  
</fieldset>
</div> 
</body>  
</html>  