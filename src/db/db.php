<?php

// connexion à la base de données
try {
    $mysqlClient = new PDO(
        sprintf('mysql:host=%s;dbname=%s;port=%s', 
        "localhost",
        "walk_in_brussels",
        3306),
        "root",
        "root"
    );
    $mysqlClient->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(Exception $exception) {
    ?><h1>Oops, il y a eu problème avec la base de données system</h1><?php
    die('Oops, il y a eu problème : '.$exception->getMessage());
}
?>