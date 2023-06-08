<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/icon.svg" type="image/icon type">
    <title>Walkin'in</title>
    <!-- LINK -->
    <link rel="stylesheet" href="styles/reset.css">
    <link rel="stylesheet" href="styles/main.css">
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kalam&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">


</head>
<body>
    <!-- БОШКА -->
    <header>
        <div class="top-header">
            <a class="icon_btn" href="login.php">
                <img class="icon_acc" src="img/account.svg" alt="">
                <span>КАБИНЕТ</span>
            </a>

            <a class="contact_btn" href="cont.html">
                <img class="icon_geo" src="img/geo.svg" alt="">
                <span>КОНТАКТЫ</span>
                <img class="icon_phone" src="img/phone.svg" alt="">
            </a>

            <a class="cart_btn" href="cart.php">
                <img class="icon_cart" src="img/cart.svg" alt="">
                <span>КОРЗИНА</span>
            </a>
        </div>


        <div class="bottom-header">
            <a class="LOGO" href="index.php">
                <div class="main_logo" href="">Walkin'in</div>
                <div class="descr_logo" href="">ОБУВЬ МИРОВЫХ БРЕНДОВ</div>
            </a>

            <div class="menu_bg">
            <div class="menu">
                <a href="male.php" class="menu_btn mens">
                    МУЖЧИНАМ
                </a>

                <a href="female.php" class="menu_btn womens">
                    ЖЕНЩИНАМ
                </a>

                <a href="kid.php" class="menu_btn kids">
                    ДЕТЯМ
                </a>
            </div>
            </div>
        </div>
    </header>
    <!-- БОШКА -->



    <!-- ТЕЛО -->
    <main>
        <?php
            $total = 0;
            foreach ($_SESSION['cart'] as $id => $product) {
                $total += $product['price'] * $product['count'];
            }
            $connect = mysqli_connect('localhost', 'root', '', 'walkinin_db');
            if (isset($_SESSION['user'])) {
                $user_id = $_SESSION['user']['id'];
                $query = "SELECT promo FROM users WHERE id = $user_id";
                $result = mysqli_query($connect, $query);
                if ($result && mysqli_num_rows($result) > 0) {
                    $promocode_status = mysqli_fetch_assoc($result)['promo'];
                }
                mysqli_close($connect);
            } else {
                $promocode_status = 0;
            };
        ?>

        <div class="cart-container">
                <?php if (empty($_SESSION['cart'])) : ?>
                <p class="korz">Ваша корзина пуста</p>
                <?php else : ?>
                <?php foreach ($_SESSION['cart'] as $id => $product) : ?>
                <div class="cart-item">
                <img src="<?php echo $product['img1']; ?>" alt="<?php echo $product['name']; ?>">
                <div class="product-name"><?php echo $product['name']; ?></div>
                <div class="product-price"><?php echo $product['price'] * $product['count']; ?> руб.</div>
                <form method="post" action="remove-from-cart.php">
                    <input type="hidden" name="product_id" value="<?php echo $id; ?>">
                    <button class="del"  type="submit">Удалить</button>
                </form>
        </div>

        <?php endforeach; ?>

        <?php
        if ($promocode_status) {
            echo '<div class="cart-total">Общая сумма со скидкой: ' . ($total * 0.85) . ' руб.</div>';
        } else {
            echo '<div class="cart-total">Общая сумма: ' . $total . ' руб.</div>';
        }
        ?>

        <?php endif; ?>
        <div class="zak">
            <a href="index.php" class="zakazat">Заказать</a>
        </div>
    </main>
    <!-- /ТЕЛО -->

    <footer>
        <span class="f_tel"><a href="tel:+79169951453">+7(916)995-14-53</a></span>
        <span class="f_mail"><a href="mailto:walkinin@gmail.com">walkinin@gmail.com</a></span>
    </footer>
</body>
</html>