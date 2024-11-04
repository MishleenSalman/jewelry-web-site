-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2023 at 11:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(9, 'Tiffany & Co'),
(10, 'Swarovski'),
(11, 'Pandora'),
(12, 'Cartier'),
(13, 'maria');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(2, 'Earrings'),
(3, 'Necklace'),
(4, 'Bracelet');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 1371829391, 11, 1, 'pending'),
(2, 1, 1928834595, 12, 1, 'pending'),
(3, 1, 288522450, 8, 1, 'pending'),
(4, 1, 67536778, 4, 3, 'pending'),
(5, 1, 1053050509, 8, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(1, 'Attract elegant circle necklace', 'timeless and elegant with simple design', 'Attract elegant circle necklace', 3, 9, 'attract elegant circle necklace  description-timeless and elegant with simple design.png', 'attract elegant circle necklace (2).png', 'attract elegant circle necklace.png', '399.99', '2023-03-12 13:23:58', 'true'),
(2, 'Family heart bracelet', 'family heart bracelet with hearts around it,so authentic and classy bracelet', 'family heart bracelet with hearts around it,so authentic and classy bracelet', 4, 10, 'family heart bracelet                        description-family heart bracelet with hearts around it,so authentic and classy bracelet.png', 'family heart bracelet (2).png', 'family heart bracelet.png', '299.00', '2023-03-12 13:26:06', 'true'),
(3, 'Sparkle dance necklace', 'elegant and powerfull necklace with red diamond', 'elegant and powerfull necklace with red diamond Sparkle dance necklace', 3, 9, 'product title-sparkle dance necklace                  description-elegant and powerfull necklace with red diamond                   price-.png', 'product title-sparkle dance necklace (2).png', 'product title-sparkle dance necklace.png', '300', '2023-03-12 13:28:58', 'true'),
(4, 'Gold shinning necklace', 'classic with modern design,14 carat gold plating', 'classic with modern design,14 carat gold plating Gold shinning necklace', 3, 10, 'title-gold shinning necklace  description-classic with modern design,14 carat gold plating.png', 'gold shinning.png', 'gold shinning1.png', '500.00', '2023-03-12 13:32:43', 'true'),
(5, 'Rose gold sunshine earrings', 'Crafted in rose gold plating with sparkling white centerpieces', 'Crafted in rose gold plating with sparkling white centerpieces Rose gold sunshine earrings', 2, 12, 'title-rose gold sunshine earrings     description- Crafted in rose gold plating with sparkling white centerpieces.png', 'sunshine earings 2.png', 'sunshine earings.png', '700.00', '2023-03-12 13:37:45', 'true'),
(6, 'Constella cocktail ring', 'elegant and chik ring with 24 carat diamond Constella cocktail ring', 'elegant and chik ring with 24 carat diamond', 1, 9, 'title-Constella cocktail ring            description-elegant and chik ring with 24 carat diamond.png', 'title-Constella cocktail ring (2).png', 'title-Constella cocktail ring.png', '1200.00', '2023-03-12 13:38:47', 'true'),
(7, 'Crystal hoop silver earrings', ' chic and elegant earrings with pink diamond', ' chic and elegant earrings with pink diamond Crystal hoop silver earrings', 2, 10, 'title-Crystal hoop silver earrings         description-chic and elegant earrings with pink diamond.png', 'title-Crystal hoop silver earrings (2).png', 'title-Crystal hoop silver earrings.png', '900.00', '2023-03-12 13:39:38', 'true'),
(8, 'Sparkle diamond crown', 'shinning and powerfull silver ring', 'shinning and powerfull silver ring Sparkle diamond crown', 1, 11, 'title-sparkle diamond crown      description-shinning and powerfull silver ring.png', 'title-sparkle diamond crown (2).png', 'title-sparkle diamond crown.png', '300.00', '2023-03-12 13:40:33', 'true'),
(9, 'Sparkle stars bracelet', 'inspired from the cosmos,full of beauty and classy', 'inspired from the cosmos,full of beauty and classy Sparkle stars bracelet', 4, 12, 'title-sparkle stars bracelet                         description-inspired from the cosmos,full of beauty and classy.png', 'title-sparkle stars bracelet.png', 'title-sparkle stars bracelet (2).png', '2100.00', '2023-03-12 13:41:30', 'true'),
(10, 'Sky diamond bracelet', 'so fantastic and feminine bracelet with touch of the sky', 'so fantastic and feminine bracelet with touch of the sky Sky diamond bracelet', 4, 10, 'title-sky diamond bracelet                      desccription-so fantastic and feminine bracelet with touch of the sky.png', 'title-sky diamond bracelet (2).png', 'title-sky diamond bracelet.png', '1200.00', '2023-03-12 13:43:12', 'true'),
(11, 'Princess wish gold ring', ' royal and elegant ring,set with half diamonds.', ' royal and elegant ring,set with half diamonds. Princess wish gold ring', 1, 9, 'title-princess wish gold ring.png', 'title-princess wish gold ring                 description-royal and elegant ring,set with half diamonds..png', 'title-princess wish gold ring (2).png', '3000.00', '2023-03-12 13:44:53', 'true'),
(12, 'Lovely earrings  heart', 'so beauty and lovely earrings', 'so beauty and lovely earrings Lovely earrings  heart', 2, 11, 'title-lovely earrings  heart                       description-so beauty and lovely earrings.png', 'title-lovely earrings  heart (2).png', 'title-lovely earrings  heart.png', '1500.00', '2023-03-12 13:45:49', 'true'),
(13, 'silver ing', 'asdas', 'sdas', 2, 9, 'silverringtest.png', 'title-lovely earrings  heart                       description-so beauty and lovely earrings.png', 'attract elegant circle necklace (2).png', '1000', '2023-03-16 10:06:46', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(1, 1, 3299, 1371829391, 2, '2023-03-12 13:48:41', 'pending'),
(2, 1, 1500, 1928834595, 1, '2023-03-12 13:58:29', 'pending'),
(3, 1, 700, 288522450, 2, '2023-03-12 14:03:57', 'pending'),
(4, 1, 1500, 67536778, 1, '2023-03-16 10:03:37', 'pending'),
(5, 1, 300, 1053050509, 1, '2023-03-16 10:13:19', 'pending'),
(6, 1, 0, 1228749465, 0, '2023-03-16 11:06:04', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(2, 'jaja', 'jaja@gmail.com', '$2y$10$GaYC1c18CCnr6zvLALBG5uGeWtEmGEFfTANXgAdKSLiB7SSO2lLo2', '1.jpeg', '::1', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
