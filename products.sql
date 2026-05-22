-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2026 at 11:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `description`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(903, 'Basic Panel Fan', '1', 1500.00, 'Axial flow fans fitted with regular panel to hold the entire assembly. These fans are commonly seen in commercial and industrial establishments. Used widely for general ventilation in factories, warehouses, foundry, laundry, agricultural and institutional establishments requiring large volume of air relatively at atmospheric pressure. Constructed for wall mounting or ceiling mount as exhaust or air supply fan. As air circulators these fans are constructed as truss mount, with pedestal, and mobile with pedestal.', 0, '2026-03-29 05:55:36', '2026-04-27 02:00:15'),
(904, 'Portable Ventilating Fans', '1', 2500.00, 'Axial fans housed in cylindrical tubes commonly used in confined areas when fitted with flexible ducts, during painting, welding or chemical applicatoin works.', 14, '2026-03-29 06:14:09', '2026-05-05 14:25:29'),
(906, 'Pedestal Air Circulators', '4', 3000.00, 'Axial fans housed in cylindrical tubes for long range blowing used as man-coolers and drying applications.', 10, '2026-04-03 04:41:42', '2026-04-09 07:48:16'),
(907, 'Tubeaxial Fans', '1', 4500.00, '', 11, '2026-04-03 04:42:40', '2026-04-28 12:53:50'),
(908, 'Vaneaxial Fans', '1', 4000.00, 'Axial flow fans designed and built with cylindrical housing for ventilation purposes utilizing ductworks, where large volume of air is to be moved and can handle statis pressures up to 7 in. w.g. mechanical efficiencies in the range of 80% compared to the 70% attained by tubeaxial fans.', 15, '2026-04-03 05:07:29', '2026-05-02 05:49:10'),
(909, 'Power Roof Ventilators', '3', 4300.00, 'Roof mounted axial flow fans that can provide optimum air delivery for general ventilation used at factories, shops, warehouses, and other establishments.', 11, '2026-04-03 05:07:56', '2026-04-27 01:59:55'),
(910, 'Centrifugal Wall or Roof Mount Ventilators', '5', 3000.00, 'Manufactured with powerful centrifugal flow fan wheels, for exhausting air from commercial or industrial establishments. Widely used for kitchens, restrooms, laboratories and other applications reliable operation.', 7, '2026-04-03 05:08:42', NULL),
(911, 'Centrifugal In-line Fans', '1', 4200.00, 'Feature combines the reliable performance of the scroll type centrifugal fans with the compactness of axial flow fans. Used in many types of ventilation systems where the installation of conventional centrifugal fans is impractical.', 18, '2026-04-03 05:09:22', '2026-04-28 12:55:05'),
(912, 'Centrifugal Fans', '1', 3700.00, 'Designed and built with powerful fan wheels than axial flow fans. Centrifugal flow fans operate at extremely high pressure but with lesser volume displacement compared to axial flow fans. Three basic fan wheels: the forward curved, backward curved, and the radial wheel make up the family of the centrifugal flow fans.', 15, '2026-04-03 05:11:33', '2026-04-28 12:53:44'),
(913, 'Forward curved fans', '1', 2500.00, 'centrifugal flow fans with blades pointing in the direction of the fan rotation. Due to the large volume and high pressure delivery of forward curved fans, this type is very compact and operated at low speed that renders quiet operation. Typical application is in heating and air-conditioning, ventilation, and other operation requiring quiet operation with large volume of air to be moved at high pressure.', 15, '2026-04-03 05:12:06', '2026-04-27 01:57:29'),
(914, 'Radial fans', '1', 2900.00, 'with the same size as the forward and backward curved fans, the radial fans develop the least volume; pressure is higher than the backward curved but lower than the forward curved fans. This type of fan find wide use in industrial and commercial application.', 8, '2026-04-03 05:12:30', '2026-04-27 02:00:07'),
(915, 'Industrial Fans', '1', 4100.00, 'Centrifugal flow fans operating with a wheel peripheral velocity in the range of 170,000 feet per minute are designated as industrial fans. Industrial fans are commonly built as AIR HANDLER and MATERIAL HANDLER.', 7, '2026-04-03 05:12:59', NULL),
(916, ' Plug Fans', '1', 2300.00, 'Plug fans are centrifugal flow fans that are built without housing. These type of fans are built to cater to many applications in the commercial and industrial sector, a few of these are HVAC installations, ovens, spray booths, dryers, and kilns', 6, '2026-04-03 05:13:19', NULL),
(917, 'Utility Fans', '1', 3100.00, 'Utility fans are high volume direct driven fans; used for general ventilation when duct systems are required. Applications includes exhausting foul air, blowing cool air, forcing air through washers and blasters, for air furnace, dryers, and gas ovens.', 9, '2026-04-03 05:13:40', NULL),
(918, ' Pressure Blowers', '2', 1700.00, 'Direct driven fans used in exhaust systems where air contains dirt, lint, dust, and other foreign materials. Also used for filtered dust collectors.', 23, '2026-04-03 05:14:10', '2026-05-16 09:04:33'),
(919, 'Fume Hood', '3', 2400.00, 'Fume Hood and chemical staging stations are designed according to need. Units are manufactured in black iron, stainless steel, PVC, FRP or other materials compatible to the intended use.', 13, '2026-04-03 05:15:25', '2026-04-09 07:49:54'),
(920, 'Cyclone Separators', '4', 4700.00, 'Cyclone Separators are manufactured according to need. Units for gas-solid and gas-liquid separators are available in black-iron, carbon steel or PVC and FRP. Hoppers and collection chamber for the cyclone are also available.', 36, '2026-04-03 05:16:06', '2026-05-05 14:25:40'),
(921, ' Mobile Dust Collectors', '2', 2000.00, 'Bag type dust collectors ranging up to 55 gallons dust holding capacity. Fitted with casters for easy transport.\n\n', 274, '2026-04-03 05:16:45', '2026-05-02 05:49:00'),
(922, 'Hair Blower', '2', 1200.00, 'Hair Blower', 59, '2026-04-03 05:17:36', '2026-05-05 14:25:22'),
(923, 'Aleja Mini Fan', '1', 600.00, 'Mini Fan', 144, '2026-04-09 06:29:04', '2026-05-05 14:25:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category` (`category_id`),
  ADD KEY `idx_name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
