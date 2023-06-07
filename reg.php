<?php
    session_start();
    $connect = mysqli_connect('localhost','root','','walkinin_db') or die('Ошибка');
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_confirm = $_POST['password_confirm'];

    $query3 = mysqli_query($connect, "SELECT * FROM users WHERE `email`='$email'");
    if(mysqli_num_rows($query3)>0){
        $_SESSION['message'] = 'Аккаунт с такой почтой уже существует';
        header("Location: registr.php");
        exit();
    }

    if ($password === $password_confirm) {
        $query = mysqli_query($connect, "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')");
    
        if ($query) {
            header("Location: login.php");
            exit();
        } else {
            $_SESSION['message'] = 'Ошибка при выполнении запроса на добавление пользователя'.mysqli_error($connect);
            header("Location: registr.php");
            exit();
        }
    } else {
        $_SESSION['message'] = 'Пароли не совпадают';
        header("Location: registr.php");
        exit();
    }