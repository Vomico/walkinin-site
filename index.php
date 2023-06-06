<!DOCTYPE html>
<html id="ind" lang="ru">
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
    
    <?php
    $conn = mysqli_connect('localhost','root','','walkinin_db') or die('Ошибка');
    ?>

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
        <div class="ads">
            <div class="ad">
                <img src="img/ad.png" alt="">
            </div>
            <?php
                $sql = "SELECT * FROM products WHERE tag = 1 ORDER BY id DESC LIMIT 6";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="trend">
                    <div class="inner_trend1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_trend2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>
        </div>

        <div class="new">
            <span>НОВЫЕ ПОСТАВКИ:</span>
            <div class="prew_con">
                <!-- ПОСЛЕДНЕЕ МУЖСКОЕ -->
                <?php
                $sql = "SELECT * FROM products WHERE tag = 1 ORDER BY id DESC LIMIT 2";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>

                <!-- ПОСЛЕДНЕЕ ЖЕНСКОЕ -->
                <?php
                $sql = "SELECT * FROM products WHERE tag = 2 ORDER BY id DESC LIMIT 2";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>

                <!-- ПОСЛЕДНЕЕ ДЕТСКОЕ -->
                <?php
                $sql = "SELECT * FROM products WHERE tag = 3 ORDER BY id DESC LIMIT 1";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>
            </div>
        </div>

        <div class="male_prew">
            <span>МУЖСКАЯ ОБУВЬ:</span>
            <div class="prew_con">
                <?php
                $sql = "SELECT * FROM products WHERE tag = 1 LIMIT 4";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>

                <a href="male.php" class="card">
                    <div class="link_btn">
                        <div>ЕЩЁ БОЛЬШЕ ТОВАРОВ-></div>
                    </div>
                </a>
            </div>
        </div>

        <div class="female_prew">
            <span>ЖЕНСКАЯ ОБУВЬ:</span>
            <div class="prew_con">
                <?php
                $sql = "SELECT * FROM products WHERE tag = 2 LIMIT 4";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>

                <a href="female.php" class="card">
                    <div class="link_btn">
                        <div>ЕЩЁ БОЛЬШЕ ТОВАРОВ-></div>
                    </div>
                </a>
            </div>
        </div>

        <div class="kid_prew">
            <span>ДЕТСКАЯ ОБУВЬ:</span>
            <div class="prew_con">
                <?php
                $sql = "SELECT * FROM products WHERE tag = 3 LIMIT 4";
                $result = mysqli_query($conn,$sql);
                while ($products = mysqli_fetch_assoc($result)){
                ?>
                <div class="card">
                    <div class="inner_card1">
                        <img src="<?php echo $products['img1']; ?>" loading="lazy" alt="">
                    </div>
                    <div class="inner_card2">
                        <h2 class="card_name"><?php echo $products['name']; ?></h2>
                        <span class="card_price"><?php echo $products['price']?>₽</span>
                        <a href="product.php?id=<?php echo $products['id'];?>" class="card_buy">КУПИТЬ</a>
                    </div>
                </div>
                <?php
                };
                ?>

                <a href="kid.php" class="card">
                    <div class="link_btn">
                        <div>ЕЩЁ БОЛЬШЕ ТОВАРОВ-></div>
                    </div>
                </a>
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