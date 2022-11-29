-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 07:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bynance`
--

-- --------------------------------------------------------

--
-- Table structure for table `airdrop`
--

CREATE TABLE `airdrop` (
  `Airdrop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airdrop`
--

INSERT INTO `airdrop` (`Airdrop`) VALUES
('http://localhost:5000/static/images/Airdrop/airdrop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coinlist`
--

CREATE TABLE `coinlist` (
  `coinid` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `coinimg` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coinlist`
--

INSERT INTO `coinlist` (`coinid`, `symbol`, `coinimg`) VALUES
(786501, 'BTCUSDT', 'http://localhost:5000/static/images/coinimage/btc.png'),
(786502, 'ETHUSDT', 'http://localhost:5000/static/images/coinimage/eth.png'),
(786503, 'DOGEUSDT', 'http://localhost:5000/static/images/coinimage/doge.png'),
(786504, 'LUNAUSDT', 'http://localhost:5000/static/images/coinimage/luna.png'),
(786505, 'XRPUSDT', 'http://localhost:5000/static/images/coinimage/xrp.png'),
(786506, 'ADAUSDT', 'http://localhost:5000/static/images/coinimage/ada.png'),
(786507, 'SOLUSDT', 'http://localhost:5000/static/images/coinimage/sol.png'),
(786508, 'LTCUSDT', 'http://localhost:5000/static/images/coinimage/ltc.png'),
(786509, 'BNBUSDT', 'http://localhost:5000/static/images/coinimage/BNB.png'),
(786511, 'BTCBUSD', 'http://localhost:5000/static/images/coinimage/btc.png');

-- --------------------------------------------------------

--
-- Table structure for table `emailverification`
--

CREATE TABLE `emailverification` (
  `UserId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `vcode` int(11) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailverification`
--

INSERT INTO `emailverification` (`UserId`, `email`, `vcode`, `createddate`) VALUES
(46, 'azharclasses813@gmail.com', 147174, '2022-11-28 20:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `UserId` varchar(55) NOT NULL,
  `quantity` float NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(55) NOT NULL,
  `type` varchar(55) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`UserId`, `quantity`, `amount`, `currency`, `type`, `dt`) VALUES
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 5.06427, 1556, 'danny', 'credit', '2022-11-26 22:50:23'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 11.9152, 1556, 'sol', 'credit', '2022-11-26 22:56:45'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 16.9281, 1556, 'sol', 'credit', '2022-11-26 22:57:08'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1.41388, 1556, 'bty', 'credit', '2022-11-26 22:57:26'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 8.9126, 1556, 'btc', 'credit', '2022-11-26 23:20:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 48093.5, 81.61, 'usdt', 'debit', '2022-11-26 23:23:36'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 5.9126, 1556, 'btc', 'credit', '2022-11-26 23:30:49'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 112.731, 81.61, 'usdt', 'debit', '2022-11-26 23:31:38'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0321337, 1556, 'eth', 'credit', '2022-11-28 02:03:47'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0321337, 1556, 'eth', 'credit', '2022-11-28 02:20:00'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00771208, 1556, 'eth', 'credit', '2022-11-28 03:04:28'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.147041, 81.61, 'usdt', 'debit', '2022-11-28 03:05:14'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0147815, 1556, 'eth', 'credit', '2022-11-28 14:23:44'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.153599, 1556, 'eth', 'credit', '2022-11-28 14:24:12'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.153599, 1556, 'eth', 'credit', '2022-11-28 14:26:48'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00771208, 1556, 'eth', 'credit', '2022-11-28 14:28:07'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0134961, 1556, 'eth', 'credit', '2022-11-28 14:28:34'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.257321, 81.61, 'usdt', 'debit', '2022-11-28 14:28:56'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0134961, 1556, 'eth', 'credit', '2022-11-28 16:12:21'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0218509, 1556, 'eth', 'credit', '2022-11-28 21:31:03'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.218509, 1556, 'eth', 'credit', '2022-11-28 21:33:08'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.359897, 1556, 'eth', 'credit', '2022-11-28 21:33:39'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1.47815, 1556, 'eth', 'credit', '2022-11-28 21:35:19'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 28.1828, 81.61, 'usdt', 'debit', '2022-11-28 21:36:03'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0289203, 1556, 'eth', 'credit', '2022-11-28 21:50:32'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0289203, 1556, 'eth', 'credit', '2022-11-28 21:51:57'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.955765, 81.61, 'usdt', 'debit', '2022-11-28 21:52:17'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.955765, 81.61, 'usdt', 'debit', '2022-11-28 21:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `userid` varchar(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `referral` varchar(45) DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `Role` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `userid`, `Name`, `date`, `email`, `Phone`, `password`, `referral`, `Active`, `Role`, `verified`) VALUES
(92, '64e3b27c-a532-4b3e-9065-3d9e73140a10', 'danish', '2022-11-13 23:39:15', 'khandanish26744@gmail.com', NULL, '$2b$10$evFUl0gluF.1jzirD4RVsOM..ATvvqB5kfIK5vxI2BNYx0fyBOT6a', NULL, 1, 0, 1),
(93, '329a6ffe-4b75-4522-9e26-5652b3cee8a6', 'fatima', '2022-11-14 00:47:26', 'hello@gmail.com', NULL, '$2b$10$HO0PjVQxzt0ABybtxjlMJ.9RyXZtRC2gC.r0.NIshAzXE3.EPmq1.', NULL, 0, 0, 0),
(98, 'bd108dab-bb83-405c-95e6-6623f73059a9', 'lect tech', '2022-11-26 20:30:24', 'lencetech@gmail.com', NULL, '$2b$10$Y5z2dNG.pKRMrf7SaB58A.NDjN21oe47RDfnfe.kWI7Br.KjBJff2', NULL, 1, 0, 1),
(105, '46f67d7e-9aa2-4f0c-9c8c-b548b187917e', 'azhar', '2022-11-28 20:54:34', 'azharclasses813@gmail.com', NULL, '$2b$10$SrlFKaLAJGQpZQO6B3IY3eP6feBKNfbgxLJJzW1AtRmCZar5gaa2i', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `UserId` varchar(55) NOT NULL,
  `quantity` float NOT NULL,
  `currency` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`UserId`, `quantity`, `currency`) VALUES
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 31.5954, 'usdt'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50.9653, 'eth'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'btc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'doge'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'sol'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'bnb'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'ltc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'mnc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'bhu'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'danny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'anny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'nny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 50, 'bty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coinlist`
--
ALTER TABLE `coinlist`
  ADD PRIMARY KEY (`coinid`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referral` (`referral`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD KEY `userid` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coinlist`
--
ALTER TABLE `coinlist`
  MODIFY `coinid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786512;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `userid` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
