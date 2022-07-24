<?php 

require_once 'db_connect.php';

function addData($data){
    $conn = db_conn();
    $selectQuery = "INSERT INTO `supervisor`(`sname`, `semail`, `susername`, `sPassword`,`sphone`,`saddress`)  VALUES (:sname, :semail, :susername, :spassword, :sphone, :saddress )";
    try{
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([
            ':sname' => $_POST['sname'],
            ':semail' => $_POST['semail'],
            ':sphone' => $_POST['sphone'],
            ':saddress' => $_POST['saddress'],
            ':susername' => $_POST['susername'],
            ':spassword' => $_POST['spassword'],
            
        ]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    
    $conn = null;
    return true;
}

function getID($susername,$spassword)
{
    $conn = db_conn();
    $sql = "SELECT * FROM `supervisor` WHERE `susername`= '$susername'  and `spassword` = '$spassword' ;";
    

          $result = $conn->query($sql);

         
    if ($result->rowCount() > 0){
    $fetch = $result->fetch(); 
    return $fetch;

    }
    else{
        return "";
    }
    
}

function showAllData(){
	$conn = db_conn();
    $selectQuery = 'SELECT * FROM `supervisor` ';
    try{
        $stmt = $conn->query($selectQuery);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $rows;
}

function updateData($sid, $data){
    $conn = db_conn();
    $selectQuery = "UPDATE `supervisor` set `sname` = ?, `semail` = ?,`susername` = ?,`spassword` = ?, `sphone` = ?, `saddress` = ? where `sid` = ?";
    try{
        $stmt = $conn->prepare($selectQuery);
      

            
            $b=$data['sname'];
            $c=$data['semail'];
           
            $e=$data['susername'];
            $f=$data['spassword'];
    
            $i=$data['sphone'];
            $h=$data['saddress'];
            
           
    
            $stmt->execute([$b, $c, $e, $f, $i, $h, $sid]);



            
        
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    
    $conn = null;
    return true;
}

function updatePassword($id, $data){
    $conn = db_conn();
    $selectQuery = "UPDATE `supervisor` set `sPassword` = ? where `sid` = ?";
    try{
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([
            $data, $id
        ]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    
    $conn = null;
    return true;
}

function updatePicture($id, $data){
    $conn = db_conn();
    $selectQuery = "UPDATE `supervisor` set `simage` = ? where `sid` = ?";
    try{
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([
            $data, $id
        ]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    
    $conn = null;
    return true;
}

function deleteProduct($id){
    $conn = db_conn();
    $selectQuery = "DELETE FROM `product_info` WHERE `sid` = ?";
    try{
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([$id]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    $conn = null;

    return true;
}

function showData($id){
	$conn = db_conn();
	$selectQuery = "SELECT * FROM `supervisor` where `sid` = ?";
    try {
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([$id]);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    $data = $stmt->fetch(PDO::FETCH_ASSOC);

    return $data;
}

function showvacancy(){
	$conn = db_conn();
    $selectQuery = 'SELECT * FROM `hospital_vacancies` ';
    try{
        $stmt = $conn->query($selectQuery);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $rows;
}

function deleteuser($id){
	$conn = db_conn();
    echo $id;
    $selectQuery = "DELETE FROM `hospital_vacancies` WHERE `vacancies_id` = ?";
    try{
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([$id]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
    $conn = null;

    return true;
}

function exchangedata($id){
	$conn = db_conn();
	$selectQuery = "SELECT * FROM `hospital_vacancies` where `vacancies_id` = ?";
    try {
        $stmt = $conn->prepare($selectQuery);
        $stmt->execute([$id]);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    $data = $stmt->fetch(PDO::FETCH_ASSOC);

    return $data;
}

?>