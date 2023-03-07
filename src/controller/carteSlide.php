<?php


// connexion db
include("src/db/db.php");

///insérer un commentaire dans la DB

if(isset($_POST['comment']))
{


    	$comment =$_POST['ReviewsPoi'];
         $name= $_SESSION['name'];
         $IdPoi =$_POST['idPoi'];

    
        

         $Cmt= "INSERT INTO poi_avis ( id_user, message, date, id_poi) VALUES ((SELECT id FROM user WHERE user.name = '$name'),'$comment',(SELECT DATE_FORMAT(SYSDATE(), '%d %b %H:%i' )), $IdPoi)";

         $stmt1 = $mysqlClient-> prepare($Cmt);
         $stmt1->execute();
        
         header('location:http://localhost/WIB2?page=carte');

        

}








include "./src/views/carteSlide.php";
?>
