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
        <div class="product">
            <div class="slider">
                <div class="slider-line">
                    <img class="slider-img" src="img/0rhz8qksc8w6xbqa5k3p781o5c7gfw15.jpg" alt="" class="slider-img">
                    <img class="slider-img" src="img/ey54r4xzqge9koq9jwgrxa3bw9gn6me7.jpg" alt="" class="slider-img">
                    <img class="slider-img" src="img/d30ej6k6zgkbb38e56zekcg4qn4x2qs5.jpg" alt="" class="slider-img">
                </div>

                <button class="slider-btn-prev">
                    <img src="img/arrow.svg">
                </button>
                <button class="slider-btn-next">
                    <img src="img/arrow.svg">
                </button>

                <div class="slider-wrapper">
                    <div class="slider-dot active-dot"></div>
                    <div class="slider-dot"></div>
                    <div class="slider-dot"></div>
                </div>

                <script src="scripts/slider.js"></script>
            </div>

            <div class="product_info">
                <h1 class="product_name" id="product_name">НАЗВАНИЕ ТОВАРА</h1>
                <p class="id">АРТИКУЛ: <span class="product_id" id="product_id">777</span> </p>
                <p class="count">В НАЛИЧИИ: <span class="product_count" id="product_count">100</span>ШТ.</p>
                <p class="price"><span class="product_price" id="product_price">2500</span>₽</p>
                <p class="product_description" id="product_description">описание описание</p>
                <form action="" method="post">
                    <input type="hidden" name="product_id" value="<?php echo $product['id']; ?>">
                    <button type="submit" class="add-to-cart">Добавить в корзину</button>
                </form>
            </div>
        </div>
    </main>
    <!-- /ТЕЛО -->

    <footer>
        <span class="f_tel"><a href="tel:+79169951453">+7(916)995-14-53</a></span>
        <span class="f_mail"><a href="mailto:walkinin@gmail.com">walkinin@gmail.com</a></span>
    </footer>
</body>
</html>