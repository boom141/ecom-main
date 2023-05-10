-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shop_db
CREATE DATABASE IF NOT EXISTS `shop_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `shop_db`;

-- Dumping structure for table shop_db.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.admins: ~1 rows (approximately)
INSERT INTO `admins` (`id`, `name`, `password`, `contact`) VALUES
	(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '');

-- Dumping structure for table shop_db.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.cart: ~0 rows (approximately)

-- Dumping structure for table shop_db.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.messages: ~5 rows (approximately)
INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
	(4, 1, 'adasd', 'sadsad@gmail.com', '234234234', 'dsasdasd'),
	(5, 1, 'adasd', 'sadsad@gmail.com', '234234234', 'dsasdasd'),
	(6, 1, 'vincent', 'asdasd@gmail.com', '91512135215', 'dfghjkl;'),
	(7, 1, 'fghjk', 'vbgayotayan2020@plm.edu.ph', '121321321', 'asdasdsadasxasdasdsa'),
	(8, 1, 'rhtytrhyr', 'vgayotayan@gmail.com', '09556123252', 'hkjwhdfklhdk rl.krejtkjretvn');

-- Dumping structure for table shop_db.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `request` varchar(200) DEFAULT NULL,
  `order_tracking` varchar(20) DEFAULT NULL,
  `courier_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.orders: ~10 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`, `request`, `order_tracking`, `courier_type`) VALUES
	(50, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, asdasd, asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Pending', NULL, 'Packed', 'Own'),
	(51, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, asdasd, asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Pending', NULL, 'Packed', 'Third-party'),
	(52, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Pending', '', 'Packed', 'Own'),
	(53, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, asdasd, asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Pending', NULL, 'Packed', 'Own'),
	(54, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Completed', 'with 10k', 'Packed', 'Third-party'),
	(57, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-24 00:00:00', 'Pending', '', 'Packed', 'Own'),
	(58, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-25 00:00:00', 'Completed', 'canton with hotdog', 'Packed', 'Own'),
	(59, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-25 00:00:00', 'Completed', '', 'To Receive', 'Own'),
	(60, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-04-26 00:00:00', 'Pending', '', 'Packed', 'Own'),
	(61, 1, 'asdasd', '931323123', 'vbgayotayan2020@plm.edu.ph', 'cash on delivery', 'asdasd, , asda, asdas', 'dustpan (12 x 1) - ', 12, '2023-05-01 04:02:22', 'Completed', 'may poging kasama', 'To Receive', 'Own');

-- Dumping structure for table shop_db.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Dumping data for table shop_db.products: ~1 rows (approximately)
INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
	(1, 'dustpan', 'pandakot', 12, 'GEMSTAR LOGO (1).png', 'client2.jpg', 'GEMSTAR LOGO (1).png');

-- Dumping structure for table shop_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.users: ~12 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `number`) VALUES
	(1, 'vincent', 'vbgayotayan2020@plm.edu.ph', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', '0'),
	(3, 'asdasdsadasdd', 'sadasdasd', '8cb2237d0679ca88db6464eac60da96345513964', '', '0'),
	(4, 'sdkasndkan', 'vbaskdjlkas@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', '', '0'),
	(5, 'dasdasd', 'asdasasd@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', '', '0'),
	(6, 'asdas', 'jsdhakja@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', '', '0'),
	(7, 'fghj', 'fghj@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', '', '0'),
	(8, 'kdjlaskdj', 'sdasd@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', '733d316a8acc36c7993fc5330030c806f3a9a5f2', '733'),
	(9, 'ksadmkasdm', 'askdmkasdm@gmail.com', '6f718512a12eb00b3d4328668f01bc867ecbe7a5', 'f1a52dc40e71346b3c2bf2d5f903a1e3b951a50b', 'f1a52dc40e71346b3c2bf2d5f903a1e3b951a50b'),
	(10, 'askldnkjas', 'saldkas@gmail.com', '6f718512a12eb00b3d4328668f01bc867ecbe7a5', 'skdmsakdmd', '09258584578'),
	(11, 'ksadklasjd', 'asdas@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', 'klsjdlaksdjalsijdaiks', '09242455541'),
	(12, 'asldkasldk', 'vjahsdjas@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', 'skljdklasjdkl', '09151653215'),
	(13, 'vince', 'vince@gmail.com', '52184786051456f44a5648d4e5e4806976e8337d', 'ksdajsdkajk', '09351543215');

-- Dumping structure for table shop_db.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table shop_db.wishlist: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
