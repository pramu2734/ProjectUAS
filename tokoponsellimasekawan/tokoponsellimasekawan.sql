-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 12:39 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoponsellimasekawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `no_akun` char(5) NOT NULL,
  `nm_akun` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`no_akun`, `nm_akun`) VALUES
('10001', 'Kas'),
('10002', 'Bank'),
('10003', 'Piutang');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` char(5) NOT NULL,
  `nm_brg` char(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `harga`, `stok`) VALUES
('B0001', 'Samsung Galaxy A30', 3000000, 59),
('B0002', 'Samsung Galaxy M30s', 3700000, 7),
('B0003', 'Samsung Galaxy Note 9', 8000000, 3),
('B0004', 'Samsung Galaxy Z Flip', 20000000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jurnal`
--

CREATE TABLE `detail_jurnal` (
  `no_jurnal` char(8) NOT NULL,
  `no_akun` char(5) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `no_beli` char(8) NOT NULL,
  `kd_brg` char(5) NOT NULL,
  `qty_beli` int(11) NOT NULL,
  `sub_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`no_beli`, `kd_brg`, `qty_beli`, `sub_beli`) VALUES
('PB000001', 'B0001', 25, 75000000),
('PB000001', 'B0001', 2, 6000000),
('PB000002', 'B0002', 1, 3700000),
('PB000003', 'B0001', 1, 3000000),
('PB000003', 'B0001', 1, 3000000),
('PB000004', 'B0002', 1, 3700000),
('PB000005', 'B0004', 1, 20000000),
('PB000001', 'B0001', 1, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesan`
--

CREATE TABLE `detail_pesan` (
  `no_pesan` char(8) NOT NULL,
  `kd_brg` char(5) NOT NULL,
  `qty_pesan` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesan`
--

INSERT INTO `detail_pesan` (`no_pesan`, `kd_brg`, `qty_pesan`, `subtotal`) VALUES
('', 'B0001', 1, 3000000),
('', 'B0001', 1, 3000000),
('', 'B0001', 25, 75000000),
('', 'B0001', 25, 75000000),
('', 'B0001', 2, 6000000),
('', 'B0001', 25, 75000000),
('', 'B0001', 2, 6000000),
('', 'B0002', 1, 3700000),
('', 'B0002', 1, 3700000),
('PS000001', 'B0001', 1, 3000000),
('PS000001', 'B0001', 1, 3000000),
('', 'B0002', 1, 3700000),
('', 'B0002', 1, 3700000),
('', 'B0004', 1, 20000000),
('', 'B0001', 1, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_retur`
--

CREATE TABLE `detail_retur` (
  `no_retur` char(8) NOT NULL,
  `kd_brg` char(5) NOT NULL,
  `qty_retur` int(11) NOT NULL,
  `sub_retur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_retur`
--

INSERT INTO `detail_retur` (`no_retur`, `kd_brg`, `qty_retur`, `sub_retur`) VALUES
('', 'B0001', 1, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `no_jurnal` char(8) NOT NULL,
  `tgl_jurnal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `no_beli` char(8) NOT NULL,
  `tgl_beli` date NOT NULL,
  `no_faktur` char(10) NOT NULL,
  `total_beli` int(11) NOT NULL,
  `no_pesan` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no_beli`, `tgl_beli`, `no_faktur`, `total_beli`, `no_pesan`) VALUES
('PB000001', '2020-07-05', 'FK000001', 1, 'PS000001');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pesan` char(8) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `total` int(8) NOT NULL,
  `kd_supp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `Kd_produk` varchar(25) NOT NULL,
  `Nm_produk` varchar(25) NOT NULL,
  `Harga_produk` varchar(25) NOT NULL,
  `Qty` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `Kd_produk`, `Nm_produk`, `Harga_produk`, `Qty`) VALUES
(22, 'B0001', 'Samsung Galaxy A30', '3000000', '10'),
(24, 'B0002', 'Samsung Galaxy M30s', '3700000', '10'),
(25, 'B0003', 'Samsung Galaxy Note 9', '8000000', '10'),
(26, 'B0004', 'Samsung Galaxy Z Flip', '20000000', '10');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `password` varchar(25) DEFAULT '10',
  `email` varchar(25) DEFAULT '10',
  `kontak` varchar(25) DEFAULT '10',
  `alamat` varchar(30) DEFAULT '10',
  `status` varchar(20) DEFAULT '10',
  `regdate` time DEFAULT '00:00:20',
  `id` int(11) DEFAULT '7',
  `username` varchar(25) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`password`, `email`, `kontak`, `alamat`, `status`, `regdate`, `id`, `username`) VALUES
('12345678', 'pramust05@gmail.com', '082226590037', 'Jakarta', 'Toko', '00:00:00', 7, 'Pramu');

-- --------------------------------------------------------

--
-- Table structure for table `retur_beli`
--

CREATE TABLE `retur_beli` (
  `no_retur` char(8) NOT NULL,
  `tgl_retur` date NOT NULL,
  `total_retur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retur_beli`
--

INSERT INTO `retur_beli` (`no_retur`, `tgl_retur`, `total_retur`) VALUES
('', '2020-06-15', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `sementara`
--

CREATE TABLE `sementara` (
  `nomor` char(8) NOT NULL,
  `kode` char(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sementara_retur`
--

CREATE TABLE `sementara_retur` (
  `noretur` char(8) NOT NULL,
  `kode` char(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kd_supp` char(5) NOT NULL,
  `nm_supp` char(25) NOT NULL,
  `alamat` char(50) NOT NULL,
  `telpon` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kd_supp`, `nm_supp`, `alamat`, `telpon`) VALUES
('S0001', 'PT. Sejahtera', 'Jakarta', '02187654321');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_user` char(5) NOT NULL,
  `nm_user` char(20) NOT NULL,
  `hak_akses` char(7) NOT NULL,
  `pass` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user`, `nm_user`, `hak_akses`, `pass`) VALUES
(1, 'USR01', 'admin', 'admin', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`no_akun`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `detail_jurnal`
--
ALTER TABLE `detail_jurnal`
  ADD PRIMARY KEY (`no_jurnal`,`no_akun`);

--
-- Indexes for table `detail_retur`
--
ALTER TABLE `detail_retur`
  ADD PRIMARY KEY (`no_retur`,`kd_brg`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`no_jurnal`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_beli`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pesan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `retur_beli`
--
ALTER TABLE `retur_beli`
  ADD PRIMARY KEY (`no_retur`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kd_supp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
