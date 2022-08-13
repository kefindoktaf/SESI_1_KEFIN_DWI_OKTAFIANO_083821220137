-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2022 pada 05.41
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `public.artis`
--

CREATE TABLE `public.artis` (
  `kd_artis` varchar(100) NOT NULL,
  `nm_artis` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `bayaran` int(100) NOT NULL,
  `award` int(11) NOT NULL,
  `neagara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `public.artis`
--

INSERT INTO `public.artis` (`kd_artis`, `nm_artis`, `jk`, `bayaran`, `award`, `neagara`) VALUES
('A001', 'ROBERT DOWNEY JR', 'PRIA', 0, 2, 'AS'),
('A002', 'ANGELINA JOLIE', 'WANITA', 700000000, 1, 'AS'),
('A003', 'JACKIE CHAN', 'PRIA', 200000000, 7, 'HK'),
('A004', 'JOE TASLIM', 'PRIA', 350000000, 1, 'ID'),
('A005', 'CHELSEA ISLAN', 'WANITA', 300000000, 0, 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `public.film`
--

CREATE TABLE `public.film` (
  `kd_film` varchar(10) NOT NULL,
  `nm_film` varchar(55) NOT NULL,
  `genre` varchar(55) NOT NULL,
  `artis` varchar(55) NOT NULL,
  `produser` varchar(55) NOT NULL,
  `pendapatan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `public.film`
--

INSERT INTO `public.film` (`kd_film`, `nm_film`, `genre`, `artis`, `produser`, `pendapatan`, `nominal`) VALUES
('F001', 'IRON MAN', 'G001', 'A001', 'PD01', 2000000000, 3),
('F002', 'IRON MAN 2', 'G001', 'A001', 'PD01', 1000000000, 2),
('F003', 'IRON MAN 3', 'G001', 'A001', 'PD01', 1200000000, 0),
('F004', 'AVENGER : CIVIL WAR', 'G001', 'A001', 'PD01', 2000000000, 1),
('F005', 'SPIDERMAN HOME COMING', 'G001', 'A001', 'PD01', 1300000000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `public.genre`
--

CREATE TABLE `public.genre` (
  `kd_genre` varchar(50) NOT NULL,
  `nm_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `public.genre`
--

INSERT INTO `public.genre` (`kd_genre`, `nm_genre`) VALUES
('G001', 'ACTION'),
('G002', 'HORROR'),
('G003', 'COMEDY'),
('G004', 'DRAMA'),
('G005', 'THRILLER'),
('G006', 'FICTION');

-- --------------------------------------------------------

--
-- Struktur dari tabel `public.kota`
--

CREATE TABLE `public.kota` (
  `id` int(10) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `id_propinsi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `public.kota`
--

INSERT INTO `public.kota` (`id`, `nama`, `id_propinsi`) VALUES
(1, 'jakarta', 1),
(2, 'bandung', 2),
(3, 'sumedang', 3),
(4, 'makasar', 4),
(5, 'surabaya', 5),
(6, 'medan', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `public.negara`
--

CREATE TABLE `public.negara` (
  `kd_negara` varchar(100) NOT NULL,
  `nm_negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `public.negara`
--

INSERT INTO `public.negara` (`kd_negara`, `nm_negara`) VALUES
('AS', 'AMERIKA SERIKAT'),
('HK', 'HONGKONG'),
('ID', 'INDONESIA'),
('IN', 'INDIA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `public.artis`
--
ALTER TABLE `public.artis`
  ADD PRIMARY KEY (`kd_artis`);

--
-- Indeks untuk tabel `public.film`
--
ALTER TABLE `public.film`
  ADD PRIMARY KEY (`kd_film`);

--
-- Indeks untuk tabel `public.genre`
--
ALTER TABLE `public.genre`
  ADD PRIMARY KEY (`kd_genre`);

--
-- Indeks untuk tabel `public.negara`
--
ALTER TABLE `public.negara`
  ADD PRIMARY KEY (`kd_negara`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
