-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2024 pada 12.00
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
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `nama_kabupaten` varchar(255) NOT NULL,
  `provinsi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `nama_kabupaten`, `provinsi_id`) VALUES
(1, 'Kabupaten Simeulue', 1),
(3, 'Kabupaten Aceh Singkil', 1),
(4, 'Kabupaten Pidie', 1),
(6, 'Kota Banda Aceh', 1),
(7, 'Kota Sabang', 1),
(8, 'Kota Lhokseumawe', 1),
(9, 'Kabupaten Asahan', 2),
(10, 'Kabupaten Batu Bara', 2),
(11, 'Kabupaten Deli Serdang', 2),
(12, 'Kabupaten Langkat', 2),
(13, 'Kota Medan', 2),
(14, 'Kota Binjai', 2),
(15, 'Kabupaten Banyuasin', 3),
(16, 'Kabupaten Lahat', 3),
(17, 'Kota Palembang', 3),
(18, 'Kabupaten Solok', 4),
(19, 'Kota Padang', 4),
(20, 'Kota Bukittinggi', 4),
(21, 'Kota Bengkulu', 5),
(22, 'Kabupaten Mukomuko', 5),
(23, 'Kabupaten Rejang Lebong', 5),
(24, 'Kabupaten Bengkalis', 6),
(25, 'Kabupaten Kepulauan Meranti', 6),
(26, 'Kabupaten Natuna', 7),
(27, 'Kota Batam', 7),
(28, 'Kota Jambi', 8),
(29, 'Kabupaten Tanjabtim', 8),
(30, 'Kabupaten Sarolangun', 8),
(31, 'Kabupaten Merangin', 8),
(32, 'Kota Sungai Penuh', 8),
(33, 'Kota Jakarta Pusat', 17),
(34, 'Kota Jakarta Selatan', 17),
(35, 'Kota Jakarta Barat', 17),
(36, 'Kota Jakarta Timur', 17),
(37, 'Kota Jakarta Utara', 17),
(38, 'Kabupaten Administrasi Kepulauan Seribu', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id` int(11) NOT NULL,
  `nama_kamar` varchar(255) NOT NULL,
  `kamar_tersedia` varchar(255) NOT NULL,
  `kamar_kosong` varchar(255) NOT NULL,
  `jumlah_antrian` varchar(255) NOT NULL,
  `rumahsakit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id`, `nama_kamar`, `kamar_tersedia`, `kamar_kosong`, `jumlah_antrian`, `rumahsakit_id`) VALUES
(1, 'IGD Khusus COVID', '5', '2', '7', 1),
(2, 'Kamar VVIP 1', '9', '5', '4', 1),
(3, 'VIP 3', '3', '1', '4', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Selatan'),
(4, 'Sumatera Barat'),
(5, 'Bengkulu'),
(6, 'Riau'),
(7, 'Kepulauan Riau'),
(8, 'Jambi'),
(9, 'Lampung'),
(10, 'Bangka Belitung'),
(11, 'Kalimantan Barat'),
(12, 'Kalimantan Timur'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Utara'),
(16, 'Banten'),
(17, 'DKI Jakarta'),
(18, 'Jawa Barat'),
(19, 'Jawa Tengah'),
(20, 'Daerah Istimewa Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id` int(11) NOT NULL,
  `nama_rs` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL,
  `kabupaten_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id`, `nama_rs`, `deskripsi`, `gambar`, `alamat`, `no_telp`, `lat`, `long`, `kabupaten_id`) VALUES
(1, 'RSUD Dr. Zainoel Abidinn', 'Rumah Sakit Pemerintah', 'rs1.jpg', 'Jl. Tgk. H.M. Daud Beureueh No.108 B. Aceh', '(0651) 34565', '5.564033048682833', '95.3376305153414', 6),
(2, 'RSUD Sabang', 'Rumah Sakit Pemerintah', 'rs2.jpg', 'Jl. Teuku Umar - Sabang Telp/Fax. 0652 - 22156', '(0643) 3421', '5.89570715811284', '95.31582941534138', 6),
(3, 'RSUD dr. Zubir Mahmud', 'Rumah Sakit Umum', 'rs3.jpg', 'Jl. Medan B. Aceh, Seuneubok Bar., Kec. Idi Tim., Kabupaten Aceh Timur, Aceh', '(0646) 21139', '4.924762957275103', '97.7970630519189', 6),
(4, 'RS Abdul Manap', 'RSU', 'rs4.jpeg', 'Jl. Sk. Rd. Syahbudin, Mayang Mangurai, Alam Barajo, Kota Jambi, Jambi 36129', '(0741) 5910190', '-1.6394002227262867', '103.57952095397584', 28);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kabupaten` (`provinsi_id`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kamar` (`rumahsakit_id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rs` (`kabupaten_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `fk_kabupaten` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `fk_kamar` FOREIGN KEY (`rumahsakit_id`) REFERENCES `rumah_sakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD CONSTRAINT `fk_rs` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupaten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
