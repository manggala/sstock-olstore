-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2016 at 03:47 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yb_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id_answer` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `content_answer` text NOT NULL,
  `true_answer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id_answer`, `id_question`, `content_answer`, `true_answer`) VALUES
(7, 16, '1', 0),
(8, 16, '2', 1),
(9, 16, '3', 0),
(10, 16, '4', 0),
(11, 17, '1', 1),
(12, 17, '2', 0),
(13, 17, '3', 0),
(14, 17, '4', 0),
(15, 18, 'Padang', 0),
(16, 18, 'Terang', 0),
(17, 18, 'Pijar', 0),
(18, 18, 'Gelap', 1),
(19, 19, 'pembelian', 0),
(20, 19, 'keberanian', 1),
(21, 19, 'penipuan', 0),
(22, 19, 'jenderal', 0),
(23, 20, 'laci : meja', 0),
(24, 20, 'gedung : eskalator', 0),
(25, 20, 'rumah : ruangan', 1),
(26, 20, 'roda : kursi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `rekening` text NOT NULL,
  `an` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `rekening`, `an`, `img`) VALUES
(1, 'bri', '', '', 'bri.png'),
(2, 'bni', '', '', 'bni.jpg'),
(3, 'bca', '', '', 'bca.jpg'),
(4, 'mandiri', 'Mutafawwiqin Rizqoni Ardiansyah', '900-00-0970236-7', 'mandiri.png');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `name_book` text NOT NULL,
  `preview_book` text NOT NULL,
  `author_book` text NOT NULL,
  `publisher_book` text NOT NULL,
  `release_book` year(4) NOT NULL,
  `description_book` text NOT NULL,
  `price_book` int(11) NOT NULL,
  `stock_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `name_book`, `preview_book`, `author_book`, `publisher_book`, `release_book`, `description_book`, `price_book`, `stock_book`) VALUES
(6, 'judul buku yang panjang', 'buku.png', 'Mukidi', 'Erlangga', 2016, 'deskripsi buku yang sangat panjang sekali sehingga pembaca malas untuk membacanya. namun apa daya, pembaca yang satu ini masih saja membaca deskripsi yang panjang. apakah dia tidak memiliki kesibukan lain? ya itu urusan dia, tapi yang penting tulisan ini tidak berguna dan tidak bermakna. jadi, disudahi saja', 90000, 3),
(20, 'Mixed Reality With Google Cardboard for Room Arrangement with Third Dimention Object', 'BUKU_20_501253-computer-wallpaper.jpg', 'Muhammad Ghozie Manggala', 'Institut Teknologi Sepuluh Nopember', 2016, '', 99000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_user`
--

CREATE TABLE `book_user` (
  `id_book_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_payment` int(11) NOT NULL,
  `bayar_buku_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_user`
--

INSERT INTO `book_user` (`id_book_user`, `id_book`, `id_user`, `id_payment`, `bayar_buku_user`) VALUES
(1, 7, 6, 9, 0),
(2, 6, 6, 9, 0),
(3, 7, 1, 11, 0),
(4, 6, 1, 11, 0),
(5, 20, 1, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `name_course` text NOT NULL,
  `description_course` text NOT NULL,
  `image_course` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id_course`, `name_course`, `description_course`, `image_course`) VALUES
(1, 'Matematika', 'Matematika adalah pelajaran yang menarik karena memiliki trik tersendiri untuk menyelesaikan setiap persoalan yang ada', ''),
(2, 'Tes Potensi Akademik', 'Tes yang menggunakan logika sederhana untuk menjawab soal yang diberikan', '');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_course` int(11) NOT NULL,
  `name_module` text NOT NULL,
  `description_module` text NOT NULL,
  `image_module` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id_module`, `id_course`, `name_module`, `description_module`, `image_module`) VALUES
