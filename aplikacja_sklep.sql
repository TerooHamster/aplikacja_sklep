-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Lis 2023, 04:41
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aplikacja_sklep`
--
CREATE DATABASE IF NOT EXISTS `aplikacja_sklep` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aplikacja_sklep`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id_customers` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `adress` varchar(40) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id_info` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id_item` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id_product` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` int(10) NOT NULL,
  `available` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `product`
--

INSERT INTO `product` (`id_product`, `name`, `price`, `available`) VALUES
(1, 'kołowrotek', 45, 'yes'),
(2, 'domek', 23, 'yes'),
(3, 'karma1', 34, 'yes'),
(4, 'klatka', 180, 'no'),
(5, 'akwarium', 150, 'yes'),
(6, 'rybki', 4, 'no'),
(7, 'piasek', 20, 'no'),
(8, 'karma2', 34, 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `role`) VALUES
(1, 'admin@email.com', 'admin', 'admin'),
(2, 'user@email.com', 'user', 'user'),
(3, 'user1@email.com', 'user1', 'user1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customers`);

--
-- Indeksy dla tabeli `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeksy dla tabeli `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`);

--
-- Indeksy dla tabeli `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customers` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
