<?php
    $connect = mysqli_connect('localhost','root','','walkinin_db');;
    session_start();

    $email = $_POST['email'];
    $password = $_POST['password'];

    $query1 = mysqli_query($connect, "SELECT * FROM `users` WHERE `email` = '$email' AND `password` = '$password'");
    if (mysqli_num_rows($query1)>0){
        $user = mysqli_fetch_assoc($query1);
        $_SESSION['user'] = [
            "id" => $user['id'],
            "name" => $user['name'],
            "email" => $user['email']
        ];

        header("Location: account.php");
    }
    else{
        $_SESSION['message']= 'Неверно указаны почта или пароль';
        header("Location: login.php");
    }
?>