(2, 1, 'Integral', 'Integral merupakan sebuah mata bab dalam matematika yang merupakan hubungan dari turunan.', ''),
(3, 2, 'Persamaan', 'Mengenal persamaan dari kata kunci yang diberikan', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `jenis_payment` text NOT NULL,
  `id_bank` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nomor_transaksi` text NOT NULL,
  `an_payment` text NOT NULL,
  `rekening_payment` text NOT NULL,
  `status_payment` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `jenis_payment`, `id_bank`, `id_user`, `nomor_transaksi`, `an_payment`, `rekening_payment`, `status_payment`) VALUES
(8, 'to_payment', 1, 1, 'YB-TO-UID-1-2016-0008', 'Muhammad Ghozie Manggala', '1923819238', 2),
(9, 'book', 0, 6, 'YB-BK-UID-6-2016-0009', '', '', 0),
(10, 'to_payment', 0, 6, 'YB-TO-UID-6-2016-00010', 'Muhammad Ghozie Manggala', '123412341234', 1),
(11, 'book', 3, 1, 'YB-BK-UID-1-2016-00011', 'User 1', '1231293', 1),
(12, 'to_payment', 3, 1, 'YB-TO-UID-1-2016-00012', 'User 1', '198239123', 2),
(13, 'to_payment', 0, 2, 'YB-TO-UID-2-2016-00013', '', '', 0),
(14, 'to_payment', 1, 1, 'YB-TO-UID-1-2016-00014', 'Muhammad Ghozie', '198237897123', 2),
(15, 'to_payment', 1, 1, 'YB-TO-UID-1-2016-00015', 'Muhammad Ghozie', '1232093', 2),
(16, 'to_payment', 1, 1, 'YB-TO-UID-1-2016-00016', 'Nama User 1', '939', 2),
(17, 'to_payment', 4, 7, 'YB-TO-UID-7-2016-00017', 'Peserta Baru', '1231234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_confirmation`
--

CREATE TABLE `payment_confirmation` (
  `id_payment_confirmation` int(11) NOT NULL,
  `nomor_transaksi` text NOT NULL,
  `id_bank` int(11) NOT NULL,
  `rekening_confirmation` text NOT NULL,
  `an_confirmation` text NOT NULL,
  `tanggal_confirmation` text NOT NULL,
  `comment_confirmation` text NOT NULL,
  `gambar_confirmation` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_confirmation`
--

INSERT INTO `payment_confirmation` (`id_payment_confirmation`, `nomor_transaksi`, `id_bank`, `rekening_confirmation`, `an_confirmation`, `tanggal_confirmation`, `comment_confirmation`, `gambar_confirmation`, `status`) VALUES
(10, 'YB-TO-UID-1-2016-0008', 0, '1923819238', 'Muhammad Ghozie Manggala', '2016-10-03 07:17:10', 'cat', 'BUKTI10_CURICULUM VITAE-01.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pg`
--

CREATE TABLE `pg` (
  `id_pg` int(11) NOT NULL,
  `universitas_pg` text NOT NULL,
  `jurusan_pg` text NOT NULL,
  `nilai_pg` double NOT NULL DEFAULT '0',
  `update_pg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg`
--

INSERT INTO `pg` (`id_pg`, `universitas_pg`, `jurusan_pg`, `nilai_pg`, `update_pg`) VALUES
(1, 'Universitas Indonesia', 'Kedokteran', 67.32, '2016-09-27'),
(2, 'Universitas Indonesia', 'Kedokteran', 68.4, '2016-09-27'),
(3, 'Universitas Indonesia', 'Ilmu Komputer', 70, '2016-09-28'),
(4, 'Universitas Indonesia', 'Kedokteran', 70.3, '2016-10-03'),
(5, 'Universitas Indonesia', 'Ilmu Komputer', 67.09, '2016-10-03'),
(6, 'Universitas Indonesia', 'Ilmu Komunikasi', 67.09, '2016-10-03'),
(7, 'Universitas Indonesia', 'Hukum', 65, '2016-10-03'),
(8, 'Universitas Indonesia', 'Elektronika', 59.9, '2016-10-03'),
(9, 'Universitas Indonesia', 'Ekonomi', 57.6, '2016-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `content_question` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id_question`, `id_module`, `content_question`, `created_at`) VALUES
(16, 2, '1 + 1', '0000-00-00 00:00:00'),
(17, 2, '2 - 1', '0000-00-00 00:00:00'),
(18, 3, 'MAKAN:LAPAR = LAMPU', '0000-00-00 00:00:00'),
(19, 3, 'KEUNTUNGAN:PENJUALAN = KEMASYHURAN', '0000-00-00 00:00:00'),
(20, 3, 'PESAWAT TERBANG : KABIN', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `to_available`
--

CREATE TABLE `to_available` (
  `id_to` int(11) NOT NULL,
  `title_to` text NOT NULL,
  `description_to` text NOT NULL,
  `datestart_to` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datestop_to` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price_to` double NOT NULL,
  `duration_to` int(11) NOT NULL,
  `code_to` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_available`
--

INSERT INTO `to_available` (`id_to`, `title_to`, `description_to`, `datestart_to`, `datestop_to`, `price_to`, `duration_to`, `code_to`) VALUES
(1, 'IPA', 'Tes Online IPA', '2016-09-25 10:11:15', '2016-11-01 10:11:15', 15000, 60, 'ipa'),
(2, 'Matematika', 'Tes Online Matematika', '2016-09-25 10:12:16', '2016-09-26 10:12:16', 15000, 60, 'matematika'),
(3, 'TPA', 'Tes Potensi Akademik', '2016-09-25 17:00:00', '2016-09-27 17:00:00', 10000, 60, 'tpa'),
(4, 'Logika', 'Tes Logika', '2016-09-27 17:00:00', '2016-09-28 17:00:00', 10000, 60, 'logika'),
(5, 'Sejarah', '', '2016-10-10 02:20:00', '2016-10-11 17:00:00', 10000, 60, 'sejarah'),
(6, 'Tes Online Baru', '', '2016-10-10 17:00:00', '2016-10-12 17:00:00', 100000, 60, 'tes-online-baru'),
(10, 'Tes Potensi Akademik - November', 'Tes Potensi Akademik pada bulan November', '2016-10-31 17:00:00', '2016-11-29 17:00:00', 15000, 60, 'Tes-Potensi-Akademik-November'),
(11, 'TO Cek', 'asdfadf', '2016-10-31 17:00:00', '2016-11-29 17:00:00', 1000, 10, '1478102160-TO-Cek');

-- --------------------------------------------------------

--
-- Table structure for table `to_courses`
--

CREATE TABLE `to_courses` (
  `id_to_course` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `id_course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `to_q`
--

CREATE TABLE `to_q` (
  `id_to_q` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `id_q` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_q`
--

INSERT INTO `to_q` (`id_to_q`, `id_to`, `id_q`) VALUES
(3, 9, 16),
(4, 9, 17),
(5, 1, 16),
(6, 1, 17),
(7, 10, 18),
(8, 10, 19),
(9, 10, 20),
(10, 11, 16),
(11, 11, 18),
(12, 11, 20),
(13, 11, 19);

-- --------------------------------------------------------

--
-- Table structure for table `to_user`
--

CREATE TABLE `to_user` (
  `id_to_user` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_payment` int(11) NOT NULL,
  `bayar_to_user` int(1) NOT NULL DEFAULT '0',
  `score_to_user` double DEFAULT '0',
  `isStarted` tinyint(1) NOT NULL DEFAULT '0',
  `isFinished` tinyint(1) NOT NULL,
  `starttime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_user`
--

INSERT INTO `to_user` (`id_to_user`, `id_to`, `id_user`, `id_payment`, `bayar_to_user`, `score_to_user`, `isStarted`, `isFinished`, `starttime`) VALUES
(9, 1, 1, 8, 2, 100, 1, 1, '2016-10-24 17:17:09'),
(10, 5, 6, 10, 0, 8, 0, 0, '0000-00-00 00:00:00'),
(11, 5, 1, 12, 2, 10, 0, 0, '0000-00-00 00:00:00'),
(12, 1, 2, 13, 0, 0, 1, 0, '2016-10-24 17:17:09'),
(13, 6, 1, 14, 2, 0, 0, 0, '0000-00-00 00:00:00'),
(14, 10, 1, 15, 2, 100, 1, 1, '2016-11-02 16:01:25'),
(15, 11, 1, 16, 2, 6.25, 1, 1, '2016-11-03 14:13:23'),
(16, 11, 7, 17, 2, 37.5, 1, 0, '2016-11-04 15:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `to_u_a_q`
--

CREATE TABLE `to_u_a_q` (
  `id_to_u_a_q` int(11) NOT NULL,
  `id_to_user` int(11) NOT NULL,
  `id_to_q` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_u_a_q`
--

INSERT INTO `to_u_a_q` (`id_to_u_a_q`, `id_to_user`, `id_to_q`, `id_answer`) VALUES
(4, 9, 16, 8),
(5, 9, 17, 11),
(6, 14, 18, 18),
(7, 14, 20, 25),
(8, 14, 19, 20),
(9, 15, 16, 8),
(10, 15, 19, 19),
(11, 15, 18, 17),
(12, 15, 20, 24),
(13, 16, 16, 7),
(14, 16, 19, 20),
(15, 16, 18, 18),
(16, 16, 20, 24);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email_user` text NOT NULL,
  `password_user` text NOT NULL,
  `name_user` text NOT NULL,
  `phone_user` text NOT NULL,
  `role_user` text NOT NULL,
  `last_active_user` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `password_user`, `name_user`, `phone_user`, `role_user`, `last_active_user`) VALUES
(1, 'user1@email.com', 'user1', 'Nama User 1', '', 'member', '2016-09-23 12:34:00'),
(2, 'admin@yuk-belajar.com', '1234', 'Admin', '', 'admin', '2016-09-25 15:04:55'),
(6, 'dmazter_mgm@rocketmail.com', '12345', 'Muhammad Ghozie', '085259529798', 'member', '2016-09-28 03:22:56'),
(7, 'peserta@baru.com', 'baru', 'Peserta Baru', '09894819834', 'member', '2016-11-03 14:21:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_answer`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `book_user`
--
ALTER TABLE `book_user`
  ADD PRIMARY KEY (`id_book_user`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `payment_confirmation`
--
ALTER TABLE `payment_confirmation`
  ADD PRIMARY KEY (`id_payment_confirmation`);

--
-- Indexes for table `pg`
--
ALTER TABLE `pg`
  ADD PRIMARY KEY (`id_pg`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `to_available`
--
ALTER TABLE `to_available`
  ADD PRIMARY KEY (`id_to`);

--
-- Indexes for table `to_courses`
--
ALTER TABLE `to_courses`
  ADD PRIMARY KEY (`id_to_course`);

--
-- Indexes for table `to_q`
--
ALTER TABLE `to_q`
  ADD PRIMARY KEY (`id_to_q`);

--
-- Indexes for table `to_user`
--
ALTER TABLE `to_user`
  ADD PRIMARY KEY (`id_to_user`);

--
-- Indexes for table `to_u_a_q`
--
ALTER TABLE `to_u_a_q`
  ADD PRIMARY KEY (`id_to_u_a_q`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `book_user`
--
ALTER TABLE `book_user`
  MODIFY `id_book_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `payment_confirmation`
--
ALTER TABLE `payment_confirmation`
  MODIFY `id_payment_confirmation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pg`
--
ALTER TABLE `pg`
  MODIFY `id_pg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `to_available`
--
ALTER TABLE `to_available`
  MODIFY `id_to` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `to_courses`
--
ALTER TABLE `to_courses`
  MODIFY `id_to_course` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `to_q`
--
ALTER TABLE `to_q`
  MODIFY `id_to_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `to_user`
--
ALTER TABLE `to_user`
  MODIFY `id_to_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `to_u_a_q`
--
ALTER TABLE `to_u_a_q`
  MODIFY `id_to_u_a_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
