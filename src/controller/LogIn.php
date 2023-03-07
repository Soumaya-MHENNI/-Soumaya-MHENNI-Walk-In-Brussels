<?php



include "./src/db/db.php";

$isFound = false; //connu
        $connectedUser;
        $loginAttempt = 0;

        if(isset($_POST['email'], $_POST['pswd'])){

            $loginAttempt++;

            $email = $_POST['email'];
            $pass_word = $_POST['pswd'];
            //$name = $_POST['name'];

            $sqlQuery = "
                SELECT *
                FROM user
                WHERE email = :param_email AND password = :param_password
            ";
//bindParam  contient  des marqueurs //exemple// :param_email...

            $statement = $mysqlClient->prepare($sqlQuery);
            $statement->execute(array("param_email" => $email, "param_password" => $pass_word));






//recuperer le résultat de la requette
            $result = $statement->fetchAll();

            if($result){
                $isFound = true;
                $name = $result[0]['name'];
                $_SESSION['name']=$name;
                $_SESSION['message'] = "Welcome $name !";
            }

        }

        if($isFound){
            //include "./src/controller/header.php";
            ///include "./src/controller/carte.php";
            //echo "Bienvenue  ! $connectedUser ($email)";
            //redirection
            header('location:http://localhost/WIB2?page=carte');
        }

    include "./src/views/login.php";

?>
