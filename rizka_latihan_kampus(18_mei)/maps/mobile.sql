-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 12:12 PM
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
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `nama_kampus` varchar(255) NOT NULL,
  `lokasi_kampus` varchar(255) NOT NULL,
  `gambar_kampus` varchar(255) NOT NULL,
  `lat_kampus` varchar(255) NOT NULL,
  `long_kampus` varchar(255) NOT NULL,
  `profile_kampus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `nama_kampus`, `lokasi_kampus`, `gambar_kampus`, `lat_kampus`, `long_kampus`, `profile_kampus`) VALUES
(1, 'Politeknik Negeri Padang', 'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164', 'pnp.JPG', '-0.9142997123335992', '100.46621536985977\r\n', 'kampus pnp'),
(2, 'Universitas Andalas', 'Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25175', 'unand.jpg', '-0.9129704762664436', '100.45824322804839', 'kampus unand'),
(3, 'Universitas Negeri Padang', 'no, Jl. Prof. Dr. Hamka No.1, Air Tawar Bar., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173', 'unp.jpg', '-0.8956051862969532', '100.35128468146115', 'kampus unp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
