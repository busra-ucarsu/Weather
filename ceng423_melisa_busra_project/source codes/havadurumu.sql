-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Ara 2017, 21:44:38
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `havadurumu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havadurumu`
--

CREATE TABLE `havadurumu` (
  `id` int(11) NOT NULL,
  `adi` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `derece` varchar(55) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `havadurumu`
--

INSERT INTO `havadurumu` (`id`, `adi`, `derece`) VALUES
(139, 'İstanbul', '4.13'),
(140, 'Adana', '16.15'),
(141, 'Malatya', '11.65'),
(142, 'Zonguldak', '4.914'),
(143, 'Sivas', '1.65'),
(144, 'Erzincan', '11.65'),
(145, 'Rize', '7.65'),
(146, 'Yalova', '4.66'),
(147, 'Konya', '7.65'),
(148, 'Isparta', '4.65'),
(149, 'Denizli', '4.65'),
(150, 'Bolu', '1.064'),
(151, 'Trabzon', '7.65'),
(152, 'Erzurum', '6.65'),
(153, 'Batman', '14'),
(154, 'Amasya', '7.18'),
(155, 'Ordu', '4.764'),
(156, 'Karaman', '5.714'),
(157, 'Artvin', '8.65'),
(158, 'Yozgat', '4.414'),
(159, 'Hakkari', '4.414'),
(160, 'Sinop', '8.65'),
(161, 'Ankara', '2.65'),
(162, 'Osmaniye', '10.65'),
(163, 'Burdur', '4.65'),
(164, 'Kayseri', '0.64999999999998'),
(165, 'Manisa', '9.65'),
(166, 'Afyonkarahisar', '1.964'),
(167, 'Bilecik', '5.08'),
(168, 'Kars', '7.14'),
(169, 'Samsun', '8.65'),
(170, 'Kastamonu', '3.65'),
(171, 'Gaziantep', '22.58'),
(172, 'Bursa', '5.65'),
(173, 'Tokat', '2.5'),
(174, 'Edirne', '7.164'),
(175, 'Aksaray', '3.65'),
(176, 'Kilis', '11.65'),
(177, 'Tunceli', '12.67'),
(178, 'Siirt', '15.65'),
(179, 'Van', '6.65'),
(180, 'Ardahan', '1.864'),
(181, 'Bayburt', '5.964'),
(182, 'Mardin', '15.32'),
(183, 'Antalya', '15.65'),
(184, 'Giresun', '4.214');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iller`
--

CREATE TABLE `iller` (
  `id` int(6) UNSIGNED NOT NULL,
  `adi` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `iller`
--

INSERT INTO `iller` (`id`, `adi`) VALUES
(1, 'Adana'),
(2, 'Adıyaman'),
(3, 'Afyonkarahisar'),
(4, 'Ağrı'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Aydın'),
(10, 'Balıkesir'),
(11, 'Bilecik'),
(12, 'Bingöl'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, 'Çanakkale'),
(18, 'Çankırı'),
(19, 'Çorum'),
(20, 'Denizli'),
(21, 'Diyarbakır'),
(22, 'Edirne'),
(23, 'Elazığ'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eskişehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'Gümüşhane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, 'İstanbul'),
(35, 'İzmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'Kırklareli'),
(40, 'Kırşehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'Kütahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'Kahramanmaraş'),
(47, 'Mardin'),
(48, 'Muğla'),
(49, 'Muş'),
(50, 'Nevşehir'),
(51, 'Niğde'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirdağ'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, 'Şanlıurfa'),
(64, 'Uşak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'Kırıkkale'),
(72, 'Batman'),
(73, 'Şırnak'),
(74, 'Bartın'),
(75, 'Ardahan'),
(76, 'Iğdır'),
(77, 'Yalova'),
(78, 'Karabük'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'Düzce');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `havadurumu`
--
ALTER TABLE `havadurumu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iller`
--
ALTER TABLE `iller`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `havadurumu`
--
ALTER TABLE `havadurumu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- Tablo için AUTO_INCREMENT değeri `iller`
--
ALTER TABLE `iller`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
