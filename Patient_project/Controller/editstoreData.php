<?php

require 'Model/editmodel.php';
//require 'Model/editjsonCode.php';

if (isset($_SESSION['Pusername'])){}
else
  {  $Pname = $Pemail = $Pphone =  $Paddress = $Pusername=  $Ppassword = $Pgender =  $Pdob =  '';}

  $PnameErr = $PemailErr = $PphoneErr  = $PaddressErr = $PusernameErr=  $PpasswordErr =  $PgenderErr =  $PdobErr = '';
  $flag=1;
$update="on";  
if($_SERVER["REQUEST_METHOD"] == "POST")  
{  
    if (empty($_POST["Pname"])) 
    {
      $PnameErr = "Name is required";
      $flag=0;
      $update="off"; 
    } 
    else 
    {
      $Pname = test_input2($_POST["Pname"]);
      if (!preg_match("/^[a-zA-Z0-9-' _.-]*$/",$Pname))
      {
        $PnameErr = "Only letters, white space, period, dash allowed ";
        $Pname="";
        $flag=0;
        $update="off";
      }
    }
  
        
    if (empty($_POST["Pemail"])) 
    {
      $PemailErr = "Email is required";
      $flag=0;
      $update="off";
    } 
    else 
    {
      $Pemail = test_input2($_POST["Pemail"]);
      if (!filter_var($Pemail, FILTER_VALIDATE_EMAIL)) 
      {
        $PemailErr = "Invalid email format";
        $Pemail="";    
        $flag=0;
        $update="off";
      }
    }
  
  
    if (empty($_POST["Pphone"])) 
    {
      $PphoneErr = "Mobile Number is required";
      $flag=0;
      $update="off";
    } 
    else 
    {
      $Pphone = test_input2($_POST["Pphone"]);
      if(!preg_match('/^[0-9]{3}[0-9]{8}$/', $_POST['Pphone']))
      {
        $PphoneErr = "Invalid Number";
        $Pphone="";
      }
    }
  
    
  
    if (empty($_POST["Paddress"])) 
    {
      $PaddressErr = "Address is required";
      $flag=0;
      $update="off";
    } 
    else 
    {
      $Paddress = test_input2($_POST["Paddress"]);
    }
  
    if (empty($_POST["Pusername"])) 
    {
      $PusernameErr = "Name is required";
      $flag=0;
      $update="off"; 
    } 
    else 
    {
      $Pusername = test_input2($_POST["Pusername"]);
      if (!preg_match("/^[a-zA-Z0-9-' _.-]*$/",$Pusername) || str_word_count($Pusername)<2 )
      {
        $PusernameErr = "Only letters, white space, period, dash allowed and minimum two words";
        $Pusername="";
        $flag=0;
        $update="off";
      }
    }
  
  
  
  
    if (empty($_POST["Ppassword"])) 
    {
      $PpasswordErr = "Password is required";
      $flag=0;
    } 
    else 
    {
      $Ppassword = test_input2($_POST["Ppassword"]);
      if (strlen($Ppassword) < 8)
      {
        $PpasswordErr = "Must be atleast 8 characters";
        $Ppassword="";
        $flag=0;
      }
      else if (!preg_match("/[!,@,#,$,%,^,&]/",$Ppassword)) 
      {
        $PpasswordErr = "Password must contain at least one of the special character (!,@,#,$,%,^,&)";
        $Ppassword ="";
        $flag=0;
      }
    }
  
   /*if (empty($_POST["Pconfirm_password"])) 
    {
      $Pconfirm_passwordErr = "Password is required";
      $flag=0;
    } 
    else 
    {
      $Pconfirm_password = test_input2($_POST["Pconfirm_password"]);
      if($Pconfirm_password!=$Ppassword)
      {
        $Pconfirm_passwordErr = "Password dosen't match";
        $Pconfirm_password="";
        $flag=0;
      }
    }*/
  
    if(empty($_POST["Pgender"]))  
    {  
      $PgenderErr = "Select Gender"; 
      $flag=0; 
    }
    else 
    {
      $Pgender = test_input2($_POST["Pgender"]);
    } 
  
  
    if(empty($_POST["Pdob"]))  
    {  
      $PdobErr = "Enter Date of Birth";
      $flag=0;  
    }
    else 
    {
      $Pdob = test_input2($_POST["Pdob"]);
      if (time() < strtotime('+18 years', strtotime($Pdob))) 
      {
        $PdobErr = 'Minimum 18+';  
        }
    }

  if ($flag==1) 
  {
    //echo "hello 1";
    if(isset($_POST["submit"]))  
    { 
      //echo "hello 2";
      $data['Pname'] = $_POST['Pname'];
        $data['Pemail'] = $_POST['Pemail'];
        $data['Pphone'] = $_POST['Pphone'];
        $data['Paddress'] = $_POST['Paddress'];
        $data['Pusername'] = $_POST['Pusername'];
        $data['Ppassword'] = $_POST['Ppassword'];
        //$data['Pconfirm_password'] = $_POST['Pconfirm_password'];
        $data['Pgender'] = $_POST['Pgender'];
        $data['Pdob'] = $_POST['Pdob'];
     updateData($_SESSION['Pid'], $data); 
        echo 'Successfully Updated';
      
    } 
  }
  
      
} 

function test_input2($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
} 
?>