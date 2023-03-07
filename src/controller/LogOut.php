<?php

// session_start();
if ($_GET["page"] = "login") {
    unset($_SESSION);
    session_destroy();
    header("http://localhost/WIB2/?page=login");

}

include "./src/views/login.php";
?>
