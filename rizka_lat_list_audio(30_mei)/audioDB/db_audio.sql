-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2024 pada 05.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_audio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `file_audio` varchar(255) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `audio`
--

INSERT INTO `audio` (`id`, `judul`, `file_audio`, `gambar`) VALUES
(1, 'Shape Of You', 'audio1.mp3', 'lagu1.jpeg'),
(2, 'Here Comes The Sun', 'audio2.mp3', 'lagu2.jpeg'),
(3, 'You Are In Love', 'audio3.mp3', 'lagu3.png'),
(4, 'Places We Won\'t Walk', 'audio4.mp3', 'lagu4.jpg'),
(5, 'Home', 'audio5.mp3', 'lagu5.jpeg'),
(6, 'Pamit', 'audio6.mp3', 'lagu6.jpeg'),
(7, 'An Art Gallery Could Never Be As Unique As You', 'audio7.mp3', 'lagu7.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
