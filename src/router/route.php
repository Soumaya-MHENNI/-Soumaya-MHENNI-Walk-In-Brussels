<?php

// ouverture de session
if(!isset($_SESSION))
{
    session_start();
}

// Nous permets d'afficher notre message dans un toastr

if(isset($_SESSION['message'])) {
?>
    <script>
        toastr.info('<?= $_SESSION['message'] ?>');
    </script>
<?php
    $_SESSION['message'] = null;
}



/*est-ce-que dans l'url ->tu as a un moment quand tu passe ici (donc à chaque fois que la page est chargée...)
 ?page=quelquechose */

 if(!isset($_SESSION['name']) && $_GET["page"] != "login" && $_GET["page"] != "createAccount") {
    header('location:http://localhost/WIB2?page=login');
 }


if (isset($_GET["page"]))
{
    $get = $_GET;

    if ($get["page"] == "createAccount")
    {
        include "./src/controller/create.php";

    }
    else if ($get["page"] == "carte")
    {

        include "./src/controller/nav.php";
        include "./src/controller/header.php";
        include "./src/controller/carte.php";

        // if(isset($get["poi"]))
        // {
            include "./src/controller/carteSlide.php";

        // }
    }
    else if($get["page"] == "about_us")    {

        include "./src/controller/about_us.php";
    }

    else if($get["page"] == "login")
    {
        include "./src/controller/LogIn.php";
    }
    else if($get["page"] == "logout")
    {
        include "./src/controller/LogOut.php";
    }

    else if($get["page"] == "contact")
    {
        include "./src/controller/header.php";
        include "./src/controller/nav.php";       
        include "./src/controller/contact.php";
    }

    else if($get["page"] == "allSpots"){
        include "./src/controller/allSpots.php";
}}
else
{
    include "./src/controller/LogIn.php";
}
