-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 04:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_phone` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_phone`, `admin_email`, `admin_image`, `admin_username`, `admin_password`) VALUES
(1, 'ADMIN', '03498276', 'admin@gmail.com', 'person1.jpeg', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int NOT NULL,
  `from_currency` varchar(5) NOT NULL,
  `to_currency` varchar(5) NOT NULL,
  `convert_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `from_currency`, `to_currency`, `convert_price`) VALUES
(1, '$', '$', 1),
(2, '$', '€', 0.91),
(3, '$', 'LBP', 1500),
(4, '$', 'VNĐ', 24000);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL,
  `delivery_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `delivery_cost`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `extra_toppings`
--

CREATE TABLE `extra_toppings` (
  `extra_toppings_id` int NOT NULL,
  `order_item_id` int NOT NULL,
  `topping_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extra_toppings`
--

INSERT INTO `extra_toppings` (`extra_toppings_id`, `order_item_id`, `topping_name`) VALUES
(9, 1, 'orange'),
(10, 1, 'rasberries'),
(11, 1, 'strawberries'),
(12, 2, 'brownie bites'),
(13, 2, 'sprinkled chocolate chips'),
(14, 3, 'orange'),
(15, 3, 'rasberries'),
(16, 3, 'strawberries'),
(17, 4, 'brownie bites'),
(18, 4, 'sprinkled chocolate chips'),
(19, 5, 'orange'),
(20, 5, 'rasberries'),
(21, 5, 'strawberries'),
(22, 6, 'brownie bites'),
(23, 6, 'sprinkled chocolate chips'),
(24, 7, 'orange'),
(25, 7, 'rasberries'),
(26, 7, 'strawberries'),
(27, 8, 'brownie bites'),
(28, 8, 'sprinkled chocolate chips'),
(29, 9, 'orange'),
(30, 9, 'rasberries'),
(31, 9, 'strawberries'),
(32, 10, 'brownie bites'),
(33, 10, 'sprinkled chocolate chips'),
(34, 11, 'orange'),
(35, 11, 'rasberries'),
(36, 11, 'strawberries'),
(37, 12, 'brownie bites'),
(38, 12, 'sprinkled chocolate chips'),
(39, 13, 'orange'),
(40, 13, 'rasberries'),
(41, 13, 'strawberries'),
(42, 14, 'brownie bites'),
(43, 14, 'sprinkled chocolate chips'),
(44, 16, 'orange'),
(45, 16, 'rasberries'),
(46, 16, 'strawberries'),
(47, 17, 'brownie bites'),
(48, 17, 'sprinkled chocolate chips'),
(49, 18, 'orange'),
(50, 18, 'rasberries'),
(51, 18, 'strawberries'),
(52, 19, 'brownie bites'),
(53, 19, 'sprinkled chocolate chips'),
(54, 20, 'orange'),
(55, 20, 'rasberries'),
(56, 20, 'strawberries'),
(57, 21, 'brownie bites'),
(58, 21, 'sprinkled chocolate chips'),
(59, 22, 'orange'),
(60, 22, 'rasberries'),
(61, 22, 'strawberries'),
(62, 23, 'brownie bites'),
(63, 23, 'sprinkled chocolate chips'),
(64, 24, 'orange'),
(65, 24, 'rasberries'),
(66, 24, 'strawberries'),
(67, 25, 'brownie bites'),
(68, 25, 'sprinkled chocolate chips'),
(69, 26, 'orange'),
(70, 26, 'rasberries'),
(71, 26, 'strawberries'),
(72, 27, 'orange'),
(73, 27, 'cookies'),
(74, 27, 'coconut'),
(75, 27, 'brownie bites'),
(76, 28, 'mango'),
(77, 28, 'sour gummy'),
(78, 28, 'almonds'),
(79, 28, 'sprinkled chocolate chips');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int NOT NULL,
  `manager_name` varchar(30) NOT NULL,
  `manager_phone` varchar(30) NOT NULL,
  `manager_email` varchar(30) NOT NULL,
  `manager_image` varchar(100) NOT NULL,
  `manager_username` varchar(30) NOT NULL,
  `manager_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `manager_name`, `manager_phone`, `manager_email`, `manager_image`, `manager_username`, `manager_password`) VALUES
(1, 'MANAGER', '71123456', 'manager@gmail.com', 'person4.jpeg', 'manager', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `menu_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_logo`) VALUES
(1, 'Sinh_Tố', 'smoothie-logo.png'),
(2, 'Nước_Ép', 'juice-logo.png'),
(3, 'Sữa_Lắc', 'milkshake-logo.png'),
(4, 'Cà_Phê', 'coffee-logo.png'),
(7, 'Tráng_Miệng', 'bg3.png'),
(8, 'Bánh_Ngọt', 'bg6.png');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `item_id` int NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_price` float NOT NULL,
  `item_image` varchar(100) NOT NULL,
  `item_description` varchar(1000) NOT NULL,
  `menu_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`item_id`, `item_name`, `item_price`, `item_image`, `item_description`, `menu_id`) VALUES
(28, 'Tropical Smoothie', 15, 'images/smoothies/smoothie1.jpg', 'This all fruit smoothie consists of diced mango, cut up straberries, chopped pineapple and a splash of orange juice and any kind of toppings you want!', 1),
(29, 'Blueberry-Banana Smoothies', 15, 'images/smoothies/smoothie2.jpg', '1 banana, 1 cup blueberries, 1/2 cup unsweetened coconut milk, 1 tablespoon each honey and lime juice, 1/4 teaspoon almond extract and 1 cup ice.', 1),
(30, 'Dragon Fruit Smoothie', 15, 'images/smoothies/smoothie3.jpg', 'Combination of frozen bananas, berries, grapefruit and dragon fruit ready to throw into smoothies, with very beautifull vibrant colors!', 1),
(31, 'Strawberry Smoothie', 15, 'images/smoothies/smoothie4.jpg', '2 cups strawberries, 1 cup crumbled pound cake, 1 1/2 cups each milk and ice, and sugar to taste. Top with whipped cream and more strawberries.', 1),
(32, 'Berries-Vanilla Smoothie', 15, 'images/smoothies/smoothie5.jpg', 'This simple, nutritious smoothie tastes like summer and is delicious when made with fresh blueberries, Rasberries, Strawberries with vanilla syrup.', 1),
(33, 'Blueberry-Almond Smoothie', 15, 'images/smoothies/smoothie6.jpg', 'Roasted almons add body and toasty flavor to this smoothie thats loaded with fiber and vitamin C', 1),
(37, 'Orange Juice', 10, 'images/juices/juice10.jpg', '100% pure fresh orange juice, and not from concentrate.', 2),
(38, 'Pomegranate Juice', 10, 'images/juices/juice2.jpg', '100% pure pomegranate juice, and not from concentrate.', 2),
(39, 'Kiwi Juice', 10, 'images/juices/juice3.jpg', '100% pure kiwi juice, and not from concentrate.', 2),
(40, 'Peach Juice', 10, 'images/juices/juice4.jpg', '100% pure peach juice, and not from concentrate.', 2),
(41, 'Lemonade Juice', 10, 'images/juices/juice5.jpg', '100% pure lemonade juice, and not from concentrate.', 2),
(42, 'Lemonade-Mint Juice', 10, 'images/juices/juice6.jpg', '100% pure lemonade juice with mint flavor, and not from concentrate.', 2),
(43, 'Chocolate Bomb', 20, 'images/milkshakes/milkshake1.jpg', 'Delicious and tasty chocolate milkshake! you can add whatever topping you want.', 3),
(44, 'Twix Milkshake', 20, 'images/milkshakes/milkshake2.jpg', 'Delicious and tasty Twix milkshake! you can add whatever topping you want.', 3),
(45, 'Caramel Milkshake', 20, 'images/milkshakes/milkshake3.jpg', 'Delicious and tasty Caramel milkshake! you can add whatever topping you want.', 3),
(47, 'Caffe Latte', 5, 'images/Coffee/coffee1.jpg', 'ngon', 4),
(48, 'Cà phê đen', 5, 'images/Coffee/coffee2.jpg', 'khá ngon', 4),
(49, 'Cinnamon Dolce Latte', 5, 'images/Coffee/coffee3.jpg', 'ngon', 4),
(50, 'capucino', 5, 'images/Coffee/bg_2.jpg', 'hơi bị ngon', 4),
(51, 'cafe den', 6, 'images/Coffee/menu-1.jpg', 'cà phê xịn', 4),
(52, 'Esspresso', 5, 'images/Cà phê/coffee1.jpg', 'ngon', 4),
(57, 'hoa quả trộn', 4, 'images/Dessert/fruit-1.jpg', 'ngon ngon', 7),
(58, 'hoa quả trộn 2', 3, 'images/Dessert/fruit-2.jpg', 'ngòn ngón ngon', 7),
(59, 'táo trộn rau', 6, 'images/Dessert/fruit-5.jpg', 'ngon', 7),
(60, 'bánh kem dâu', 4, 'images/Cake/dessert-1.jpg', 'ngon ngọt', 8),
(61, 'bánh chuối', 3, 'images/Cake/dessert-5.jpg', 'ngon ngon', 8),
(62, 'bánh hoa quả', 4, 'images/Cake/dessert-3.jpg', 'ngon ngòn ngon', 8);

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int NOT NULL,
  `item_id` int NOT NULL,
  `new_price` float NOT NULL,
  `pourcentage` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `item_id`, `new_price`, `pourcentage`, `start_date`, `end_date`) VALUES
(14, 28, 7.5, 50, '2022-03-18', '2025-04-02'),
(15, 29, 7.5, 50, '2022-03-18', '2025-06-02'),
(16, 38, 5, 50, '2022-04-18', '2025-06-03'),
(17, 32, 7.5, 50, '2022-04-18', '2022-06-01'),
(18, 31, 13.5, 10, '2022-04-18', '2025-06-12'),
(19, 42, 8, 20, '2022-04-18', '2025-07-16'),
(20, 39, 7, 30, '2022-04-18', '2025-08-01'),
(21, 50, 4.5, 10, '2023-10-26', '2023-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `orderinfo`
--

CREATE TABLE `orderinfo` (
  `order_id` int NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `customer_phone` varchar(30) NOT NULL,
  `customer_address` varchar(1000) NOT NULL,
  `customer_city` varchar(30) NOT NULL,
  `customer_zip` varchar(30) NOT NULL,
  `customer_state` varchar(30) NOT NULL,
  `customer_country` varchar(30) NOT NULL,
  `order_total` float NOT NULL,
  `order_currency` varchar(5) NOT NULL,
  `order_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderinfo`
--

INSERT INTO `orderinfo` (`order_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `customer_state`, `customer_country`, `order_total`, `order_currency`, `order_date`) VALUES
(3, 'customer1 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(4, 'customer1 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(5, 'customer1 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(6, 'customer2 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(7, 'customer2 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(8, 'customer2 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(9, 'customer3 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(10, 'customer3 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(11, 'customer3 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(12, 'customer4 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(13, 'customer5 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(14, 'customer6 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(15, 'customer7 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(16, 'customer7 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(17, 'customer8 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(18, 'customer9 ', 'customer@gmail.com', '12345678', 'address', 'city', '00000', 'state', 'country', 70, ' $ ', '17-5-2022'),
(19, 'Nghia Pham', 'nghia@gmail.com', '123', 'campha', 'no', '123', 'vn', 'vn', 44.5, ' $ ', '9-11-2023'),
(20, 'nghia pham', 'nghia@gmail.com', '123', 'quang ninh', 'Cam pha', '123', 'vn', 'Viet nam', 36, ' $ ', '12-11-2023'),
(21, 'nghia pham', 'nghia@gmail.com', '1122314', 'cam pha quang ninh', 'cam pha', '123', 'quang ninh', 'viet nam', 36, ' $ ', '15-11-2023');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_quantity` int NOT NULL,
  `toppings_price` float NOT NULL,
  `item_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `item_name`, `item_quantity`, `toppings_price`, `item_total`) VALUES
(1, 3, 'Tropical Smoothie', 1, 6, 21),
(2, 3, 'Dragon Fruit Smoothie', 2, 8, 38),
(3, 3, 'Cinnamon Dolce Latte', 1, 0, 5),
(4, 4, 'Tropical Smoothie', 1, 6, 21),
(5, 4, 'Dragon Fruit Smoothie', 2, 8, 38),
(6, 4, 'Cinnamon Dolce Latte', 1, 0, 5),
(7, 5, 'Tropical Smoothie', 1, 6, 21),
(8, 5, 'Dragon Fruit Smoothie', 2, 8, 38),
(9, 5, 'Cinnamon Dolce Latte', 1, 0, 5),
(10, 6, 'Tropical Smoothie', 1, 6, 21),
(11, 6, 'Dragon Fruit Smoothie', 2, 8, 38),
(12, 6, 'Cinnamon Dolce Latte', 1, 0, 5),
(13, 7, 'Tropical Smoothie', 1, 6, 21),
(14, 7, 'Dragon Fruit Smoothie', 2, 8, 38),
(15, 7, 'Cinnamon Dolce Latte', 1, 0, 5),
(16, 8, 'Tropical Smoothie', 1, 6, 21),
(17, 9, 'Dragon Fruit Smoothie', 2, 8, 38),
(18, 10, 'Cinnamon Dolce Latte', 1, 0, 5),
(19, 11, 'Tropical Smoothie', 1, 6, 21),
(20, 12, 'Dragon Fruit Smoothie', 2, 8, 38),
(21, 13, 'Cinnamon Dolce Latte', 1, 0, 5),
(22, 14, 'Tropical Smoothie', 1, 6, 21),
(23, 15, 'Dragon Fruit Smoothie', 2, 8, 38),
(24, 16, 'Cinnamon Dolce Latte', 1, 0, 5),
(25, 17, 'Tropical Smoothie', 1, 6, 21),
(26, 18, 'Dragon Fruit Smoothie', 2, 8, 38),
(27, 19, 'Tropical Smoothie', 1, 8, 15.5),
(28, 19, 'Dragon Fruit Smoothie', 1, 8, 23),
(29, 20, 'Dragon Fruit Smoothie', 1, 0, 15),
(30, 20, 'Berries-Vanilla Smoothie', 1, 0, 15),
(31, 21, 'Dragon Fruit Smoothie', 1, 0, 15),
(32, 21, 'Berries-Vanilla Smoothie', 1, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_rating` int NOT NULL,
  `user_review` text NOT NULL,
  `datetime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(45, 'user1', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-1-2022'),
(46, 'user2', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-1-2022'),
(47, 'user3', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-1-2022'),
(48, 'user4', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-1-2022'),
(49, 'user5', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-2-2022'),
(50, 'user6', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-2-2022'),
(51, 'user7', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-2-2022'),
(52, 'user8', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-3-2022'),
(53, 'user9', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-3-2022'),
(54, 'user10', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-3-2022'),
(55, 'user11', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-4-2022'),
(56, 'user12', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-4-2022'),
(57, 'user13', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-4-2022'),
(58, 'user14', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-4-2022'),
(59, 'user15', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-5-2022'),
(60, 'user16', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-5-2022'),
(61, 'user17', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-5-2022'),
(62, 'user18', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-5-2022'),
(63, 'user19', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-6-2022'),
(64, 'user20', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-6-2022'),
(65, 'user21', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-6-2022'),
(66, 'user22', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-7-2022'),
(67, 'user23', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-7-2022'),
(68, 'user24', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-7-2022'),
(69, 'user25', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-8-2022'),
(70, 'user26', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-9-2022'),
(71, 'user27', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-10-2022'),
(72, 'user28', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-11-2022'),
(73, 'user29', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.', '16-12-2022'),
(74, 'new', 4, 'ggg', '16-5-2022'),
(75, 'nghia', 4, 'good', '9-11-2023'),
(76, 'unknown', 4, 'fine', '9-11-2023'),
(77, 'nghia ngo', 5, 'nice', '12-11-2023');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `member_id` int NOT NULL,
  `member_name` varchar(30) NOT NULL,
  `member_image` varchar(100) NOT NULL,
  `member_role` varchar(100) NOT NULL,
  `member_phone` varchar(30) NOT NULL,
  `member_email` varchar(30) NOT NULL,
  `member_salary` float NOT NULL,
  `member_username` varchar(30) NOT NULL,
  `member_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`member_id`, `member_name`, `member_image`, `member_role`, `member_phone`, `member_email`, `member_salary`, `member_username`, `member_password`) VALUES
(5, 'Nghia', 'mem1.jpg', 'Manager', '000', 'nghia@gmail.com', 2000, 'shu', 'nghia'),
(6, 'Manh', 'mem3.jpg', 'pha che', '123', 'manhgay@gmail.com', 1, 'manhngu', 'manh'),
(7, 'nam', 'mem5.jpg', 'boi ban', '1234', 'nam@gmail.com', 500, 'nam', 'nam'),
(8, 'phong', 'mem2.jpg', 'boi ban', '123456', 'phong@gmail.com', 600, 'phong', 'phong'),
(9, 'ha', 'mem4.jpg', 'ke toan', '123456', 'ha@gmail.com', 500, 'ha', 'ha');

-- --------------------------------------------------------

--
-- Stand-in structure for view `todayoffer`
-- (See below for the actual view)
--
CREATE TABLE `todayoffer` (
`offer_id` int
,`item_id` int
,`new_price` float
,`pourcentage` int
,`start_date` date
,`end_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `topping_id` int NOT NULL,
  `topping_name` varchar(30) NOT NULL,
  `topping_image` varchar(30) NOT NULL,
  `topping_price` float NOT NULL,
  `topping_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`topping_id`, `topping_name`, `topping_image`, `topping_price`, `topping_category_id`) VALUES
(1, 'orange', 'images/toppings/t1.png', 2, 1),
(2, 'apple', 'images/toppings/t2.png', 2, 1),
(3, 'rasberries', 'images/toppings/t3.png', 2, 1),
(4, 'sour gummy', 'images/toppings/t4.png', 1, 2),
(5, 'cookies', 'images/toppings/t5.png', 1, 2),
(6, 'mango', 'images/toppings/t6.png', 2, 1),
(7, 'brownie bites', 'images/toppings/t7.png', 2, 4),
(8, 'sprinkles', 'images/toppings/t8.png', 1, 2),
(9, 'marshmello', 'images/toppings/t9.png', 1, 2),
(10, 'gummy bears', 'images/toppings/t10.png', 1, 2),
(11, 'whipped cream', 'images/toppings/t11.png', 1, 2),
(12, 'strawberries', 'images/toppings/t12.png', 2, 1),
(13, 'M&Ms', 'images/toppings/t13.png', 1, 2),
(14, 'crushed oreos', 'images/toppings/t14.png', 2, 4),
(15, 'white chocolate chips', 'images/toppings/t15.png', 2, 4),
(16, 'blueberries', 'images/toppings/t16.png', 1, 2),
(17, 'sprinkled chocolate chips', 'images/toppings/t17.png', 2, 4),
(18, 'skittles', 'images/toppings/t18.png', 1, 2),
(19, 'strawberry popping', 'images/toppings/t19.png', 1, 2),
(20, 'chocolate chips', 'images/toppings/t20.png', 2, 4),
(21, 'chocolate', 'images/toppings/t21.png', 2, 4),
(22, 'almonds', 'images/toppings/t22.png', 3, 3),
(23, 'banana', 'images/toppings/t23.png', 2, 1),
(24, 'kiwi', 'images/toppings/t24.png', 2, 1),
(25, 'pepitas', 'images/toppings/t25.png', 3, 3),
(26, 'coconut', 'images/toppings/t26.png', 3, 3),
(27, 'granola', 'images/toppings/t27.png', 3, 3),
(28, 'goji berries', 'images/toppings/t28.png', 2, 1),
(29, 'nut butter', 'images/toppings/t29.png', 2, 4),
(30, 'dark chocolate', 'images/toppings/t30.png', 2, 4),
(31, 'colored cornflakes', 'images/toppings/t31.png', 1, 2),
(32, 'pineapple', 'images/toppings/t32.png', 2, 1),
(33, 'walnut', 'images/toppings/t33.png', 3, 3),
(34, 'honey', 'images/toppings/t34.png', 1, 2),
(35, 'hezelnut', 'images/toppings/t35.png', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `toppingscategory`
--

CREATE TABLE `toppingscategory` (
  `topping_category_id` int NOT NULL,
  `topping_category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `toppingscategory`
--

INSERT INTO `toppingscategory` (`topping_category_id`, `topping_category_name`) VALUES
(1, 'fruits'),
(2, 'candy'),
(3, 'nuts'),
(4, 'chocolate');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_phone`, `user_email`, `user_image`, `username`, `password`) VALUES
(1, 'nghia', '123456789', 'nghia@gmail.com', '', 'nghia', 'nghia'),
(1, 'nghia', '123456789', 'nghia@gmail.com', '', 'nghia', 'nghia');

-- --------------------------------------------------------

--
-- Structure for view `todayoffer`
--
DROP TABLE IF EXISTS `todayoffer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todayoffer`  AS SELECT `offer`.`offer_id` AS `offer_id`, `offer`.`item_id` AS `item_id`, `offer`.`new_price` AS `new_price`, `offer`.`pourcentage` AS `pourcentage`, `offer`.`start_date` AS `start_date`, `offer`.`end_date` AS `end_date` FROM `offer` WHERE (0 <> (select (curdate() between `offer`.`start_date` and `offer`.`end_date`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `extra_toppings`
--
ALTER TABLE `extra_toppings`
  ADD PRIMARY KEY (`extra_toppings_id`),
  ADD KEY `order_item_id` (`order_item_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `orderinfo`
--
ALTER TABLE `orderinfo`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`topping_id`),
  ADD KEY `topping_category_id` (`topping_category_id`);

--
-- Indexes for table `toppingscategory`
--
ALTER TABLE `toppingscategory`
  ADD PRIMARY KEY (`topping_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `extra_toppings`
--
ALTER TABLE `extra_toppings`
  MODIFY `extra_toppings_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderinfo`
--
ALTER TABLE `orderinfo`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `member_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `topping_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `toppingscategory`
--
ALTER TABLE `toppingscategory`
  MODIFY `topping_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `extra_toppings`
--
ALTER TABLE `extra_toppings`
  ADD CONSTRAINT `extra_toppings_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`);

--
-- Constraints for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD CONSTRAINT `menuitem_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);

--
-- Constraints for table `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menuitem` (`item_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orderinfo` (`order_id`);

--
-- Constraints for table `toppings`
--
ALTER TABLE `toppings`
  ADD CONSTRAINT `toppings_ibfk_1` FOREIGN KEY (`topping_category_id`) REFERENCES `toppingscategory` (`topping_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
coffeeshop