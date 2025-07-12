-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 12 Jul 2025 pada 15.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakar_diabetes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `id` int(11) NOT NULL,
  `kode_penyakit` varchar(10) DEFAULT NULL,
  `kode_gejala` varchar(10) DEFAULT NULL,
  `mb` float DEFAULT NULL,
  `md` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`id`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(154, 'P1', 'G01', 0.9, 0.1),
(155, 'P1', 'G02', 0.8, 0.2),
(156, 'P1', 'G03', 0.9, 0.1),
(157, 'P1', 'G04', 0.9, 0.1),
(158, 'P1', 'G05', 0.7, 0.2),
(159, 'P1', 'G06', 0.7, 0.2),
(160, 'P1', 'G07', 0.6, 0.3),
(161, 'P1', 'G08', 0.5, 0.4),
(162, 'P1', 'G09', 0.3, 0.4),
(163, 'P1', 'G10', 0.8, 0.2),
(164, 'P1', 'G11', 0.7, 0.2),
(165, 'P1', 'G12', 0.5, 0.3),
(166, 'P1', 'G13', 0.7, 0.2),
(167, 'P1', 'G14', 0.5, 0.3),
(168, 'P2', 'G01', 0.8, 0.2),
(169, 'P2', 'G02', 0.8, 0.2),
(170, 'P2', 'G03', 0.9, 0.1),
(171, 'P2', 'G04', 0.6, 0.3),
(172, 'P2', 'G05', 0.6, 0.3),
(173, 'P2', 'G06', 0.8, 0.2),
(174, 'P2', 'G07', 0.8, 0.2),
(175, 'P2', 'G08', 0.7, 0.2),
(176, 'P2', 'G09', 0.4, 0.4),
(177, 'P2', 'G10', 0.9, 0.1),
(178, 'P2', 'G11', 0.7, 0.2),
(179, 'P2', 'G15', 0.6, 0.3),
(180, 'P2', 'G16', 0.5, 0.3),
(181, 'P2', 'G17', 0.6, 0.3),
(182, 'P2', 'G18', 0.6, 0.3),
(183, 'P2', 'G19', 0.5, 0.3),
(184, 'P2', 'G20', 0.7, 0.2),
(185, 'P2', 'G21', 0.6, 0.3),
(186, 'P2', 'G22', 0.4, 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode` varchar(10) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode`, `nama_gejala`) VALUES
('G01', 'Sering merasa haus'),
('G02', 'Sering lapar'),
('G03', 'Sering buang air kecil'),
('G04', 'Berat badan menurun tanpa sebab jelas'),
('G05', 'Nafsu makan meningkat'),
('G06', 'Kesemutan di kaki atau tangan'),
('G07', 'Gangguan penglihatan'),
('G08', 'Gatal-gatal pada kulit'),
('G09', 'Keputihan'),
('G10', 'Luka yang sulit sembuh'),
('G11', 'Muncul bisul'),
('G12', 'Mudah mengantuk'),
('G13', 'Sering mengalami infeksi'),
('G14', 'Tubuh terasa pegal'),
('G15', 'Kerusakan gusi'),
('G16', 'Mual'),
('G17', 'Gangguan ereksi (pada pria)'),
('G18', 'Masalah pendengaran'),
('G19', 'Sariawan berulang'),
('G20', 'Nyeri di kaki atau tangan'),
('G21', 'Mulut terasa kering'),
('G22', 'Nyeri di perut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode` varchar(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode`, `nama_penyakit`) VALUES
('P1', 'Diabetes Tipe 1'),
('P2', 'Diabetes Tipe 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `hasil_diagnosis` varchar(100) DEFAULT NULL,
  `nilai_cf` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD CONSTRAINT `basis_pengetahuan_ibfk_1` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode`),
  ADD CONSTRAINT `basis_pengetahuan_ibfk_2` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
