-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2024 pada 07.23
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
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `nama_level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(150) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(11) NOT NULL,
  `status_masakan` varchar(150) NOT NULL,
  `gambar_masakan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `nama_masakan`, `harga`, `stok`, `status_masakan`, `gambar_masakan`) VALUES
(21, 'Es Teh Biasa', '3000', 50, 'tersedia', 'Es Teh Biasa.jpg'),
(22, 'Es Teh Jumbo', '5000', 50, 'tersedia', 'Es Teh Jumbo.jpg'),
(23, 'Kopi Hitam', '4000', 50, 'tersedia', 'Kopi Hitam.jpg'),
(24, 'Kopi Susu', '5000', 50, 'tersedia', 'Kopi Susu.jpg'),
(25, 'Kopi Ijo', '5000', 50, 'tersedia', 'Kopi Ijo.jfif'),
(26, 'Kopi Ijo Susu', '6000', 50, 'tersedia', 'Kopi Ijo Susu.jpg'),
(27, 'Torabika Moka', '5000', 50, 'tersedia', 'Torabika Moka.jpg'),
(28, 'Torabika Susu', '5000', 50, 'tersedia', 'Torabika Susu.jfif'),
(29, 'Torabika Cappucino', '5000', 50, 'tersedia', 'Torabika Cappucino.jpg'),
(30, 'Kapal Api', '5000', 50, 'tersedia', 'Kapal Api.jpg'),
(31, 'Gooday Freeze', '6000', 50, 'tersedia', 'Gooday Freeze.jfif'),
(32, 'Gooday Cappucino', '6000', 50, 'tersedia', 'Gooday Cappucino.jpg'),
(33, 'White Coffe', '5000', 50, 'tersedia', 'White Coffe.jfif'),
(34, 'STMJ', '5000', 50, 'tersedia', 'STMJ.jpg'),
(35, 'Susu Jahe', '5000', 50, 'tersedia', 'Susu Jahe.jpg'),
(36, 'Drink Beng-beng', '6000', 50, 'tersedia', 'Drink Beng-beng.jfif'),
(37, 'Hilo', '5000', 50, 'tersedia', 'Hilo.jfif'),
(38, 'Susu Putih', '5000', 50, 'tersedia', 'Susu Putih.png'),
(39, 'Chocolatos', '6000', 50, 'tersedia', 'Chocolatos.jfif'),
(40, 'Extrajos', '5000', 50, 'tersedia', 'Extrajos.jfif'),
(41, 'Joshua Kecil', '6000', 50, 'tersedia', 'Joshua Kecil.jpg'),
(42, 'Joshua Jumbo', '9000', 50, 'tersedia', 'Joshua Jumbo.jpg'),
(43, 'Kukubima', '5000', 50, 'tersedia', 'Kukubima.jfif'),
(44, 'Kukubima Susu', '6000', 50, 'tersedia', 'Kukubima Susu.jpg'),
(45, 'Kukubima Susu Jumbo', '9000', 50, 'tersedia', 'Kukubima Susu Jumbo.jpg'),
(46, 'Milo ', '6000', 50, 'tersedia', 'Milo .jfif'),
(47, 'Teh Tarik', '6000', 50, 'tersedia', 'Teh Tarik.jfif'),
(48, 'Mega Mendung', '13000', 50, 'tersedia', 'Mega Mendung.jpeg'),
(49, 'Nutrisari', '5000', 50, 'tersedia', 'Nutrisari.jpg'),
(50, 'Pop Ice', '5000', 50, 'tersedia', 'Pop Ice.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_pengunjung` int(11) NOT NULL,
  `waktu_pesan` datetime NOT NULL,
  `no_meja` int(11) NOT NULL,
  `total_harga` varchar(150) NOT NULL,
  `uang_bayar` varchar(150) DEFAULT NULL,
  `uang_kembali` varchar(150) DEFAULT NULL,
  `status_order` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_masakan` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_pesan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_user`, `id_order`, `id_masakan`, `jumlah`, `status_pesan`) VALUES
(51, 1, 0, 19, 0, ''),
(52, 1, 0, 18, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_stok`
--

CREATE TABLE `tb_stok` (
  `id_stok` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `status_cetak` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_stok`
--

INSERT INTO `tb_stok` (`id_stok`, `id_pesan`, `jumlah_terjual`, `status_cetak`) VALUES
(3, 48, 2, 'belum cetak'),
(4, 49, 1, 'belum cetak'),
(5, 50, 2, 'belum cetak'),
(6, 51, 0, 'belum cetak'),
(7, 52, 0, 'belum cetak'),
(8, 53, 0, 'belum cetak'),
(9, 54, 0, 'belum cetak'),
(10, 55, 0, 'belum cetak'),
(11, 56, 2, 'belum cetak'),
(12, 57, 1, 'belum cetak'),
(13, 58, 6, 'belum cetak'),
(14, 59, 1, 'belum cetak'),
(15, 60, 1, 'belum cetak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `id_level` int(11) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`, `status`) VALUES
(1, 'admin', '123', 'Hendrik Setiawan', 1, 'aktif'),
(6, 'hendro', '123', 'Hendro', 2, 'aktif'),
(7, 'fitri', '123', 'Fitri', 3, 'aktif'),
(8, 'slamet', '123', 'Slamet', 4, 'aktif'),
(9, 'sugiastutik', '123', 'Sugiastutik', 4, 'aktif'),
(15, 'bima123', '123', 'Bima', 5, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pengunjung` (`id_pengunjung`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `tb_stok`
--
ALTER TABLE `tb_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tb_stok`
--
ALTER TABLE `tb_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
