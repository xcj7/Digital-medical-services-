<?php 
// function db_conn()
// {
//     $servername = "localhost";
//     $username = "root";
//     $password = "";
//     $dbname = "modern medical services";

//     try {
//         $conn = new PDO('mysql:host='.$servername.';dbname='.$dbname.';charset=utf8', $username, $password);
//         $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//         $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
//         // var_dump($conn) ;
//     } catch (PDOException $e) {
//         echo $e->getMessage();
//     }
//     return $conn;
// }


// function db_co()
// {

	$servername = "localhost";
	$username = "root";
	$password = "";
	 //$db="test";
	$db="modern medical services";
	$conn = mysqli_connect($servername, $username, $password,$db);


    // return $co;
// }
?>


