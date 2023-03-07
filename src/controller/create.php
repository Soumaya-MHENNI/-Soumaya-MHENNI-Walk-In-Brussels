<?php
include "./src/db/db.php";

if(isset($_POST['envoyer']))

{
    $nom = $_POST['name'];
    $mail =$_POST['email'];
    $pwd =$_POST['password'];
    $confpwd =$_POST['confirmPwd'];

    //Requete control de duplication dans la DB//

    

    $deplicate= "SELECT *  FROM `user` WHERE email ='$mail'";
    $resultat = $mysqlClient->prepare($deplicate);
    $resultat->execute();
    $result1 =  $resultat->fetchAll();

    $nb = count($result1);

    
if($nb !=0){
 
  echo "<script>alert ('Email Has Already Taken !');</script>";
   
}
else{

    $sql = "INSERT INTO `user` ( `name`, `email`, `password`, `confirmPassword`)
    VALUES( '$nom','$mail','$pwd','$confpwd')";

$stmt = $mysqlClient-> prepare($sql);
$stmt->execute();

header('location:http://localhost/WIB2?page=login');
}


}





include "./src/views/createAccount.php";
?>
