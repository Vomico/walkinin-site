-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2023 г., 00:26
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `walkinin_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `tag` int NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int NOT NULL,
  `img1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `tag`, `name`, `price`, `count`, `img1`, `img2`, `img3`, `description`) VALUES
(1, 2, 'Полуботинки актив QUATTROCOMFORTO 40', '2799.99', 100, 'img/females/1/1.jpg', 'img/females/1/2.jpg', 'img/females/1/3.jpg', ''),
(2, 2, 'Мокасины Marisetta 79-25WG-521VK', '1800.00', 88, 'img/females/2/1.jpg', 'img/females/2/2.jpg', 'img/females/2/3.jpg', 'Материал верха - кожа из спилка со сквозной перфорацией. Красивая, чуть бархатистая поверхность привлекает внимание и эффектно смотрится на ноге. Подкладка из натуральной кожи легко адаптируется к ноге, не деформируется, выдерживает постоянные сгибы и растягивания.'),
(3, 2, 'Мюли Marisetta 56-27WE-512SS', '2999.00', 100, 'img/females/3/1.jpg', 'img/females/3/2.jpg', 'img/females/3/3.jpg', 'Верх и подкладка выполнены из износостойкой искусственной кожи. Благодаря этому обувь прослужит не один сезон не требуя особого ухода. Конструкция верха предусматривает отверстия для лучшей циркуляции воздуха.'),
(4, 2, 'Деленки Rieker M1655-54', '5450.00', 120, 'img/females/4/1.jpg', 'img/females/4/2.jpg', 'img/females/4/3.jpg', 'Конструкция верха из искусственной кожи цвета мульти cо cквозной перфорацией способствуют хорошей циркуляции воздуха. Стелька из натуральной кожи прекрасно впитывает влагу, обеспечивая стопам сухость и удобство.'),
(5, 2, 'Сандалии Rieker 65919-80', '4950.00', 96, 'img/females/5/1.jpg', 'img/females/5/2.jpg', 'img/females/5/3.jpg', 'Верх из натуральной кожи позволяет долго носить обувь, при этом сохраняет свой внешний вид, не деформируется. Дополнительный материал верха - искусственная кожа. Подкладка из искусственной кожи прочная, благодаря этому обувь прослужит не один сезон.'),
(6, 2, 'Балетки quattrocomforto 40-21WA', '2299.99', 100, 'img/females/6/1.jpg', 'img/females/6/2.jpg', 'img/females/6/3.jpg', 'Кожа из спилка - натуральный материал, благодаря своей пористой поверхности в достаточном объеме пропускает воздух. В целом очень удобен и комфортен в эксплуатации. Стелька из натуральной кожи прекрасно впитывает влагу, обеспечивая стопам сухость и удобство.'),
(7, 2, 'Туфли летние Marisetta 36-21WB', '2400.00', 88, 'img/females/7/1.jpg', 'img/females/7/2.jpg', 'img/females/7/3.jpg', 'Мягкая кожа, гибкая подошва, удобная колодка и идеальная посадка в сочетании с современным дизайном – все то, что лежит в основе бренда. Модели являются устойчивой классикой и с легкостью впишутся в гардероб владелицы.'),
(8, 2, 'Босоножки Marisetta 40-25WG', '3299.00', 65, 'img/females/8/1.jpg', 'img/females/8/2.jpg', 'img/females/8/3.jpg', 'Верх из кожаного спилка презентабельно выглядит и благодаря своей пористой поверхности в достаточном объеме пропускает воздух. Подкладка из натуральной кожи легко адаптируется к ноге, не деформируется, выдерживает постоянные сгибы и растягивания.'),
(9, 2, 'Слипоны QUATTROCOMFORTO 79-91', '4500.00', 100, 'img/females/9/1.jpg', 'img/females/9/2.jpg', 'img/females/9/3.jpg', 'Верх из кожаного спилка со сквозной перфорацией презентабельно выглядит и благодаря своей пористой поверхности в достаточном объеме пропускает воздух. Подкладка из искусственной кожи прочная, благодаря этому обувь прослужит не один сезон.'),
(10, 2, 'Сандалии ZENDEN 245-31WK-894VT', '3799.00', 100, 'img/females/10/1.jpg', 'img/females/10/2.jpg', 'img/females/10/3.jpg', 'В коллекции весна-лето используются преимущественно натуральные материалы, а также актуальный дизайн, который является неотъемлемой составляющей обуви и аксессуаров бренда.'),
(11, 2, 'Мокасины quattrocomforto 40-21WA', '2000.00', 100, 'img/females/11/1.jpg', 'img/females/11/2.jpg', 'img/females/11/3.jpg', 'Верх из кожаного спилка со сквозной перфорацией и отсутствие подкладки обеспечивают хорошую циркуляцию воздуха. Стелька из натуральной кожи обеспечивает комфорт во время носки.'),
(12, 2, 'Босоножки INSTREET 80-21WB-574TS', '4799.99', 100, 'img/females/12/1.jpg', 'img/females/12/2.jpg', 'img/females/12/3.jpg', 'Лёгкий текстильный верх со сквозной перфорацией и прочная подкладка из искусственной кожи позволяют обуви прослужить не один сезон. Искусственная кожа не размокает, а значит, не теряет форму и внешний вид от процесса намокания и высыхания.'),
(13, 2, 'Сандалии INSTREET 77-21WA-044SS', '4500.00', 100, 'img/females/13/1.jpg', 'img/females/13/2.jpg', 'img/females/13/3.jpg', 'Конструкция верха представляет собой переплетение ремешков из искусственной кожи. Материал прочный, неэластичный, позволяет обуви держать свою форму на протяжении всего периода носки.'),
(14, 2, 'Кроссовки Pulse 189-32WA-844ST', '3999.00', 100, 'img/females/14/1.jpg', 'img/females/14/2.jpg', 'img/females/14/3.jpg', 'Бренд женской и мужской обуви в спортивном стиле, преимущественно из современных искусственных материалов актуального модного дизайна.'),
(15, 2, 'Кеды ZENDEN 79-02WA-676VT', '3499.00', 92, 'img/females/15/1.jpg', 'img/females/15/2.jpg', 'img/females/15/3.jpg', 'Материал верха - кожа из спилка. Красивая, чуть бархатистая поверхность привлекает внимание и эффектно смотрится на ноге. Текстильная подкладка хорошо впитывает влагу и обеспечивает ногам комфорт при долгой носке.'),
(16, 2, 'Босоножки Rieker 67476-81', '4950.00', 100, 'img/females/16/1.jpg', 'img/females/16/2.jpg', 'img/females/16/3.jpg', 'Верх выполнен из прочной искусственной кожи. Материал не размокает, а значит, не теряет форму и внешний вид от процесса намокания и высыхания. Благодаря этому обувь прослужит не один сезон не требуя особого ухода.'),
(17, 2, 'Туфли открытые ZENDEN 80-11WB', '3299.00', 100, 'img/females/17/1.jpg', 'img/females/17/2.jpg', 'img/females/17/3.jpg', 'Натуральная кожа прекрасно выдерживает многократные сгибания и растягивание. Обувь из нее прочна и надежна. Подкладка из натуральной кожи легко адаптируется к ноге, не деформируется, выдерживает постоянные сгибы и растягивания.'),
(18, 2, 'Слипоны DX 189-33WV-590T', '2299.99', 100, 'img/females/18/1.jpg', 'img/females/18/2.jpg', 'img/females/18/3.jpg', ''),
(19, 2, 'Сандалии актив Marisetta 40-31WA', '2499.00', 100, 'img/females/19/1.jpg', 'img/females/19/2.jpg', 'img/females/19/3.jpg', 'Верх обуви комбинированный. Текстиль хорошо пропускает воздух. Кожа из спилка - натуральный материал, благодаря своей пористой поверхности в достаточном объеме пропускает воздух.'),
(20, 2, 'Сапоги Rieker 79990-00', '5299.00', 65, 'img/females/20/1.jpg', 'img/females/20/2.jpg', 'img/females/20/3.jpg', 'Ботинки из качественной эко кожи на резиновой подошве танкетке, с подкладкой из шерсти с мембраной обеспечат комфорт и уют при ходьбе, не требуют особого ухода.'),
(21, 3, 'Кроссовки для девочек Pulse 109', '2499.99', 100, 'img/kids/1/1.jpg', 'img/kids/1/2.jpg', 'img/kids/1/3.jpg', 'Серые классические кроссовки на липучке - комфортная обувь для повседневной носки или активного отдыха на осень и весну.'),
(22, 3, 'Кроссовки для мальчиков Pulse 219', '2499.99', 88, 'img/kids/2/1.jpg', 'img/kids/2/2.jpg', 'img/kids/2/3.jpg', 'Бренд женской и мужской обуви в спортивном стиле, преимущественно из современных искусственных материалов актуального модного дизайна.'),
(23, 3, 'Полуботинки ZENDEN first 79-32GO', '3500.00', 88, 'img/kids/3/1.jpg', 'img/kids/3/2.jpg', 'img/kids/3/3.jpg', 'Тканевая подкладка для обуви позволяет ногам дышать и снижает потливость ног. Мягкие детские кеды всесезонные из кожаного спилка - прочная и устойчивая к повреждениям обувь.'),
(24, 3, 'ПолуботинкиZENDEN first 79-32BO', '3300.00', 65, 'img/kids/4/1.jpg', 'img/kids/4/2.jpg', 'img/kids/4/3.jpg', 'Цветные классические кроссовки на липучке - удобная обувь на каждый день, для зала, прогулок или активного отдыха на осень и весну.'),
(25, 3, 'СлипоныZENDEN first 98-32BO', '3299.99', 100, 'img/kids/5/1.jpg', 'img/kids/5/2.jpg', 'img/kids/5/3.jpg', 'Все модели изготавливаются из современных, технологичных, натуральных и искусственных материалов, безопасность которых соответствует всем требованиям российского законодательства.'),
(26, 3, 'Слипоны Pulse 189-32GO-7', '3000.00', 96, 'img/kids/6/1.jpg', 'img/kids/6/2.jpg', 'img/kids/6/3.jpg', 'Детские весенние кроссовки слипоны имеют текстильную стельку, которая позволяет ногам дышать и делает обувь более комфортной. Легкая обувь без дополнительной подкладки.'),
(27, 3, 'Полуботинки ZENDEN first 98-32BO', '3999.00', 100, 'img/kids/7/1.jpg', 'img/kids/7/2.jpg', 'img/kids/7/3.jpg', 'Все модели изготавливаются из современных, технологичных, натуральных и искусственных материалов, безопасность которых соответствует всем требованиям российского законодательства.'),
(28, 3, 'Кеды ZENDEN first 189-91BO-534ST', '3000.00', 100, 'img/kids/8/1.jpg', 'img/kids/8/2.jpg', 'img/kids/8/3.jpg', 'Кеды выполнены из прочной искусственной кожи. Материал не размокает, а значит, не теряет форму и внешний вид от процесса намокания и высыхания.'),
(29, 3, 'Слипоны ZENDEN first 219-11BO-042T', '2999.99', 35, 'img/kids/9/1.jpg', 'img/kids/9/2.jpg', 'img/kids/9/3.jpg', 'Верх из текстиля хорошо пропускает воздух, обеспечивает долговечность и комфорт. Подошва из ЭВА создает ощущение легкости и позволяет меньше уставать во время долгих прогулок.'),
(30, 3, 'Сандали ZENDEN first 79-11BO-053TT', '2000.00', 100, 'img/kids/10/1.jpg', 'img/kids/10/2.jpg', 'img/kids/10/3.jpg', 'Материал стоек к образованию и размножению бактерий. В такой стельке ноги будут меньше уставать при довольно сильных нагрузках, а стопе будет мягко, комфортно и удобно.'),
(31, 3, 'Сандали ZENDEN first 109-21GO-032TT', '2300.00', 100, 'img/kids/11/1.jpg', 'img/kids/11/2.jpg', 'img/kids/11/3.jpg', 'Светло-зеленые сандалии актив с белыми вставками - прекрасный выбор летней повседневной обуви для девочек. Верх из текстиля хорошо пропускает воздух, а текстильная подкладка отлично впитывает влагу.'),
(32, 3, 'Кеды KEDDO DENIM 537992/01-01Z', '2099.99', 88, 'img/kids/12/1.jpg', 'img/kids/12/2.jpg', 'img/kids/12/3.jpg', 'Спортивные и повседневные модели этой марки созданы для прогулок и активного отдыха на улицах города. Они выглядят дерзко и ярко, помогают создавать смелые и необычные образы.'),
(33, 3, 'Кроссовки ZENDEN first 58-21BO-004TT', '1300.00', 100, 'img/kids/13/1.jpg', 'img/kids/13/2.jpg', 'img/kids/13/3.jpg', 'Материал хорошо пропускает воздух, создаёт ощущение лёгкости. Съёмная стелька из текстиля хорошо впитывает влагу и обеспечивает ногам комфорт. Подошва из ЭВА отличается упругостью, гибкостью и легкостью, позволяет меньше уставать во время долгих прогулок.'),
(34, 3, 'Кроссовки ZENDEN first 219-21GO-099TT', '1799.00', 65, 'img/kids/14/1.jpg', 'img/kids/14/2.jpg', 'img/kids/14/3.jpg', 'Верх из искусственной кожи способствуют хорошей циркуляции воздуха, устойчив к воздействию влаги и не требует особого ухода. Дополнительный материал верха - текстиль.'),
(35, 3, 'Сандалии ZENDEN first 79-11BO-038TT', '2000.00', 100, 'img/kids/15/1.jpg', 'img/kids/15/2.jpg', 'img/kids/15/3.jpg', 'Конструкция верха предусматривает большие отверстия для лучшей вентиляции. Верх выполнен из текстиля, который создает ощущение легкости, и прочной искусственной кожи. Подкладка из текстиля хорошо впитывает влагу.'),
(36, 3, 'Слипоны Pulse 219-31BO-760T', '1500.00', 96, 'img/kids/16/1.jpg', 'img/kids/16/2.jpg', 'img/kids/16/3.jpg', 'Бренд женской и мужской обуви в спортивном стиле, преимущественно из современных искусственных материалов актуального модного дизайна.'),
(37, 3, 'Слипоны ZENDEN first 17-21GO-028T', '1099.00', 100, 'img/kids/17/1.jpg', 'img/kids/17/2.jpg', 'img/kids/17/3.jpg', 'Текстильный верх и отсутствие подкладки обеспечивают прекрасную циркуляцию воздуха. Подошва из ПВХ устойчива к истиранию и воздействию агрессивных сред.'),
(38, 3, 'Кеды ZENDEN first 278-21GO-006TT', '999.00', 35, 'img/kids/18/1.jpg', 'img/kids/18/2.jpg', 'img/kids/18/3.jpg', 'Хорошо подойдут как вариант школьной обуви. Верх и подкладка выполнены из текстиля. Материал хорошо пропускает воздух, создаёт ощущение лёгкости, обеспечивает долговечность и комфорт.'),
(39, 3, 'Туфли ZENDEN first 17-31GO-729TT', '1099.00', 100, 'img/kids/19/1.jpg', 'img/kids/19/2.jpg', 'img/kids/19/3.jpg', 'Все модели изготавливаются из современных, технологичных, натуральных и искусственных материалов, безопасность которых соответствует всем требованиям российского законодательства.'),
(40, 3, 'Сланцы пляжные LUCKY LAND 3751', '899.99', 152, 'img/kids/20/1.jpg', 'img/kids/20/2.jpg', 'img/kids/20/3.jpg', ''),
(41, 1, 'Туфли INSTREET 248-33MV-033GT', '2000.00', 100, 'img/males/1/1.jpg', 'img/males/1/2.jpg', 'img/males/1/3.jpg', 'Синие туфли от INSTREET - прекрасный выбор удобной обуви на каждый день для мужчин в период смены сезона. Верх выполнен из очень привлекательного внешне искусственного нубука. Материал прочный, водостойкий и относительно простой в уходе.'),
(42, 1, 'Туфли летние QUATTROCOMFORTO 336-31', '3500.00', 88, 'img/males/2/1.jpg', 'img/males/2/2.jpg', 'img/males/2/3.jpg', 'Quattrocomforto - это актуальная повседневная мужская и женская обувь из натуральных материалов для активного образа жизни. Дизайн бренда QC – это сочетание скандинавского стиля, технологичности и универсальности.'),
(43, 1, 'Кроссовки Pulse 189-21MV-031TT', '4600.00', 120, 'img/males/3/1.jpg', 'img/males/3/2.jpg', 'img/males/3/3.jpg', 'Полуботинки актив серого цвета с оранжевыми вставками - прекрасный выбор мужской обуви для активного отдыха.Верх из текстиля хорошо пропускает воздух, а текстильная подкладка отлично впитывает влагу.Подошва сделана из легкого материала ЭВА и гибкого материала ТЭП.'),
(44, 1, 'Кроссовки Pulse 179-11MV-519TT', '1799.99', 100, 'img/males/4/1.jpg', 'img/males/4/2.jpg', 'img/males/4/3.jpg', 'Черные кроссовки мужские прекрасно подойдут для активного отдыха в межсезонье. Верх из текстиля хорошо пропускает воздух, а текстильная подкладка отлично впитывает влагу. Подошва из ПВХ устойчива к истиранию и воздействию агрессивных сред.'),
(45, 1, 'Сандалии Rieker 25558-25', '5450.00', 100, 'img/males/5/1.jpg', 'img/males/5/2.jpg', 'img/males/5/3.jpg', 'Повседневные сандалии коричневого цвета для мужчин от Rieker. Верх из натуральной кожи позволяет долго носить обувь, при этом сохраняет свой внешний вид, не деформируется. Подкладка из искусственной кожи прочная, благодаря этому обувь прослужит не один сезон.'),
(46, 1, 'Слипоны Pulse 58-11MV-511T', '3799.99', 100, 'img/males/6/1.jpg', 'img/males/6/2.jpg', 'img/males/6/3.jpg', 'Слипоны представлены в чёрном, сером и красном цветах. Верх выполнен из текстиля и имеет дополнительную свкозную перфорацию. Материал хорошо пропускает воздух, дарит ощущение лёгкости. Подкладка у модели отсутствует. Для формоустойчивости пятка дублирована мягкой искусственной кожей.'),
(47, 1, 'Кеды DX 278-31MV-525TT', '1500.00', 100, 'img/males/7/1.jpg', 'img/males/7/2.jpg', 'img/males/7/3.jpg', 'Верх и подкладка выполнены из текстиля. Материал хорошо пропускает воздух, создаёт ощущение лёгкости, обеспечивает долговечность и комфорт. Cтелька из текстиля хорошо впитывает влагу и обеспечивает ногам комфорт. Материал подошвы - резина.'),
(48, 1, 'Полуботинки актив DX 58-21MV-516TT', '2299.99', 96, 'img/males/8/1.jpg', 'img/males/8/2.jpg', 'img/males/8/3.jpg', 'Верх из текстиля хорошо пропускает воздух, обеспечивает долговечность и комфорт. Подкладка из текстиля отлично удерживает тепло, не нарушает процесса воздухообмена.'),
(49, 1, 'Кеды DX 278-21MV-521TT', '2300.00', 65, 'img/males/9/1.jpg', 'img/males/9/2.jpg', 'img/males/9/3.jpg', 'Кеды текстильные на шнуровке — удобная и практичная мужская летняя обувь. Линейка представлена в широком спектре цветов. Верхи подкладка выполнены из текстиля.'),
(50, 1, 'Мокасины ZENDEN 334-21MZ-101KS', '4000.00', 100, 'img/males/10/1.jpg', 'img/males/10/2.jpg', 'img/males/10/3.jpg', 'Материал верха и подкладки - натуральная кожа. Такая обувь прочна и надёжна. Материал легко адаптируется к ноге, не деформируется, выдерживает постоянные сгибы и растягивания. Кожаная обувь при правильном уходе не теряет исходных качеств и долгое время сохраняет привлекательный внешний вид.'),
(51, 1, 'Кроссовки Pulse 219-33MV-571TT', '1999.99', 88, 'img/males/11/1.jpg', 'img/males/11/2.jpg', 'img/males/11/3.jpg', 'Бренд женской и мужской обуви в спортивном стиле, преимущественно из современных искусственных материалов актуального модного дизайна.\r\n'),
(52, 1, 'Слипоны INSTREET 278-33MV-501S', '1499.99', 100, 'img/males/12/1.jpg', 'img/males/12/2.jpg', 'img/males/12/3.jpg', 'Верх из искусственной кожи cо cквозной перфорацией способствуют хорошей циркуляции воздуха, устойчив к воздействию влаги и не требует особого ухода. Cтелька из текстиля хорошо впитывает влагу и обеспечивает ногам комфорт. Материал подошвы - резина.'),
(53, 1, 'Пантолеты Rieker 21098-14', '4450.00', 100, 'img/males/13/1.jpg', 'img/males/13/2.jpg', 'img/males/13/3.jpg', 'Верх скомбинирован из искусственной и натуральной кожи, что позволяет обуви держать свою форму на протяжении всего периода пользования. Лёгкая и умеренно гибкая подошва из полиуретана обладает амортизирующими свойствами.'),
(54, 1, 'Дерби ZENDEN 336-12MV-017KN', '4399.99', 100, 'img/males/14/1.jpg', 'img/males/14/2.jpg', 'img/males/14/3.jpg', 'Шерстяной подклад создает внутри обуви воздушный слой, который обеспечивает сухость и тепло. Подошва из ТЭП имеет хорошее сцепление с поверхностью и не скользит. Плотность прилегания обуви к ноге регулируется с помощью шнуровки.'),
(55, 1, 'Кеды ZENDEN 58-31MV-936VT', '4299.99', 100, 'img/males/15/1.jpg', 'img/males/15/2.jpg', 'img/males/15/3.jpg', 'Новая коллекция бренда ZENDEN включает в себя капсульные и лимитированные коллекции, которые меняются каждый сезон.'),
(56, 1, 'Сандалии ZENDEN 028.6008-01', '4300.00', 100, 'img/males/16/1.jpg', 'img/males/16/2.jpg', 'img/males/16/3.jpg', 'При создании коллекции обуви и аксессуаров, мы всегда вдохновляемся Вами и вашими предпочтениями в гардеробе. Основной акцент при пошиве обуви мы делаем на комфорт, качественные материалы, новые формы и трендовые оттенки текущего и будущего сезона.'),
(57, 1, 'Лоферы ZENDEN 110-31MV-726KK', '4199.99', 100, 'img/males/17/1.jpg', 'img/males/17/2.jpg', 'img/males/17/3.jpg', ''),
(58, 1, 'Оксфорды ZENDEN 110-21MV-014KK', '3999.99', 100, 'img/males/18/1.jpg', 'img/males/18/2.jpg', 'img/males/18/3.jpg', 'Подкладка сделана из натуральной кожи и текстиля, который хорошо впитывает влагу. Кожаная стелька обеспечивает комфорт ногам. Гибкая подошва из резины позволяет стопе принимать естественную форму при ходьбе.'),
(59, 1, 'Тимберленды QUATTROCOMFORTO 336-22', '3899.99', 100, 'img/males/19/1.jpg', 'img/males/19/2.jpg', 'img/males/19/3.jpg', 'Высокие теплые мужские ботинки тимберленды Quattrocomforto для активного отдыха. Мужские кроссовки данной модели противостоят влаге и обеспечивают надежное сцепление со скользкой поверхностью в любое время года благодаря рифленому протектору на подошве.'),
(60, 1, 'Слипоны Pulse 58-31MV-860T', '3799.99', 35, 'img/males/20/1.jpg', 'img/males/20/2.jpg', 'img/males/20/3.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(36) COLLATE utf8mb4_general_ci NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `promo`) VALUES
(1, 'Vomico', 'example@mail.ru', '123', 1),
(2, 'Александр', 'mega.alex31@gmail.com', '123', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
