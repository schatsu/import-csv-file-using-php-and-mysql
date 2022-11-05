-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Kas 2022, 23:12:05
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `task`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `veriler`
--

CREATE TABLE `veriler` (
  `id` int(11) NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `eposta` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `calisan_id` bigint(18) NOT NULL,
  `telefon` bigint(18) NOT NULL,
  `puan` int(20) NOT NULL,
  `kampanya_adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kampanya_tarihi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `veriler`
--

INSERT INTO `veriler` (`id`, `ad`, `soyad`, `eposta`, `calisan_id`, `telefon`, `puan`, `kampanya_adi`, `kampanya_tarihi`) VALUES
(40, 'Rina', 'Sweeney', 'urna.nunc@integertincidunt.com', 161711075760, 5306300252, 566, 'TASK', '2022-08'),
(41, 'Vivien', 'Hall', 'faucibus.id@aliquetmetus.edu', 161905234439, 5304886681, 2829, 'TASK', '2022-08'),
(42, 'Clark', 'Waters', 'at@loremvitaeodio.net', 168206271762, 5321711590, 3637, 'TASK', '2022-08'),
(43, 'Kalia', 'Berg', 'a@vehicula.net', 160605173277, 5308408752, 4179, 'TASK', '2022-08'),
(44, 'Aladdin', 'Hayden', 'maecenas.mi@egetmollis.org', 162809279629, 5324387843, 3739, 'TASK', '2022-08'),
(45, 'Kylynn', 'Macdonald', 'hendrerit.consectetuer@utlacusnulla.org', 165804230224, 5305287615, 2262, 'TASK', '2022-08'),
(46, 'Prescott', 'Castro', 'leo.elementum@utnullacras.com', 168101093386, 5301544982, 4017, 'TASK', '2022-08'),
(47, 'Linus', 'Stein', 'sit.amet@donec.net', 165112155022, 5304285436, 2081, 'TASK', '2022-08'),
(48, 'Daphne', 'Giles', 'egestas.ligula@necenimnunc.ca', 161709208662, 5307662108, 533, 'TASK', '2022-08'),
(49, 'Donovan', 'Hodge', 'mauris.vestibulum.neque@curabiturmassavestibulum.com', 168002252180, 5328904203, 4354, 'TASK', '2022-08'),
(50, 'Malik', 'Harrington', 'non@quisqueornare.edu', 161004024541, 5302242891, 2580, 'TASK', '2022-08'),
(51, 'Blair', 'Hicks', 'ornare.fusce@diamatpretium.com', 162803048426, 5323146931, 91, 'TASK', '2022-08'),
(52, 'Scarlet', 'Pate', 'orci.quis@sagittisplaceratcras.co.uk', 162106086701, 5328123221, 291, 'TASK', '2022-08'),
(53, 'Hannah', 'Mcdowell', 'rutrum@tristiqueneque.org', 164207062391, 5324795456, 3170, 'TASK', '2022-08'),
(54, 'Murphy', 'Kennedy', 'a.neque.nullam@incondimentum.co.uk', 168311281888, 5309437949, 3155, 'TASK', '2022-08'),
(55, 'Felix', 'Newman', 'egestas@diam.edu', 161101204517, 5328005365, 2585, 'TASK', '2022-08'),
(56, 'Caesar', 'Rojas', 'praesent.interdum@acorci.co.uk', 167207091815, 5327325529, 2447, 'TASK', '2022-08'),
(57, 'Octavius', 'Shaffer', 'ipsum@et.ca', 169305110687, 5323037164, 2446, 'TASK', '2022-08'),
(58, 'Roanna', 'Kramer', 'ac.metus@arcuvestibulum.co.uk', 164603183205, 5305699006, 1862, 'TASK', '2022-08'),
(59, 'Nathaniel', 'Wooten', 'lacus.vestibulum@vitaerisusduis.ca', 165304233082, 5325625352, 80, 'TASK', '2022-08'),
(60, 'Karen', 'Hill', 'facilisis@urna.edu', 164104042413, 5309634135, 4629, 'TASK', '2022-08'),
(61, 'Marny', 'Warner', 'donec.sollicitudin@blanditconguein.co.uk', 166910092086, 5309211317, 2619, 'TASK', '2022-08'),
(62, 'Upton', 'Lynch', 'pede.cum.sociis@nequesedeget.edu', 167705054141, 5306292542, 3069, 'TASK', '2022-08'),
(63, 'Callie', 'Bishop', 'ipsum.suspendisse@sitametrisus.com', 162803048426, 5324928898, 2943, 'TASK', '2022-08'),
(64, 'Xaviera', 'Barton', 'ultrices.duis@tristique.org', 165810181346, 5323366890, 985, 'TASK', '2022-08'),
(65, 'Hedwig', 'Benton', 'vivamus@imperdiet.co.uk', 160601300767, 5327677142, 2434, 'TASK', '2022-08'),
(66, 'Nolan', 'Bass', 'aliquam@ipsumphasellusvitae.com', 160005274485, 5324682431, 292, 'TASK', '2022-08'),
(67, 'Armand', 'Hess', 'proin@enim.org', 165905090972, 5325917179, 215, 'TASK', '2022-08'),
(68, 'Leroy', 'George', 'sit.amet@donec.net', 169612164278, 5329835280, 3249, 'TASK', '2022-08'),
(69, 'Catherine', 'Hammond', 'ut.lacus.nulla@lorem.org', 166204119660, 5325716200, 4912, 'TASK', '2022-08'),
(70, 'Thane', 'Stanley', 'arcu.et@aliquamadipiscing.edu', 169102266120, 5324588610, 1282, 'TASK', '2022-08'),
(71, 'Yetta', 'Watson', 'neque.sed@arcu.ca', 166803090411, 5309544240, 933, 'TASK', '2022-08'),
(72, 'Oprah', 'Jacobs', 'odio@donec.ca', 165505294909, 5301124051, 4828, 'TASK', '2022-08'),
(73, 'Zia', 'Kirk', 'et.lacinia.vitae@leo.net', 164612196545, 5303972214, 2213, 'TASK', '2022-08'),
(74, 'Giselle', 'Harvey', 'at.pede@orci.edu', 169012223401, 5324682431, 4467, 'TASK', '2022-08'),
(75, 'Hedy', 'Murray', 'quis.arcu.vel@acarcu.org', 160503214843, 5304112469, 4648, 'TASK', '2022-08'),
(76, 'Kendall', 'Dudley', 'ipsum@et.ca', 163612209910, 5301224849, 4666, 'TASK', '2022-08'),
(77, 'Christopher', 'Warren', 'mus@acmetus.co-uk', 164603260383, 5327551478, 3909, 'TASK', '2022-08'),
(78, 'Belle', 'Knowles', 'sut.mi@pede.co-uk', 166204119660, 5326641437, 25, 'TASK', '2022-08');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `veriler`
--
ALTER TABLE `veriler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `veriler`
--
ALTER TABLE `veriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
