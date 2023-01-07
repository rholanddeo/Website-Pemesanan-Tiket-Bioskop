-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2023 pada 22.31
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theater_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `movie_id` int(30) NOT NULL,
  `ts_id` int(30) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `movie_id`, `ts_id`, `lastname`, `firstname`, `contact_no`, `qty`, `date`, `time`) VALUES
(13, 14, 7, 'rholand', 'deo', '123', 1, '2022-05-06', '09:00:00'),
(14, 19, 12, 'Eka', 'Putra', '456', 2, '2022-05-06', '09:00:00'),
(15, 18, 10, 'a', 'a', 'a', 1, '2022-05-06', '09:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logins`
--

CREATE TABLE `logins` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `logins`
--

INSERT INTO `logins` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--

CREATE TABLE `movies` (
  `id` int(30) NOT NULL,
  `price` int(11) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`id`, `price`, `title`, `cover_img`, `description`, `duration`, `date_showing`, `end_date`) VALUES
(14, 45000, 'Uncharted', '1651836600_MV5BMWEwNjhkYzYtNjgzYy00YTY2LThjYWYtYzViMGJkZTI4Y2MyXkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_.jpg', 'Nathan Drake direkrut oleh pemburu harta karun berpengalaman Victor Sullivan (Sully) untuk mengembalikan kekayaan yang dikumpulkan oleh Ferdinand Magellan dan hilang 500 tahun yang lalu oleh House of Moncada.', 2, '2022-05-04', '2022-12-31'),
(15, 30000, 'The Adam Project', '1651837260_adam.jpg', 'Adam dewasa (Ryan Reynolds) yang kabur setelah mencuri Jet penjelajah waktu di tahun 2050 terdampar di tahun 2022. Dalam kondisi terluka dan pulang ke \"rumahnya\", ia bertemu dengan Adam kecil (Walker Scobell) yang kala itu berusia 12 tahun. Bertemu dan meminta tolong pada Adam kecil adalah satu-satunya cara agar Adam dewasa bisa melanjutkan misinya melintasi waktu.', 2, '2022-05-04', '2022-12-31'),
(16, 70000, 'The Batman', '1651837740_The_Batman_(film)_poster.jpeg', 'The Batman adalah sebuah film superhero Amerika yang akan datang berdasarkan karakter DC Comics bernama sama. Diproduksi oleh DC Films, 6th & Idaho, dan Dylan Clark Productions, dan akan didistribusikan oleh Warner Bros. Pictures, film ini adalah reboot dari franchise film Batman. Film ini disutradarai oleh Matt Reeves, yang menulis skenario dengan Peter Craig. Film ini dibintangi Robert Pattinson sebagai Bruce Wayne / Batman, bersama Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Andy Serkis, dan Colin Farrell. Menceritakan tentang Batman di tahun keduanya memerangi kejahatan, film tersebut melihat Batman mengungkap korupsi di Kota Gotham saat mengejar The Riddler (Paul Dano), seorang pembunuh berantai yang menargetkan orang elit di Gotham.\r\n', 3, '2022-05-04', '2022-12-31'),
(17, 55000, 'Turning Red', '1651838880_turning-red.jpeg', 'Turning Red adalah film animasi fantasi remaja yang diproduksi Walt Disney Pictures dan Pixar Animation Studios serta didistribusikan oleh Walt Disney Studios Motion Pictures. Ditulis dan disutradarai Domee Shi, diproduseri oleh Lindsey Collins, dan dibintangi oleh Rosalie Chiang dan Sandra Oh.', 2, '2022-05-05', '2022-12-31'),
(18, 65000, 'Dear Nathan: Thank You Salma', '1651840440_dear nathan.jpg', 'Dear Nathan: Thank You Salma adalah film drama romantis Indonesia tahun 2022 yang disutradarai oleh Kuntz Agus.[1] Film yang diadaptasi dari novel Thank You Salma karya Erisca Febriani ini, dibintangi oleh Amanda Rawles, Jefri Nichol, dan Ardhito Pramono. Thank You Salma merupakan trilogi terakhir dari novel Dear Nathan.', 2, '2022-05-05', '2022-12-31'),
(19, 35000, 'Ben & Jody 2022', '1651841400_Poster_film_Ben_&_Jody.jpg', 'Hasan mengatakan bahwa usahanya untuk melawan perusahaan yang ingin mengambil tanah ladang kampung halamannya gagal; semua warga termasuk Ben disekap oleh beberapa orang bersenjata dan dikerjapaksakan ditengah hutan. Sememtara itu di Jakarta, Jody membuka Filosofi Diskopi, versi baru Filosofi Kopi yang bertema disko. Ketika Ben tidak muncul, Jody menuju ke ladang, dimana ia mengikuti dua orang yang dia yakin adalah penyekap Ben melalui video di ponsel Ben yang jatuh ditengah jalan; Jody sendiripun diambil ke tempat Ben dan yang lainnya disekap.', 2, '2022-05-05', '2022-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `theater`
--

CREATE TABLE `theater` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `theater`
--

INSERT INTO `theater` (`id`, `name`) VALUES
(5, 'Theater 1'),
(6, 'Theater 2'),
(7, 'Theater 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `theater_settings`
--

CREATE TABLE `theater_settings` (
  `id` int(30) NOT NULL,
  `theater_id` int(30) NOT NULL,
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `theater_settings`
--

INSERT INTO `theater_settings` (`id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(7, 5, 'Box 1', 20),
(8, 5, 'Box 2', 20),
(9, 5, 'Box 3', 30),
(10, 6, 'Box 1', 20),
(11, 6, 'Box 2', 20),
(12, 6, 'Box 3', 30),
(13, 7, 'Box 1', 20),
(14, 7, 'Box 2', 20),
(15, 7, 'Box 3', 30);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_movie_id` (`movie_id`),
  ADD KEY `books_ts_id` (`ts_id`);

--
-- Indeks untuk tabel `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ts_theater_id` (`theater_id`),
  ADD KEY `ts_pk` (`theater_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `theater`
--
ALTER TABLE `theater`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `theater_settings`
--
ALTER TABLE `theater_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `books_ts_id` FOREIGN KEY (`ts_id`) REFERENCES `theater_settings` (`id`);

--
-- Ketidakleluasaan untuk tabel `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD CONSTRAINT `ts_theater_id` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
