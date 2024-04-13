-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 01:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingdb_clg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billid` int(11) NOT NULL,
  `grandtotal` float NOT NULL,
  `datetime` datetime NOT NULL,
  `paymentmethod` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` int(6) NOT NULL,
  `address` text NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `trackingid` int(6) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `trackingurl` varchar(300) DEFAULT NULL,
  `trackremarks` text DEFAULT NULL,
  `personreceived` varchar(100) DEFAULT NULL,
  `returnremarks` text DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billid`, `grandtotal`, `datetime`, `paymentmethod`, `city`, `zipcode`, `address`, `remarks`, `status`, `trackingid`, `companyname`, `trackingurl`, `trackremarks`, `personreceived`, `returnremarks`, `email`) VALUES
(15, 132, '2022-05-16 23:23:17', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hyyy', 'delievered', 12, 'punjab co', 'hyyy6', 'pleas ehandle it nicely', 'rahul', NULL, 'ps270158@gmail.com'),
(16, 92.5, '2022-05-16 23:56:29', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hello', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 'ps270158@gmail.com'),
(17, 225.5, '2022-05-17 09:53:13', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hello', 'delievered', 9, 'gtyty', 'yyu', 'ugy', 'ranjan', NULL, 'ps270158@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `netprice` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `billid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `price`, `discount`, `netprice`, `quantity`, `productid`, `billid`) VALUES
(22, 70, 40, 42, 1, 58, 15),
(23, 100, 10, 90, 1, 60, 15),
(24, 60, 25, 45, 1, 65, 16),
(25, 50, 5, 47.5, 1, 66, 16),
(26, 20, 5, 19, 7, 67, 17),
(27, 60, 25, 45, 1, 65, 17),
(28, 50, 5, 47.5, 1, 66, 17);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `catphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories`, `description`, `catphoto`) VALUES
('Bakery Snacks', 'Contains Bakery and Snacks', 'uploads/amul-nuts-raisin-cookies-50-g.jpg'),
('Batter and Chutney', 'contains Batter and Chutney', 'uploads/iddla-idli-batter-1-kg-pouch.jpg'),
('Breads and buns', 'Contains Breads and Buns', 'uploads/britannia-healthy-slice-bread-450-g.jpg'),
('Cakes and Muffins', 'Contains Cakes and Muffins', 'uploads/parle-happy-happy-tutti-fruty-cake-120-g.jpg'),
('Cheese', 'Contains Cheese', 'uploads/amul-blend-diced-cheese-200-g-pack.jpg'),
('Dairy', 'Dairy products as Butter/Curd/Flavoured milk/Khova lassi/ Milk and cream/ Milkshake/ Eggs', 'uploads/britannia-winkin-cow-chocolate-milkshake-200-ml-tetra-pak.jpg'),
('Frozen Nonveg', 'Contains frozen NonVeg', 'uploads/sumeru-chicken-sausages-garlic-200g.jpg'),
('Frozen Vegs', 'contains Frozen Vegs', 'uploads/mccain-variety-pack-3-packs-inside.jpg'),
('Ghee', 'Contains Ghee', 'uploads/amul-cow-ghee-1-l-tin.jpg'),
('IceCreams and Deserts', 'Contains IneCreams and Deserts', 'uploads/kwality-walls-desi-kulfi.jpg'),
('Paneer and Tofu', 'Contains Paneer and Tofu', 'uploads/bio-nutrients-pure-diet-soy-paneer-200-g-pack.jpg'),
('Toast and Khari', 'contains Toasts and Kharis', 'uploads/britannia-toastea-premium-bake-rusk-182-g.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `queryid` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `message` varchar(300) NOT NULL,
  `return_message` varchar(300) DEFAULT 'noooo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`queryid`, `email`, `message`, `return_message`) VALUES
(10, 'ps270158@gmail.com', 'hello admin i have a problem', 'ok tell me which kind of problem that is???'),
(11, 'ps270158@gmail.com', 'hello amin', 'yes tell me');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(10) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `stock` int(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `subcategoryid` int(50) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `subcategoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `price`, `discount`, `stock`, `photo`, `description`, `subcategoryid`, `categoryname`, `subcategoryname`) VALUES
(50, 'Amul Butter 100gm', 20, 8, 77, 'uploads/amul-butter.jpg', 'amul butter', 100, 'Dairy', ''),
(53, 'Cavins Curd (500g)', 15, 5, 10, 'uploads/cavins-curd-500g.jpg', 'curd cavins', 101, 'Dairy', ''),
(58, 'Britania Butter (100gm)', 70, 40, 49, 'uploads/britannia-butter.jpg', 'Britania Butter ', 100, 'Dairy', ''),
(60, 'Milky Mist Cooking Butter (500gm)', 100, 10, 19, 'uploads/milky-mist-cooking-butter.jpg', 'Milky Mist cooking Butter', 100, 'Dairy', ''),
(62, 'Epigamia blueberry (90gms)', 35, 15, 20, 'uploads/epigamia-blueberry-90gms.jpg', 'Blueberry', 101, 'Dairy', ''),
(65, 'Mother dairy classic dahi (400 g) cup', 60, 25, 18, 'uploads/mother-dairy-classic-dahi-400-g-cup.jpg', 'DAHI', 101, 'Dairy', ''),
(66, 'Green belt super eggs (10PCS)', 50, 5, 28, 'uploads/green belt super eggs.jpg', 'eggs', 102, 'Dairy', ''),
(67, 'Amul kool elaichi flavoured milk (180 ml)bottle', 20, 5, 13, 'uploads/amul-kool-elaichi-flavoured-milk-180-ml-bottle.jpg', 'Amul kool elaichi flavoured milk 180-ml bottle', 103, 'Dairy', ''),
(68, 'Milky mist khova', 50, 30, 10, 'uploads/milky-mist-khova.jpg', 'Milky mist khova', 104, 'Dairy', ''),
(69, 'Amul masti spiced buttermilk (200-ml) tetra pak', 30, 3, 20, 'uploads/amul-masti-spiced-buttermilk-200-ml-tetra-pak.jpg', 'Amul masti spiced buttermilk (200-ml) tetra pak', 105, 'Dairy', ''),
(70, 'Anant chaas (500-ml) pouch', 20, 2, 10, 'uploads/anant-chaas-500-ml-pouch.jpg', 'Anant chaas (500-ml) pouch', 105, 'Dairy', ''),
(71, 'Britannia winkin cow classic thick lassi (180-ml) tetra pak', 35, 10, 10, 'uploads/britannia-winkin-cow-classic-thick-lassi-180-ml-tetra-pak.jpg', 'Britannia winkin cow classic thick lassi (180-ml) tetra pak', 105, 'Dairy', ''),
(72, 'Mother dairy tadka chach (350-ml) pouch', 35, 10, 10, 'uploads/mother-dairy-tadka-chach-350-ml-pouch.jpg', 'Mother dairy tadka chach (350-ml) pouch', 105, 'Dairy', ''),
(73, 'Amul fresh cream', 70, 5, 10, 'uploads/amul-fresh-cream.jpg', 'Amul fresh cream', 106, 'Dairy', ''),
(74, 'Milky mist fresh cream', 70, 16, 10, 'uploads/milky-mist-fresh-cream.jpg', 'Milky mist fresh cream', 106, 'Dairy', ''),
(75, 'Nandini good life milk', 15, 1, 10, 'uploads/nandini-good-life-milk.jpg', 'Nandini good life milk', 106, 'Dairy', ''),
(76, 'Nestle milk', 50, 5, 10, 'uploads/nestle-milk.jpg', 'Nestle milk', 106, 'Dairy', ''),
(77, 'Britannia winkin cow chocolate milkshake (200-ml) tetra pak', 50, 15, 10, 'uploads/britannia-winkin-cow-chocolate-milkshake-200-ml-tetra-pak.jpg', 'Britannia winkin cow chocolate milkshake (200-ml) tetra pak', 107, 'Dairy', ''),
(78, 'Hershey-s chocolate (milkshake 200) ml tetra', 30, 10, 10, 'uploads/hershey-s-chocolate-milkshake-200-ml-tetra.jpg', 'Hershey-s chocolate (milkshake 200) ml tetra', 107, 'Dairy', ''),
(79, 'Keventer avengers delights toned (milk-200ml)tetra pak', 30, 5, 10, 'uploads/keventer-avengers-delights-toned-milk-200-ml-tetra-pak.jpg', 'Keventer avengers delights toned (milk-200ml)tetra pak', 107, 'Dairy', ''),
(80, 'Parle agro smoodh coffee frappe-85ml tetra pak', 30, 5, 10, 'uploads/parle-agro-smoodh-coffee-frappe-85-ml-tetra-pak.jpg', 'Parle agro smoodh coffee frappe-85ml tetra pak', 107, 'Dairy', ''),
(81, 'Britannia toastea premium bake rusk 182-g', 25, 10, 10, 'uploads/britannia-toastea-premium-bake-rusk-182-g.jpg', 'Britannia toastea premium bake rusk 182-g', 108, 'Toast and Khari', ''),
(82, 'Kots aata khari 200-g', 25, 15, 10, 'uploads/kots-aata-khari-200-g.jpg', 'kots-aata-khari-200-g', 109, 'Toast and Khari', ''),
(83, 'Parle elaichi rusk 400-g', 30, 15, 10, 'uploads/parle-elaichi-rusk-400-g.jpg', 'Parle elaichi rusk 400-g', 108, 'Toast and Khari', ''),
(84, 'Sunkots dark belgian protein rusk 200-g', 30, 10, 10, 'uploads/sunkots-dark-belgian-protein-rusk-200-g.jpg', 'Sunkots dark belgian protein rusk 200-g', 108, 'Toast and Khari', ''),
(85, 'Sunkots fenugreek butter khari 200-g', 25, 5, 10, 'uploads/sunkots-fenugreek-butter-khari-200-g.jpg', 'Sunkots fenugreek butter khari 200-g', 109, 'Toast and Khari', ''),
(86, 'Bauli moonfills vanilla cream roll 45-g', 30, 10, 10, 'uploads/bauli-moonfills-vanilla-cream-roll-45-g.jpg', 'Bauli moonfills vanilla cream roll 45-g', 111, 'Cakes and Muffins', ''),
(87, 'Britannia 100 veg choco chill sliced cake 70-g', 40, 8, 10, 'uploads/britannia-100-veg-choco-chill-sliced-cake-70-g.jpg', 'Britannia 100 veg choco chill sliced cake 70-g', 110, 'Cakes and Muffins', ''),
(88, 'Fresho signature muffincup cake-vanilla', 45, 12, 10, 'uploads/fresho-signature-muffincup-cake-vanilla.jpg', 'Fresho signature muffincup cake vanilla', 110, 'Cakes and Muffins', ''),
(89, 'Honeybell eggless vanilla bar cake-25-g', 50, 15, 10, 'uploads/honeybell-eggless-vanilla-bar-cake-25-g.jpg', 'Honeybell eggless vanilla bar cake-25-g', 110, 'Cakes and Muffins', ''),
(90, 'Parle happy happy tutti fruty cake 120-g', 20, 5, 10, 'uploads/parle-happy-happy-tutti-fruty-cake-120-g.jpg', 'Parle happy happy tutti fruty cake 120-g', 110, 'Cakes and Muffins', ''),
(91, 'Britannia 100 whole wheat bread 450-g', 15, 2, 10, 'uploads/britannia-100-whole-wheat-bread-450-g.jpg', 'Britannia 100 whole wheat bread 450-g', 112, 'Breads and buns', ''),
(92, 'Muffets-tuffets-burger-bun-150-g', 70, 49, 10, 'uploads/muffets-tuffets-burger-bun-150-g.jpg', 'Muffets-tuffets-burger-bun-150-g', 113, 'Breads and buns', ''),
(93, 'Wibs-large-bread-400-g', 40, 20, 10, 'uploads/wibs-large-bread-400-g.jpg', 'Wibs-large-bread-400-g', 112, 'Breads and buns', ''),
(95, 'Amul-coconut-butter-cookies-50-g', 10, 1, 10, 'uploads/amul-coconut-butter-cookies-50-g.jpg', 'Amul-coconut-butter-cookies-50-g', 114, 'Bakery Snacks', ''),
(96, 'Bauli-moonfils-chocolate-veg-puff-rolls-45-g', 35, 15, 10, 'uploads/bauli-moonfils-chocolate-veg-puff-rolls-45-g.jpg', 'Bauli-moonfils-chocolate-veg-puff-rolls-45-g', 114, 'Bakery Snacks', ''),
(97, 'Britannia-double-choco-muffills-32-g', 20, 2, 10, 'uploads/britannia-double-choco-muffills-32-g.jpg', 'Britannia-double-choco-muffills-32-g', 114, 'Bakery Snacks', ''),
(98, 'Iddla-idli-batter-1-kg-pouch', 20, 2, 10, 'uploads/iddla-idli-batter-1-kg-pouch.jpg', 'iddla-idli-batter-1-kg-pouch', 115, 'Batter and Chutney', ''),
(99, 'Amul-cheese-block-1-kg-carton', 20, 3, 12, 'uploads/amul-cheese-block-1-kg-carton.jpg', 'amul-cheese-block-1-kg-carton', 116, 'Cheese', ''),
(100, 'Britannia-blend-and-diced-pizza-cheese-200-g-pouch', 20, 4, 10, 'uploads/britannia-blend-and-diced-pizza-cheese-200-g-pouch.jpg', 'britannia-blend-and-diced-pizza-cheese-200-g-pouch', 116, 'Cheese', ''),
(104, 'Paras-nandan-cow-ghee-1-l-pouch', 30, 11, 10, 'uploads/paras-nandan-cow-ghee-1-l-pouch.jpg', 'paras-nandan-cow-ghee-1-l-pouch', 117, 'Ghee', '');

-- --------------------------------------------------------

--
-- Table structure for table `productphoto`
--

CREATE TABLE `productphoto` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `caption` text NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL,
  `qty` float NOT NULL,
  `expiry` date NOT NULL,
  `dateofpurchase` date NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int(50) NOT NULL,
  `subcategoryname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `categories` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategoryid`, `subcategoryname`, `description`, `categories`) VALUES
(100, 'Butter', 'Butter', 'Dairy'),
(101, 'Curd', 'curd', 'Dairy'),
(102, 'Eggs', 'eggs', 'Dairy'),
(103, 'Flavoured Milk', 'flavoured Milk', 'Dairy'),
(104, 'Khova', 'khova', 'Dairy'),
(105, 'Lassi', 'lassi', 'Dairy'),
(106, 'Milk and Cream', 'milk and cream', 'Dairy'),
(107, 'MilkShake', 'milk shake', 'Dairy'),
(108, 'Toast', 'toast', 'Toast and Khari'),
(109, 'Khari', 'khari', 'Toast and Khari'),
(110, 'Cakes', 'Cakes', 'Cakes and Muffins'),
(111, 'Muffins', 'Muffins', 'Cakes and Muffins'),
(112, 'Bread', 'Bread', 'Breads and buns'),
(113, 'Buns', 'Buns', 'Breads and buns'),
(114, 'Snacks', 'snacks', 'Bakery Snacks'),
(115, 'Batter', 'batter', 'Batter and Chutney'),
(116, 'CHEESE', 'Cheese', 'Cheese'),
(117, 'GHEE', 'Ghee', 'Ghee'),
(118, 'Paneer', 'PANEER', 'Paneer and Tofu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fullname`, `password`, `gender`, `mobile`) VALUES
('prince@gmail.com', 'prince', 'prince', 'Male', '1234567890'),
('ps270158@gmail.com', 'prince sharma', '12345', 'Male', '8847538102'),
('ramesh@gmail.com', 'ramesh', 'aa', 'Male', '8899889988');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `billid` (`billid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`queryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- Indexes for table `productphoto`
--
ALTER TABLE `productphoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `categories` (`categories`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `queryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `productphoto`
--
ALTER TABLE `productphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategoryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `bill_details_ibfk_2` FOREIGN KEY (`billid`) REFERENCES `bill` (`billid`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`);

--
-- Constraints for table `productphoto`
--
ALTER TABLE `productphoto`
  ADD CONSTRAINT `productphoto_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categories`) REFERENCES `categories` (`categories`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
