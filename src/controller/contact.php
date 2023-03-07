<?php 
include "./src/db/db.php";

if(isset($_POST['connexion']))

{
    
	$message =$_POST['message'];
    $name= $_SESSION['name'];
 
    //Requete control de duplication dans la DB//

    


    // $sql = "INSERT INTO `contact` ( `id_user`,`message`)

    // VALUES( '$message')";

    $sql="INSERT INTO contact ( id_user,message ) VALUES((SELECT id FROM user WHERE user.name = '$name'),'$message')";
    
    

$stmt = $mysqlClient-> prepare($sql);
$stmt->execute();


header('location:http://localhost/WIB2?page=contact');
}



include "./src/views/contact.php";


?>