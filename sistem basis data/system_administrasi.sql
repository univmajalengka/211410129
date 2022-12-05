-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 05:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system administrasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `#id_dosen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `gol_darah` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `univ_awal` varchar(30) NOT NULL,
  `studi_lanjut` varchar(30) NOT NULL,
  `jab_fungsional` varchar(30) NOT NULL,
  `bid_ilmu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kp/ta`
--

CREATE TABLE `kp/ta` (
  `#id_KP/TA` int(11) NOT NULL,
  `npm` int(11) NOT NULL,
  `judul_KP/TA` varchar(30) NOT NULL,
  `pembimbing` varchar(30) NOT NULL,
  `penguji` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `#npm` int(11) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `gol_darah` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `thn_masuk` int(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `semester` int(5) NOT NULL,
  `dos_wali` varchar(30) NOT NULL,
  `prog_studi` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `asl_sklh` varchar(30) NOT NULL,
  `ijasah` varchar(30) NOT NULL,
  `nama_sklh` varchar(30) NOT NULL,
  `alamat_sklh` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `alamat_ortu` varchar(30) NOT NULL,
  `no_hp_ortu` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `#id_matakuliah` int(11) NOT NULL,
  `matakuliah(ind)` varchar(30) NOT NULL,
  `matakuliah(eng)` varchar(30) NOT NULL,
  `jumlah_sks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `#id_nilai` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `dosen` varchar(30) NOT NULL,
  `kode` int(11) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `#no_surat` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `perihal` varchar(30) NOT NULL,
  `lampiran` varchar(30) NOT NULL,
  `informasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`#id_dosen`);

--
-- Indexes for table `kp/ta`
--
ALTER TABLE `kp/ta`
  ADD PRIMARY KEY (`#id_KP/TA`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`#npm`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`#id_matakuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`#id_nilai`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`#no_surat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`#id_dosen`) REFERENCES `kp/ta` (`#id_KP/TA`);

--
-- Constraints for table `kp/ta`
--
ALTER TABLE `kp/ta`
  ADD CONSTRAINT `kp/ta_ibfk_1` FOREIGN KEY (`#id_KP/TA`) REFERENCES `nilai` (`#id_nilai`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`#npm`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`#id_matakuliah`) REFERENCES `surat` (`#no_surat`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`#id_nilai`) REFERENCES `mahasiswa` (`#npm`);

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`#no_surat`) REFERENCES `dosen` (`#id_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
