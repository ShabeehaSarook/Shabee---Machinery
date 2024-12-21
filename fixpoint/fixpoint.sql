-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2024 at 04:59 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding_details`
--

DROP TABLE IF EXISTS `bidding_details`;
CREATE TABLE IF NOT EXISTS `bidding_details` (
  `bidding_id` int NOT NULL AUTO_INCREMENT,
  `breakdown_id` int NOT NULL,
  `professionals_id` int NOT NULL,
  `estimate_quotation` double NOT NULL,
  `bidding_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `quotation_pdf` varchar(100) NOT NULL,
  `progress_percentage` int DEFAULT NULL,
  `progress_pic` text,
  `progress_additional` text,
  `deleted_ad` datetime DEFAULT NULL,
  `updated_ad` datetime DEFAULT NULL,
  PRIMARY KEY (`bidding_id`),
  KEY `breakdown_id` (`breakdown_id`),
  KEY `professionals_id` (`professionals_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bidding_details`
--

INSERT INTO `bidding_details` (`bidding_id`, `breakdown_id`, `professionals_id`, `estimate_quotation`, `bidding_date`, `quotation_pdf`, `progress_percentage`, `progress_pic`, `progress_additional`, `deleted_ad`, `updated_ad`) VALUES
(19, 10, 15, 15000, '2024-11-24 13:55:24', 'BACHARI.pdf', NULL, NULL, NULL, NULL, '2024-11-25 03:41:13'),
(20, 9, 15, 1550025, '2024-11-24 20:52:52', 'BACHARI.pdf', NULL, NULL, NULL, NULL, '2024-11-24 20:53:23'),
(21, 11, 15, 500, '2024-11-24 21:22:31', 'BACHARI.pdf', NULL, NULL, NULL, NULL, '2024-11-24 21:22:44'),
(22, 10, 15, 2585, '2024-11-25 03:47:19', 'BACHARI.pdf', NULL, NULL, NULL, NULL, NULL),
(23, 12, 15, 1550025, '2024-11-25 03:48:44', 'BACHARI.pdf', NULL, NULL, NULL, NULL, '2024-11-25 03:49:25'),
(24, 14, 15, 500, '2024-11-25 03:55:16', 'BACHARI.pdf', 50, 'uploads/Image_350x233_ExposedPipes.webp', 'good', NULL, '2024-11-25 03:55:50'),
(25, 15, 15, 300000, '2024-11-25 23:53:13', 'BACHARI.pdf', 50, 'uploads/Image_350x233_ExposedPipes.webp', 'its all doing well', NULL, '2024-11-25 23:56:53'),
(26, 15, 15, 9000000, '2024-11-26 13:50:43', 'BACHARI.pdf', NULL, NULL, NULL, NULL, NULL),
(27, 16, 17, 450000, '2024-11-26 16:12:03', 'BACHARI.pdf', NULL, NULL, NULL, NULL, NULL),
(28, 16, 18, 400000, '2024-11-26 16:18:33', 'BACHARI.pdf', 25, 'uploads/warehouse-forklift-factory-manufacturing.jpg', 'all doing well', NULL, '2024-11-26 16:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `breakdown_details`
--

DROP TABLE IF EXISTS `breakdown_details`;
CREATE TABLE IF NOT EXISTS `breakdown_details` (
  `breakdown_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `company_id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `order_place_date` date NOT NULL,
  `deadline_date` date NOT NULL,
  `image_path` text NOT NULL,
  `description` text NOT NULL,
  `breakdown_status` varchar(10) NOT NULL,
  `location` varchar(500) NOT NULL,
  `estimate_budget` decimal(15,2) NOT NULL,
  `updated_ads` datetime DEFAULT NULL,
  `deleted_ads` datetime DEFAULT NULL,
  PRIMARY KEY (`breakdown_id`),
  KEY `category_id` (`category_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `breakdown_details`
--

INSERT INTO `breakdown_details` (`breakdown_id`, `category_id`, `company_id`, `title`, `order_place_date`, `deadline_date`, `image_path`, `description`, `breakdown_status`, `location`, `estimate_budget`, `updated_ads`, `deleted_ads`) VALUES
(9, 13, 31, 'saa', '2024-11-23', '2025-12-21', 'uploads/ceylon_solutions_logo.jpeg', 'fdsgd', 'completed', 'fdgd', 121.00, NULL, NULL),
(10, 2, 31, 'sdadas', '2024-11-23', '2025-12-21', 'uploads/global_horizons.jpeg', 'fdsgd', 'completed', 'fdgd', 14555.00, NULL, NULL),
(11, 11, 31, 'sad', '2024-11-23', '2025-12-25', 'uploads/global_horizons.jpeg', 'sacsa', 'completed', 'sca', 525.00, NULL, NULL),
(12, 14, 31, 'vxz', '2024-11-23', '2025-12-21', 'uploads/ceylon_solutions_logo.jpeg', 'ffa', 'completed', 'xzccx', 200244.00, NULL, NULL),
(13, 12, 31, 'sadsa', '2024-11-24', '2025-02-01', 'uploads/ceylon_solutions_logo.jpeg', 'saxs', 'available', 'sada', 9859.00, NULL, NULL),
(14, 12, 31, 'fdsf', '2024-11-24', '2025-05-21', 'uploads/ceylon_solutions_logo.jpeg', 'dasdas', 'completed', 'dsadasdas', 2165649.00, NULL, NULL),
(15, 2, 31, 'Installing and repairing', '2024-11-25', '2025-12-25', 'uploads/Image_350x233_ExposedPipes.webp', ' install and repair water supply lines, sewage systems, gas lines, and drainage systems.\r\n', 'completed', 'No. 42, Kandy Road Nugegoda Colombo District, Sri Lanka', 2000000.00, NULL, NULL),
(16, 35, 31, 'Relocate items within the warehouse or factory', '2024-11-26', '2025-02-01', 'uploads/warehouse-forklift-factory-manufacturing.jpg', 'Imagine a bustling warehouse or factory where various items are stored across different zones or racks. The process of relocating items involves moving products or materials from one designated area to another, often due to optimization needs, order fulfillment, or space management.\r\n\r\nStarting Point:\r\nWorkers start at the current storage location, identified by a specific rack, aisle, or zone number (e.g., \"Aisle 3, Rack B\"). The items to be relocated are scanned using handheld barcode scanners to ensure accurate tracking.\r\n\r\nPreparation:\r\nItems are checked for safety and condition before being securely placed onto handling equipment such as forklifts, pallet jacks, or conveyor belts.\r\n\r\nMovement:\r\nThe items are transported carefully across the warehouse floor, adhering to pathways marked for equipment traffic. Automated guided vehicles (AGVs) or conveyor systems might also be used for efficiency.\r\n\r\nDestination:\r\nUpon reaching the new location, workers verify the rack or shelf number (e.g., \"Zone D, Shelf 5\"). The items are rescanned and placed systematically, ensuring they align with updated inventory systems.\r\n\r\nSystem Update:\r\nFinally, the warehouse management system (WMS) is updated to reflect the new location, ensuring real-time accuracy for stock tracking and retrieval during future operations.', 'completed', 'warehouse kadawatha', 500000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

DROP TABLE IF EXISTS `category_details`;
CREATE TABLE IF NOT EXISTS `category_details` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  `category_details` varchar(1000) NOT NULL,
  `deleted_ads` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`category_id`, `category_name`, `category_details`, `deleted_ads`) VALUES
(1, 'Electricians', '', NULL),
(2, 'Plumbers', '', NULL),
(3, 'Carpenters', '', NULL),
(4, 'Welders and Metal Fabricators', '', NULL),
(5, 'Masons and Construction Workers', '', NULL),
(6, 'Painters and Decorators', '', NULL),
(7, 'Mechanics (Vehicle and Machinery)', '', NULL),
(8, 'Mechanical Engineers', '', NULL),
(9, 'Electrical Engineers', '', NULL),
(10, 'Civil Engineers', '', NULL),
(11, 'Structural Engineers', '', NULL),
(12, 'Industrial Machine Technicians', '', NULL),
(13, 'Quality Control Inspectors', '', NULL),
(14, 'CNC Machinists', '', NULL),
(15, 'Tool and Die Makers', '', NULL),
(16, 'Machine Operators', '', NULL),
(17, 'Textile Workers', '', NULL),
(18, 'Assembly Line Technicians', '', NULL),
(19, 'Software Developers', '', NULL),
(20, 'Network Engineers', '', NULL),
(21, 'System Administrators', '', NULL),
(22, 'IT Technicians', '', NULL),
(23, 'Cybersecurity Specialists', '', NULL),
(24, 'AC and Refrigerator Technicians', '', NULL),
(25, 'Elevator Maintenance Technicians', '', NULL),
(26, 'Appliance Repair Technicians', '', NULL),
(27, 'Machinery Maintenance Experts', '', NULL),
(28, 'Architects', '', NULL),
(29, 'Interior Designers', '', NULL),
(30, 'Landscape Designers', '', NULL),
(31, 'Draftsmen', '', NULL),
(32, 'Drivers (Heavy Vehicle and Light Vehicle)', '', NULL),
(33, 'Logistics Coordinators', '', NULL),
(34, 'Fleet Managers', '', NULL),
(35, 'Forklift Operators', '', NULL),
(36, 'Fire Safety Technicians', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
CREATE TABLE IF NOT EXISTS `company_details` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(1000) NOT NULL,
  `company_address` text NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_contact_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `company_description` text NOT NULL,
  `company_logo` varchar(1000) NOT NULL,
  `company_website` varchar(1000) NOT NULL,
  `login_password` varchar(250) NOT NULL,
  `update_ads` datetime DEFAULT NULL,
  `deleted_ads` datetime DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `unique_email` (`company_email`),
  UNIQUE KEY `company_contact_number` (`company_contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`company_id`, `company_name`, `company_address`, `company_email`, `company_contact_number`, `company_description`, `company_logo`, `company_website`, `login_password`, `update_ads`, `deleted_ads`) VALUES
(1, 'Ceylon Software Solutions', ' No. 45, Galle Road, Colombo 03, Sri Lanka', 'contact@ceylonsoft.com', '0771234567', 'Ceylon Software Solutions is a premier technology firm in Sri Lanka, providing innovative software development, IT consulting, and digital transformation services. Our team of experts is dedicated to delivering solutions that help businesses thrive in a fast-paced digital world.', 'ceylon_solutions_logo.jpeg', 'https://www.ceylonsoft.com', '', NULL, NULL),
(29, 'Hemas lanka', 'no.9,sapugaskanda.kelaniya.', 'contact@ceylonloft.com', '0771234566', 'xcv', 'global_horizons.jpeg', 'https://www.ceylonsoft.com', '$2y$10$Y.mzgm5noa7CoDjyZLD8AeW8x2XpVWNYZPSg/Z.wj5hcXtr9RdsIm', NULL, NULL),
(31, 'A&E (pvt) ltd', 'no.7b/1,ganewatta,Biyagama.', 'chari@gmail.com', '0769604647', 'gh', 'global_horizons.jpeg', 'kj,jk.com', '$2y$10$DsVCYqSUHfy4IswyjpeB2u6WCjSZRBiPNqh5tDv0jglA.UmNBE8hm', NULL, NULL),
(33, 'MAS Holdings', ' No. 85, high level road,nugegoda,Sri Lanka', 'b@gmail.com', '0771234565', 'sdadsa', 'global_horizons.jpeg', 'https://www.ceylonsoft.com', '$2y$10$SpmGKh7Biqbxm.YvwVKGUuNA6jiPdW8tDRKNcaiVYvu/sk70ZJEq2', NULL, NULL),
(36, 'NB holdings', ' No. 90, Mountlavania,Dehiwala, Sri Lanka', 'nb@gmail.com', '0771234585', 'we provide all kind of clothing', 'ceylon_solutions_logo.jpeg', 'https://www.nbholdings.com', '$2y$10$Kz05KbH1zOcnzq2R3fhHn.xfP4/xTCZHl4Mw1Veqc0bwVS.bjVvNe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `bidding_id` int NOT NULL,
  `order_confirmation_date` datetime NOT NULL,
  `order_complete_date` datetime NOT NULL,
  `man_hours` int NOT NULL,
  `company_rating` int NOT NULL,
  `company_review` text NOT NULL,
  `breakdown_pic` varchar(100) NOT NULL,
  `professionals_rating` int NOT NULL,
  `professionals_review` text NOT NULL,
  `deleted_ad` datetime DEFAULT NULL,
  `updated_ad` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `bidding_id` (`bidding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `bidding_id`, `order_confirmation_date`, `order_complete_date`, `man_hours`, `company_rating`, `company_review`, `breakdown_pic`, `professionals_rating`, `professionals_review`, `deleted_ad`, `updated_ad`) VALUES
(1, 20, '2024-11-24 20:53:23', '2024-11-25 03:19:17', 0, 5, 'good', '', 0, '', NULL, NULL),
(2, 21, '2024-11-24 21:22:44', '2024-11-25 03:51:55', 0, 4, 'gggg', '', 0, '', NULL, NULL),
(3, 19, '2024-11-25 03:41:11', '2024-11-25 03:41:39', 0, 4, 'gooooood', '', 0, '', NULL, NULL),
(5, 23, '2024-11-25 03:49:25', '2024-11-25 03:50:28', 0, 2, 'not good', '', 0, '', NULL, NULL),
(7, 25, '2024-11-25 23:56:54', '2024-11-25 23:59:03', 0, 4, 'good job', '', 0, '', NULL, NULL),
(8, 28, '2024-11-26 16:55:17', '2024-11-26 22:25:13', 0, 4, 'gooood as ggg', '', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professionals_details`
--

DROP TABLE IF EXISTS `professionals_details`;
CREATE TABLE IF NOT EXISTS `professionals_details` (
  `professionals_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `professionals_name` varchar(50) NOT NULL,
  `professionals_email` varchar(50) NOT NULL,
  `professionals_password` varchar(250) NOT NULL,
  `professionals_profile_pic` varchar(50) NOT NULL,
  `professionals_mobile` bigint NOT NULL,
  `professionals_experiene` text NOT NULL,
  `professionals_cv` varchar(50) NOT NULL,
  `professionals_nic` bigint NOT NULL,
  `professionals_address` text NOT NULL,
  `professionals_rating` int NOT NULL,
  `deleted_ad` datetime DEFAULT NULL,
  `updated_ad` datetime DEFAULT NULL,
  PRIMARY KEY (`professionals_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `professionals_details`
--

INSERT INTO `professionals_details` (`professionals_id`, `category_id`, `professionals_name`, `professionals_email`, `professionals_password`, `professionals_profile_pic`, `professionals_mobile`, `professionals_experiene`, `professionals_cv`, `professionals_nic`, `professionals_address`, `professionals_rating`, `deleted_ad`, `updated_ad`) VALUES
(15, 2, 'charith sulakshana', 'chari@gmail.com', '$2y$10$afsFvrCj5rGS82i5d.wiLetf8.9CAj2/IPuPC7eDpw4nYhTcuu6bC', 'global_horizons.jpeg', 767114385, 'Experience: 8 Years\n\nKey Skills and Expertise:\n\nInstallation, maintenance, and repair of residential and commercial plumbing systems.\nProficient in reading and interpreting blueprints and technical diagrams.\nExpertise in pipe fitting, soldering, and welding for various pipe materials (PVC, copper, steel).\nTroubleshooting and resolving issues like leaks, clogs, and water pressure problems.\nKnowledgeable in installing and repairing water heaters, sump pumps, and garbage disposals.\nCompliance with plumbing codes and safety standards.', 'ceylon_solutions_logo.jpeg', 200302400257, ' No. 45, Galle Road, Colombo 03, Sri Lanka', 5, NULL, NULL),
(16, 4, 'DC Engineers', 'dc@gmail.com', '$2y$10$LoRLCip.oK58Zy8WiZaI3O1FK9lS1MMh0dJYYbRwhdYu3DuubDQLq', 'uploads/profile_pics/carrer.png', 767114383, 'Key Skills and Expertise\r\nProficient in various welding techniques: MIG, TIG, Stick, and Arc Welding.\r\nSkilled in reading and interpreting blueprints, schematics, and engineering drawings.\r\nExpertise in cutting, bending, and shaping metals like steel, aluminum, and stainless steel.\r\nExperience with fabrication processes including grinding, drilling, and plasma cutting.\r\nKnowledgeable in welding codes, safety standards, and quality assurance practices.\r\nStrong troubleshooting and problem-solving skills for metal structure repairs.\r\nWork Experience\r\nSenior Welder and Fabricator\r\nSteelTech Industries, Colombo, Sri Lanka\r\nJanuary 2016 – Present\r\n\r\nFabricated custom metal structures for industrial and commercial applications.\r\nLed welding teams in constructing steel frames, pipelines, and heavy machinery components.\r\nConducted on-site welding repairs for damaged equipment, reducing downtime by 30%.\r\nEnsured all products met stringent quality control standards and project deadlines.\r\nTrained and mentored junior welders in advanced techniques and safety protocols.\r\nWelder and Fabrication Technician\r\nPrecision Metal Works, Gampaha, Sri Lanka\r\nMarch 2012 – December 2015\r\n\r\nAssembled and welded components for automotive, agricultural, and construction industries.\r\nUtilized CNC cutting tools to create precision parts for metal assemblies.\r\nImproved production efficiency by 20% through optimized fabrication processes.\r\nRegularly inspected and maintained welding equipment for optimal performance.\r\nNotable Projects\r\nDesigned and fabricated custom metal railings and staircases for a luxury hotel in Negombo.\r\nCompleted pipeline welding for a water distribution system in Hambantota.\r\nPlayed a key role in fabricating steel trusses for a large-scale factory in Colombo.\r\nCertifications\r\nNVQ Level 4 Certification in Welding and Metal Fabrication, Sri Lanka.\r\nAWS (American Welding Society) Certified Welder – MIG/TIG/Stick.\r\nOSHA Safety Certification for Metal Fabrication.\r\n', 'carrer.png', 200302400258, '12/c , colombo ,Srilanka.', 4, NULL, NULL),
(17, 35, 'Twins forklifters', 'twins@gmail.com', '$2y$10$1Pik0hgsMvELrL8IJTzSEeal3rfx9o30enf7MQk1L5XHiwZcctejq', 'uploads/profile_pics/TWINS_LOGO.jpg', 767114383, 'Forklift Operator\r\nXYZ Logistics (Pvt) Ltd – Colombo, Sri Lanka\r\n[Dates of Employment]\r\n\r\nOperated forklifts to load and unload goods, ensuring safe transport across the warehouse and storage areas.\r\nWorked with team members to meet deadlines for cargo handling, contributing to smooth operations at the Port of Colombo.\r\nMaintained compliance with local safety regulations and company policies, including handling hazardous materials safely.\r\nConducted routine pre-operational checks on forklifts to ensure safety and minimize downtime.\r\nAccurately documented inventory movements and updated stock records in coordination with warehouse staff.\r\nAssisted in managing imports, exports, and local deliveries by ensuring proper stacking and securing of goods.\r\nSupported warehouse operations during peak seasons, achieving a high accuracy rate in inventory management.', 'uploads/cvs/TWINS_LOGO.jpg', 200302400258, '12/c , Balangoda ,Srilanka.', 3, NULL, NULL),
(18, 35, 'suneera sumanga', 'suneera@gmail.com', '$2y$10$jGtn8/cjMt.DGfZtkHy.Keh4.2NGj/3z42T4et9IkzG3QK/4RzwX2', 'uploads/profile_pics/images.jpeg', 767156383, 'I am Suneera Sumanga, a skilled forklift operator with [X years] of experience in warehouse and factory environments. I specialize in safely relocating materials, loading and unloading goods, and optimizing storage within high-paced operations.\r\n\r\nMy expertise includes:\r\n\r\nOperating forklifts with precision to handle pallets, crates, and other materials.\r\nEnsuring compliance with workplace safety standards and equipment guidelines.\r\nConducting daily forklift maintenance checks for safe and reliable performance.\r\nCoordinating with team members to meet deadlines and ensure efficient workflow.\r\nI take pride in my ability to work under pressure, maintain accuracy, and contribute to seamless warehouse operations. My goal is to consistently deliver efficient and reliable service in every task I undertake.', 'uploads/cvs/images.jpeg', 200356400257, ' No.80, kegalle, Sri Lanka', 0, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidding_details`
--
ALTER TABLE `bidding_details`
  ADD CONSTRAINT `bidding_details_ibfk_1` FOREIGN KEY (`breakdown_id`) REFERENCES `breakdown_details` (`breakdown_id`),
  ADD CONSTRAINT `bidding_details_ibfk_2` FOREIGN KEY (`professionals_id`) REFERENCES `professionals_details` (`professionals_id`);

--
-- Constraints for table `breakdown_details`
--
ALTER TABLE `breakdown_details`
  ADD CONSTRAINT `breakdown_details_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_details` (`category_id`),
  ADD CONSTRAINT `breakdown_details_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`company_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`bidding_id`) REFERENCES `bidding_details` (`bidding_id`);

--
-- Constraints for table `professionals_details`
--
ALTER TABLE `professionals_details`
  ADD CONSTRAINT `professionals_details_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_details` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
