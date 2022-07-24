<!DOCTYPE html>  
<html>  
<head>  
<title>Sigup</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<script src="JS/style.js"></script>

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="JS/Hospital_Signup.js"></script>
<script src="JS/duplication.js"></script>
</head>  
<body>
<?php 

session_start();

if (isset($_SESSION['husername'])){header("location:welcome.php");}
else{  require 'Bar/top.php';}
require 'Controller/storeData.php';
?>

<div class="div">
<fieldset>
<legend>Hospital registration form</legend>                 
  <form name= "form" method="post"> 
  <label for="hname">Name of hospital :</label>
  <input type="text" id="hname" name="hname" onkeyup="checkName()" onblur="checkName()">
  <span class="error" id="hnameErr"> <?php echo $hnameErr;?></span><hr>

  <label for="husername">Username for hospital :</label>
  <input type="text" id="husername" name="husername" onkeyup="showUser_name(this.value)" onblur="checkusername()">
  <span class="error" id="husernameErr"> <?php echo $husernameErr;?></span><hr>
  <div id="txtHint_2"><b>Person username info will be listed here...</b></div>

  <label for="hpassword">Password for hospital :</label>
  <input type="password" id="hpassword" name="hpassword" onkeyup="checkPassword()" onblur="checkPassword()">
  <span class="error" id="hpasswordErr"> <?php echo $hpasswordErr;?></span><hr>

  <label for="hconfirm_password">Enter the password again:</label>
  <input type="password" id="hconfirm_password" name="hconfirm_password" onkeyup="checkConfirmPassword()" onblur="checkConfirmPassword()">
  <span class="error" id="hconfirm_passwordErr"> <?php echo $hconfirm_passwordErr;?></span><hr>


  <label for="hemail">Hospital for email:</label>
  <input type="text" id="hemail" name="hemail" onkeyup="showUser(this.value)" onblur="checkEmail()">
  <span class="error" id="hemailErr"> <?php echo $hemailErr;?></span><hr>
  <div id="txtHint"><b>Person email info will be listed here...</b></div>

  <label for="hlocation">Location of the hospital :</label>
  <input type="text" id="hlocation" name="hlocation" onkeyup="checklocation()" onblur="checklocation()">
  <span class="error" id="hlocationErr"> <?php echo $hlocationErr;?></span><hr>

  <label for="hphone">Hospital phone number:</label>
  <input type="tel" id="hphone" name="hphone" pattern="[0-9]{3}[0-9]{8}" onkeyup="showUser_phonenumber(this.value)" onblur="checkPhoneNumber()">
  <span class="error" id="hphoneErr"> <?php echo $hphoneErr;?></span><hr>
  <div id="txtHint_3"><b>Hospital phone number will be listed here...</b></div>

  
<fieldset>
  <legend>Established date for hospital</legend>
  <input type="date" id="hedate" name="hedate" onkeyup="checkhedate()" onblur="checkhedate()"> 
  <span class="error" id="hedateErr"> <?php echo $hedateErr;?></span>
</fieldset><hr>

<label for="hosid">Hospital registration ID :</label>
  <input type="number" id="hosid" name="hosid" onkeyup="showUser_hospistalid(this.value)" onblur="checkregistrationid()">
  <span class="error" id="hosidErr"> <?php echo $hosidErr;?></span><hr>
  <div id="txtHint_4"><b>Hospital id info will be listed here...</b></div>

  <label for="hicuseatno">Hospital ICU seat number:</label>
  <input type="number" id="hicuseatno" name="hicuseatno" onkeyup="checkicuseat()" onblur="checkicuseat()">
  <span class="error" id="hicuseatnoErr"> <?php echo $hicuseatnoErr;?></span><hr>

  <label for="hoswno">Hospital ward number:</label>
  <input type="number" id="hoswno" name="hoswno" onkeyup="checkwardnumber()" onblur="checkwardnumber()">
  <span class="error" id="hoswnoErr"> <?php echo $hoswnoErr;?></span><hr>

  <label for="hosnoseat">Hospital seat number:</label>
  <input type="number" id="hosnoseat" name="hosnoseat" onkeyup="checkseatnumber()" onblur="checkseatnumber()">
  <span class="error" id="hosnoseatErr"> <?php echo $hosnoseatErr;?></span><hr>


  <label for="hcabinno">Hospital cabin number:</label>
  <input type="number" id="hcabinno" name="hcabinno" onkeyup="checkcabinnumber()" onblur="checkcabinnumber()">
  <span class="error" id="hcabinnoErr"> <?php echo $hcabinnoErr;?></span><hr>

  <fieldset>
  <b>Oxygen availability:</b>
  
  <select name="hoxav" id="hoxav" onkeyup="checkoxygenavailability()" onblur="checkoxygenavailability()">
  <option name="hoxav" <?php if (isset($hoxav) && $hoxav=="none") echo "checked";?> value="none"></option>
  <option name="hoxav"<?php if (isset($hoxav) && $hoxav=="Yes") echo "checked";?> value="Yes">Yes</option>
  <option name="hoxav"<?php if (isset($hoxav) && $hoxav=="No") echo "checked";?> value="No">No</option>
  </select>
  <span class="error" id="hoxavErr"> <?php echo $hoxavErr;?></span>
 </fieldset><hr>
 <input type="submit" name="submit" value="Signup" class="btn btn-info"><br><br>
 <input type="submit" name="reset" value="Reset" class="btn btn-info"><br><br><br><br><br>
</form>  
</fieldset>

</div> 
<?php require 'Bar/footer.php';?>
</body>  
</html>  