<?php
//Insert Data
$hostname = "localhost";
$username = "root";
$password = "admin";
$databasename = "test";
try
{
 $conn = new PDO("mysql:host=$hostname;dbname=$databasename",$username, $password);
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 if(isset($_POST["gender"],$_POST["bol"]))
 {
 $query = "INSERT INTO gen(gender,bol) VALUES (:gender,:bol)";
 $statement = $conn->prepare($query);
 $statement->execute(
 array(
 'gender' => $_POST["gender"],
 'bol' => $_POST["bol"]
 )
 );
 $count = $statement->rowCount();
 if($count > 0)
 {
 echo "Data Inserted Successfully..!";
 }
 else
 {
 echo "Data Insertion Failed";
 }
 }
}
catch(PDOException $error)
{
 echo $error->getMessage();
}
?>