-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 09.34
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaan_pc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pc`
--

CREATE TABLE `pc` (
  `kd_pc` varchar(7) NOT NULL,
  `nm_pc` varchar(20) NOT NULL,
  `spek` varchar(20) NOT NULL,
  `harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pc`
--

INSERT INTO `pc` (`kd_pc`, `nm_pc`, `spek`, `harga`) VALUES
('PC001', 'Dell Inspiron', 'Intel Core i5, 8GB R', '20000'),
('PC002', 'HP Elitebook', 'Intel Core i7, 16GB ', '25000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `kd_kembali` varchar(7) NOT NULL,
  `kd_sewa` varchar(7) NOT NULL,
  `kd_pc` varchar(7) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`kd_kembali`, `kd_sewa`, `kd_pc`, `tgl_kembali`, `denda`) VALUES
('PB001', 'PN001', 'PC001', '2023-01-07', '0'),
('PB002', 'PN002', 'PC002', '2023-01-06', '5000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `kd_sewa` varchar(7) NOT NULL,
  `kd_pc` varchar(7) NOT NULL,
  `nm_pelanggan` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `durasi_sewa` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`kd_sewa`, `kd_pc`, `nm_pelanggan`, `alamat`, `no_telp`, `tgl_sewa`, `tgl_kembali`, `durasi_sewa`, `total`) VALUES
('PN001', 'PC001', 'Aidha Nur Rahimmah', 'Jl. Pintu Air', '08971453929', '2023-01-02', '2023-01-07', '5 hari', '100000'),
('PN002', 'PC002', 'Bayu Setiawan', 'Jl. Teratai No 55', '0852518389878', '2023-01-02', '2023-01-05', '3 hari', '75000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`kd_pc`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`kd_kembali`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`kd_sewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
