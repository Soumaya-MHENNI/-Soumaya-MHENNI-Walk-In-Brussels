<?php
session_start();
include './src/db/db.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link rel="stylesheet" href="./assets/css/reset.css">
    <link rel="stylesheet" href="./assets/css/carteSlide.css"> 
    <link rel="stylesheet" href="./assets/css/carte.css">
    <link rel="stylesheet" href="./assets/css/create.css">
    <link rel="stylesheet" href="./assets/css/logIn.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/header.css">
    <link rel="stylesheet" href="./assets/css/about_us.css">
    <link rel="stylesheet" href="./assets/css/contact.css">
    <link rel="stylesheet" href="./assets/css/allSpots.css">
    <link rel="stylesheet" href="./assets/css/nav.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <title>Walk in Brussels</title>
</head>

<body>
    <?php include './src/router/route.php'; ?>
    
    

    
</body>

</html>
