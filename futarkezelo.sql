-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Ápr 24. 18:58
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `futarkezelo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csomag`
--

DROP DATABASE IF EXISTS futarkezelo;
CREATE DATABASE futarkezelo;
USE futarkezelo;

CREATE TABLE `csomag` (
  `csomag_id` int(11) NOT NULL,
  `leiras` text DEFAULT NULL,
  `meret` varchar(50) DEFAULT NULL,
  `suly` decimal(6,2) DEFAULT NULL,
  `csomagautomata_id` int(11) DEFAULT NULL,
  `felhasznalo_id` int(11) DEFAULT NULL,
  `felado_nev` varchar(100) DEFAULT NULL,
  `felado_telefonszam` varchar(30) DEFAULT NULL,
  `felado_email` varchar(100) DEFAULT NULL,
  `cimzett_nev` varchar(100) DEFAULT NULL,
  `cimzett_telefonszam` varchar(30) DEFAULT NULL,
  `torekeny` tinyint(1) NOT NULL DEFAULT 0,
  `szallitasi_dij` decimal(10,2) DEFAULT NULL,
  `cimzett_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `csomag`
--

INSERT INTO `csomag` (`csomag_id`, `leiras`, `meret`, `suly`, `csomagautomata_id`, `felhasznalo_id`, `felado_nev`, `felado_telefonszam`, `felado_email`, `cimzett_nev`, `cimzett_telefonszam`, `torekeny`, `szallitasi_dij`, `cimzett_email`) VALUES
(1, 'Bútor', 'Nagy', 1.00, 1, 1, 'Kiss Péter', '+361234567', 'peter.kiss@gmail.com', 'Tóth Bence', '+36 70 598 3415', 0, 2990.00, NULL),
(2, 'Könyvcsomag', 'Közepes', 1.20, 2, 2, 'Nagy Anna', '+3620123456', 'anna.nagy@gmail.com', 'Kovács Gergő', '+36 70 954 9591', 0, 2490.00, NULL),
(3, 'Ruházat', 'Kicsi', 1.80, 3, 3, 'Tóth Gábor', '+3630123456', 'gabor.toth@gmail.com', 'Kelemen Dóra', '+36 70 990 7224', 0, 1990.00, NULL),
(4, 'Játékok', 'Kicsi', 3.00, 4, 4, 'Szabó László', '+3670123456', 'laszlo.szabo@gmail.com', 'Gál Norbert', '+36 70 465 9145', 0, 1990.00, NULL),
(5, 'Konyhai eszközök', 'Nagy', 4.50, 5, 5, 'Horváth Éva', '+3620987654', 'eva.horvath@gmail.com', 'Varga Ádám', '+36 70 253 4571', 0, 2990.00, NULL),
(6, 'Laptop', 'Nagy', 2.20, 6, 6, 'Varga Zoltán', '+3630987654', 'zoltan.varga@gmail.com', 'Horváth Márk', '+36 70 517 8100', 1, 3490.00, NULL),
(7, 'Sportfelszerelés', 'Nagy', 6.00, 7, 7, 'Kovács Mária', '+3670987654', 'maria.kovacs@gmail.com', 'Simon Ádám', '+36 70 398 5161', 0, 2990.00, NULL),
(8, 'Dekoráció', 'Kicsi', 1.00, 8, 8, 'Balogh Tamás', '+3620555123', 'tamas.balogh@gmail.com', 'Simon Ádám', '+36 70 154 7242', 0, 1990.00, NULL),
(9, 'Törékeny üvegáru', 'Nagy', 8.00, 9, 9, 'Papp Judit', '+3630555123', 'judit.papp@gmail.com', 'Papp Bence', '+36 70 913 5144', 1, 3490.00, NULL),
(10, 'Mobiltelefon', 'Kicsi', 0.50, 10, 10, 'Farkas András', '+3670555123', 'andras.farkas@gmail.com', 'Kiss Levente', '+36 70 186 7824', 1, 2490.00, NULL),
(11, 'Élelmiszer', 'Közepes', 5.50, 11, 11, 'Molnár Katalin', '+3620111122', 'katalin.molnar@gmail.com', 'Varga Ádám', '+36 70 733 8121', 0, 2490.00, NULL),
(12, 'Illatszer', 'Kicsi', 1.30, 12, 12, 'Takács István', '+3630111122', 'istvan.takacs@gmail.com', 'Kovács Gergő', '+36 70 738 9995', 0, 1990.00, NULL),
(13, 'Kis háztartási gép', 'Nagy', 7.50, 13, 13, 'Oláh Lilla', '+3670111122', 'lilla.olah@gmail.com', 'Papp Bence', '+36 70 241 7524', 0, 2990.00, NULL),
(14, 'Festmény', 'Nagy', 2.00, 14, 14, 'Lakatos József', '+3620222233', 'jozsef.lakatos@gmail.com', 'Lakatos István', '+36 70 541 7161', 1, 3490.00, NULL),
(15, 'Dokumentumok', 'Kicsi', 0.80, 15, 15, 'Gál Zsófia', '+3630222233', 'zsofia.gal@gmail.com', 'Szabó Péter', '+36 70 674 1898', 0, 1990.00, NULL),
(16, 'Laptop', 'Közepes', 7.29, 16, 16, 'Bíró Ádám', '+3670222233', 'adam.biro@gmail.com', 'Horváth Márk', '+36 70 397 8264', 1, 2990.00, NULL),
(17, 'Táska', 'Kicsi', 5.03, 17, 17, 'Sipos Réka', '+3620333344', 'reka.sipos@gmail.com', 'Kelemen Dóra', '+36 70 846 7973', 0, 1990.00, NULL),
(18, 'Díszdoboz', 'Nagy', 0.78, 18, 18, 'Mészáros Dávid', '+3630333344', 'david.meszaros@gmail.com', 'Varga Ádám', '+36 70 855 4624', 0, 2990.00, NULL),
(19, 'Fényképező', 'Közepes', 1.12, 19, 19, 'Simon Beáta', '+3670333344', 'beata.simon@gmail.com', 'Simon Ádám', '+36 70 848 4334', 1, 2990.00, NULL),
(20, 'Könyv', 'Nagy', 7.42, 20, 20, 'Bodnár Ferenc', '+3620444455', 'ferenc.bodnar@gmail.com', 'Veres Tamás', '+36 70 366 5153', 0, 2990.00, NULL),
(21, 'Csomag', 'Kicsi', 6.61, 21, 21, 'Orbán Noémi', '+3630444455', 'noemi.orban@gmail.com', 'Juhász Kata', '+36 70 352 3523', 0, 1990.00, NULL),
(22, 'Telefon', 'Nagy', 0.47, 22, 22, 'Hegedűs Márk', '+3670444455', 'mark.hegedus@gmail.com', 'Juhász Kata', '+36 70 223 8150', 1, 3490.00, NULL),
(23, 'Tablet', 'Közepes', 6.73, 23, 23, 'Kerekes Nóra', '+3620555566', 'nora.kerekes@gmail.com', 'Simon Ádám', '+36 70 466 8063', 0, 2490.00, NULL),
(24, 'Zokni', 'Nagy', 4.41, 24, 24, 'Vörös Bence', '+3630555566', 'bence.voros@gmail.com', 'Szabó Péter', '+36 70 694 8574', 0, 2990.00, NULL),
(25, 'Pohár', 'Kicsi', 1.29, 25, 25, 'Csontos Ágnes', '+3670555566', 'agnes.csontos@gmail.com', 'Juhász Kata', '+36 70 452 2036', 1, 2490.00, NULL),
(26, 'Laptop', 'Kicsi', 0.29, 26, 26, 'Fodor Roland', '+3620666677', 'roland.fodor@gmail.com', 'Varga Ádám', '+36 70 151 4008', 1, 2490.00, NULL),
(27, 'Könyv', 'Nagy', 4.27, 27, 27, 'Juhász Dóra', '+3630666677', 'dora.juhasz@gmail.com', 'Veres Tamás', '+36 70 968 4110', 0, 2990.00, NULL),
(28, 'Táska', 'Közepes', 7.81, 28, 28, 'Katona Gergely', '+3670666677', 'gergely.katona@gmail.com', 'Kovács Gergő', '+36 70 256 5185', 0, 2490.00, NULL),
(29, 'Csomag', 'Nagy', 1.69, 29, 29, 'Major Eszter', '+3620777788', 'eszter.major@gmail.com', 'Horváth Márk', '+36 70 706 5671', 0, 2990.00, NULL),
(30, 'Tablet', 'Kicsi', 5.27, 30, 30, 'Szalai Miklós', '+3630777788', 'miklos.szalai@gmail.com', 'Horváth Márk', '+36 70 873 4131', 0, 1990.00, NULL),
(31, 'Fényképező', 'Közepes', 2.53, 31, 31, 'Kádár Imre', '+3670777788', 'imre.kadar@gmail.com', 'Takács Gergő', '+36 70 384 3697', 1, 2990.00, NULL),
(32, 'Telefon', 'Nagy', 6.68, 32, 32, 'Németh Orsolya', '+3620888899', 'orsolya.nemeth@gmail.com', 'Horváth Márk', '+36 70 673 6495', 1, 3490.00, NULL),
(33, 'Díszdoboz', 'Kicsi', 3.79, 33, 33, 'Rácz Viktor', '+3630888899', 'viktor.racz@gmail.com', 'Lakatos István', '+36 70 962 2470', 0, 1990.00, NULL),
(34, 'Zokni', 'Nagy', 0.35, 34, 34, 'Lukács Bettina', '+3670888899', 'bettina.lukacs@gmail.com', 'Kovács Gergő', '+36 70 318 6176', 0, 2990.00, NULL),
(35, 'Pohár', 'Közepes', 6.04, 35, 35, 'Kelemen Attila', '+3620999900', 'attila.kelemen@gmail.com', 'Farkas Zoltán', '+36 70 651 1277', 1, 2990.00, NULL),
(36, 'Laptop', 'Nagy', 8.26, 36, 36, 'Somogyi Petra', '+3630999900', 'petra.somogyi@gmail.com', 'Tóth Bence', '+36 70 545 1070', 1, 3490.00, NULL),
(37, 'Csomag', 'Kicsi', 4.01, 37, 37, 'Bartha Levente', '+3670999900', 'levente.bartha@gmail.com', 'Kiss Levente', '+36 70 176 2564', 0, 1990.00, NULL),
(38, 'Könyv', 'Közepes', 3.29, 38, 38, 'Illés Fanni', '+3620102030', 'fanni.illes@gmail.com', 'Tóth Bence', '+36 70 941 1059', 0, 2490.00, NULL),
(39, 'Táska', 'Nagy', 6.95, 39, 39, 'Kárpáti Richárd', '+3630102030', 'richard.karpati@gmail.com', 'Kelemen Dóra', '+36 70 916 2618', 0, 2990.00, NULL),
(40, 'Tablet', 'Kicsi', 5.67, 40, 40, 'Pintér Melinda', '+3670102030', 'melinda.pinter@gmail.com', 'Takács Gergő', '+36 70 321 2458', 0, 1990.00, NULL),
(41, 'Telefon', 'Közepes', 7.93, 41, 41, 'Szűcs Zoltán', '+3620203040', 'zoltan.szucs@gmail.com', 'Simon Ádám', '+36 70 212 1225', 1, 2990.00, NULL),
(42, 'Fényképező', 'Nagy', 1.99, 42, 42, 'Benkő Erika', '+3630203040', 'erika.benko@gmail.com', 'Takács Gergő', '+36 70 181 5060', 1, 3490.00, NULL),
(43, 'Díszdoboz', 'Kicsi', 3.37, 43, 43, 'Veres Norbert', '+3670203040', 'norbert.veres@gmail.com', 'Tóth Bence', '+36 70 898 7575', 0, 1990.00, NULL),
(44, 'Pohár', 'Nagy', 9.91, 44, 44, 'Török Ildikó', '+3620304050', 'ildiko.torok@gmail.com', 'Lakatos István', '+36 70 885 1498', 1, 3490.00, NULL),
(45, 'Zokni', 'Közepes', 1.83, 45, 45, 'Kiss Roland', '+3630304050', 'roland.kiss@gmail.com', 'Takács Gergő', '+36 70 669 8224', 0, 2490.00, NULL),
(46, 'Laptop', 'Kicsi', 3.54, 46, 46, 'Hajdu Zsuzsa', '+3670304050', 'zsuzsa.hajdu@gmail.com', 'Horváth Márk', '+36 70 516 8502', 1, 2490.00, NULL),
(47, 'Csomag', 'Nagy', 8.45, 47, 47, 'Fehér Ákos', '+3620405060', 'akos.feher@gmail.com', 'Papp Bence', '+36 70 651 9048', 0, 2990.00, NULL),
(48, 'Könyv', 'Közepes', 7.10, 48, 48, 'Barta Klaudia', '+3630405060', 'klaudia.barta@gmail.com', 'Gál Norbert', '+36 70 578 2806', 0, 2490.00, NULL),
(49, 'Táska', 'Kicsi', 1.34, 49, 49, 'Győri Balázs', '+3670405060', 'balazs.gyori@gmail.com', 'Veres Tamás', '+36 70 951 4889', 0, 1990.00, NULL),
(50, 'Tablet', 'Nagy', 0.75, 50, 50, 'Szekeres Zita', '+3620506070', 'zita.szekeres@gmail.com', 'Nagy Dániel', '+36 70 622 9782', 0, 2990.00, NULL),
(51, 'Telefon', 'Közepes', 6.87, 51, 51, 'Polgár Dénes', '+3630506070', 'denes.polgar@gmail.com', 'Lakatos István', '+36 70 461 7484', 1, 2990.00, NULL),
(52, 'Fényképező', 'Nagy', 8.90, 52, 52, 'Kocsis Anita', '+3670506070', 'anita.kocsis@gmail.com', 'Papp Bence', '+36 70 921 1926', 1, 3490.00, NULL),
(53, 'Díszdoboz', 'Kicsi', 2.21, 53, 53, 'Berki Lóránt', '+3620607080', 'lorant.berki@gmail.com', 'Kovács Gergő', '+36 70 582 9633', 0, 1990.00, NULL),
(54, 'Zokni', 'Közepes', 4.76, 54, 54, 'Pálfi Szilvia', '+3630607080', 'szilvia.palfi@gmail.com', 'Farkas Zoltán', '+36 70 801 7215', 0, 2490.00, NULL),
(55, 'Pohár', 'Nagy', 0.18, 55, 55, 'Vadász Gergő', '+3670607080', 'gergo.vadasz@gmail.com', 'Varga Ádám', '+36 70 216 2479', 1, 3490.00, NULL),
(56, 'Laptop', 'Kicsi', 9.44, 56, 56, 'Révész Kinga', '+3620708090', 'kinga.revesz@gmail.com', 'Kelemen Dóra', '+36 70 184 4878', 1, 2490.00, NULL),
(57, 'Csomag', 'Közepes', 0.69, 57, 57, 'Szántó Milán', '+3630708090', 'milan.szanto@gmail.com', 'Molnár Balázs', '+36 70 766 5370', 0, 2490.00, NULL),
(58, 'Könyv', 'Nagy', 8.23, 58, 58, 'Bognár Tímea', '+3670708090', 'timea.bognar@gmail.com', 'Molnár Balázs', '+36 70 352 6958', 0, 2990.00, NULL),
(59, 'Táska', 'Kicsi', 7.58, 59, 59, 'Erdős Patrik', '+3620809100', 'patrik.erdos@gmail.com', 'Juhász Kata', '+36 70 422 7616', 0, 1990.00, NULL),
(60, 'Tablet', 'Közepes', 5.39, 60, 60, 'Király Bernadett', '+3630809100', 'bernadett.kiraly@gmail.com', 'Oláh Noémi', '+36 70 269 5916', 0, 2490.00, NULL),
(61, 'Telefon', 'Nagy', 2.42, 61, 61, 'Halász Róbert', '+3670809100', 'robert.halasz@gmail.com', 'Kovács Gergő', '+36 70 534 8402', 1, 3490.00, NULL),
(62, 'Fényképező', 'Kicsi', 0.98, 62, 62, 'Lendvai Alexandra', '+3620910111', 'alexandra.lendvai@gmail.com', 'Nagy Dániel', '+36 70 356 8713', 1, 2490.00, NULL),
(63, 'Díszdoboz', 'Közepes', 6.65, 63, 63, 'Jakab Tibor', '+3630910111', 'tibor.jakab@gmail.com', 'Horváth Márk', '+36 70 658 4195', 0, 2490.00, NULL),
(64, 'Zokni', 'Nagy', 1.25, 64, 64, 'Balla Nikolett', '+3670910111', 'nikolett.balla@gmail.com', 'Tóth Bence', '+36 70 800 4397', 0, 2990.00, NULL),
(65, 'Pohár', 'Kicsi', 3.68, 65, 65, 'Kis Dávid', '+3620101112', 'david.kis@gmail.com', 'Kelemen Dóra', '+36 70 572 7422', 1, 2490.00, NULL),
(66, 'Laptop', 'Közepes', 4.55, 66, 66, 'Kele Kitti', '+3630101112', 'kitti.kele@gmail.com', 'Juhász Kata', '+36 70 220 2810', 1, 2990.00, NULL),
(67, 'Csomag', 'Nagy', 9.81, 67, 67, 'Szendrei Áron', '+3670101112', 'aron.szendrei@gmail.com', 'Balogh Dávid', '+36 70 358 2594', 0, 2990.00, NULL),
(68, 'Könyv', 'Kicsi', 0.88, 68, 68, 'Fülöp Réka', '+3620201213', 'reka.fulop@gmail.com', 'Barta Lili', '+36 70 862 5377', 0, 1990.00, NULL),
(69, 'Táska', 'Közepes', 2.96, 69, 69, 'Borsos Márton', '+3630201213', 'marton.borsos@gmail.com', 'Nagy Dániel', '+36 70 361 5267', 0, 2490.00, NULL),
(70, 'Tablet', 'Nagy', 1.46, 70, 70, 'Kincses Laura', '+3670201213', 'laura.kincses@gmail.com', 'Juhász Kata', '+36 70 907 3225', 0, 2990.00, NULL),
(71, 'Telefon', 'Kicsi', 8.57, 71, 71, 'Dombóvári Ákos', '+3620301314', 'akos.dombovari@gmail.com', 'Takács Gergő', '+36 70 342 4669', 1, 2490.00, NULL),
(72, 'Fényképező', 'Közepes', 7.66, 72, 72, 'Hollósi Sára', '+3630301314', 'sara.hollosi@gmail.com', 'Barta Lili', '+36 70 927 8503', 1, 2990.00, NULL),
(73, 'Díszdoboz', 'Nagy', 3.94, 73, 73, 'Pap Kristóf', '+3670301314', 'kristof.pap@gmail.com', 'Balogh Dávid', '+36 70 562 9292', 0, 2990.00, NULL),
(74, 'Zokni', 'Kicsi', 2.88, 74, 74, 'Vincze Henrietta', '+3620401415', 'henrietta.vincze@gmail.com', 'Papp Bence', '+36 70 678 5593', 0, 1990.00, NULL),
(75, 'Pohár', 'Közepes', 6.09, 75, 75, 'Tímár Árpád', '+3630401415', 'arpad.timar@gmail.com', 'Balogh Dávid', '+36 70 133 4985', 1, 2990.00, NULL),
(76, 'Laptop', 'Nagy', 5.88, 76, 1, 'Kiss Péter', '+361234567', 'peter.kiss@gmail.com', 'Papp Bence', '+36 70 660 5974', 1, 3490.00, NULL),
(77, 'Csomag', 'Kicsi', 1.71, 77, 2, 'Nagy Anna', '+3620123456', 'anna.nagy@gmail.com', 'Horváth Márk', '+36 70 493 7403', 0, 1990.00, NULL),
(78, 'Könyv', 'Közepes', 8.31, 78, 3, 'Tóth Gábor', '+3630123456', 'gabor.toth@gmail.com', 'Kelemen Dóra', '+36 70 738 3551', 0, 2490.00, NULL),
(79, 'Táska', 'Nagy', 3.02, 79, 4, 'Szabó László', '+3670123456', 'laszlo.szabo@gmail.com', 'Molnár Balázs', '+36 70 169 6598', 0, 2990.00, NULL),
(80, 'Tablet', 'Kicsi', 7.47, 80, 5, 'Horváth Éva', '+3620987654', 'eva.horvath@gmail.com', 'Horváth Márk', '+36 70 994 4511', 0, 1990.00, NULL),
(81, 'Telefon', 'Közepes', 4.85, 1, 6, 'Varga Zoltán', '+3630987654', 'zoltan.varga@gmail.com', 'Varga Ádám', '+36 70 547 4959', 1, 2990.00, NULL),
(82, 'Fényképező', 'Nagy', 2.34, 2, 7, 'Kovács Mária', '+3670987654', 'maria.kovacs@gmail.com', 'Horváth Márk', '+36 70 995 3721', 1, 3490.00, NULL),
(83, 'Díszdoboz', 'Kicsi', 5.12, 3, 8, 'Balogh Tamás', '+3620555123', 'tamas.balogh@gmail.com', 'Kelemen Dóra', '+36 70 151 1912', 0, 1990.00, NULL),
(84, 'Zokni', 'Közepes', 9.55, 4, 9, 'Papp Judit', '+3630555123', 'judit.papp@gmail.com', 'Varga Ádám', '+36 70 892 3434', 0, 2490.00, NULL),
(85, 'Pohár', 'Nagy', 6.83, 5, 10, 'Farkas András', '+3670555123', 'andras.farkas@gmail.com', 'Lakatos István', '+36 70 601 6176', 1, 3490.00, NULL),
(86, 'Laptop', 'Kicsi', 0.43, 6, 11, 'Molnár Katalin', '+3620111122', 'katalin.molnar@gmail.com', 'Varga Ádám', '+36 70 865 4380', 1, 2490.00, NULL),
(87, 'Csomag', 'Közepes', 3.14, 7, 12, 'Takács István', '+3630111122', 'istvan.takacs@gmail.com', 'Molnár Balázs', '+36 70 600 3319', 0, 2490.00, NULL),
(88, 'Könyv', 'Nagy', 1.67, 8, 13, 'Oláh Lilla', '+3670111122', 'lilla.olah@gmail.com', 'Szabó Péter', '+36 70 813 9745', 0, 2990.00, NULL),
(89, 'Táska', 'Kicsi', 9.69, 9, 14, 'Lakatos József', '+3620222233', 'jozsef.lakatos@gmail.com', 'Juhász Kata', '+36 70 980 4990', 0, 1990.00, NULL),
(90, 'Tablet', 'Közepes', 5.94, 10, 15, 'Gál Zsófia', '+3630222233', 'zsofia.gal@gmail.com', 'Kiss Levente', '+36 70 568 4475', 0, 2490.00, NULL),
(91, 'Telefon', 'Nagy', 2.29, 11, 16, 'Bíró Ádám', '+3670222233', 'adam.biro@gmail.com', 'Kiss Levente', '+36 70 382 5675', 1, 3490.00, NULL),
(92, 'Fényképező', 'Kicsi', 7.75, 12, 17, 'Sipos Réka', '+3620333344', 'reka.sipos@gmail.com', 'Juhász Kata', '+36 70 651 9265', 1, 2490.00, NULL),
(93, 'Díszdoboz', 'Közepes', 3.41, 13, 18, 'Mészáros Dávid', '+3630333344', 'david.meszaros@gmail.com', 'Simon Ádám', '+36 70 813 9396', 0, 2490.00, NULL),
(94, 'Zokni', 'Nagy', 1.77, 14, 19, 'Simon Beáta', '+3670333344', 'beata.simon@gmail.com', 'Molnár Balázs', '+36 70 369 6427', 0, 2990.00, NULL),
(95, 'Pohár', 'Kicsi', 0.67, 15, 20, 'Bodnár Ferenc', '+3620444455', 'ferenc.bodnar@gmail.com', 'Takács Gergő', '+36 70 568 3506', 1, 2490.00, NULL),
(96, 'Laptop', 'Közepes', 4.18, 16, 21, 'Orbán Noémi', '+3630444455', 'noemi.orban@gmail.com', 'Kovács Gergő', '+36 70 220 7236', 1, 2990.00, NULL),
(97, 'Csomag', 'Nagy', 6.29, 17, 22, 'Hegedűs Márk', '+3670444455', 'mark.hegedus@gmail.com', 'Horváth Márk', '+36 70 966 2125', 0, 2990.00, NULL),
(98, 'Könyv', 'Kicsi', 7.20, 18, 23, 'Kerekes Nóra', '+3620555566', 'nora.kerekes@gmail.com', 'Molnár Balázs', '+36 70 403 7819', 0, 1990.00, NULL),
(99, 'Táska', 'Közepes', 0.57, 19, 24, 'Vörös Bence', '+3630555566', 'bence.voros@gmail.com', 'Kovács Gergő', '+36 70 744 7784', 0, 2490.00, NULL),
(100, 'Tablet', 'Nagy', 9.06, 20, 25, 'Csontos Ágnes', '+3670555566', 'agnes.csontos@gmail.com', 'Gál Norbert', '+36 70 409 2782', 0, 2990.00, NULL),
(101, 'Telefon', 'Kicsi', 4.41, 21, 26, 'Fodor Roland', '+3620666677', 'roland.fodor@gmail.com', 'Lakatos István', '+36 70 180 8823', 1, 2490.00, NULL),
(102, 'Fényképező', 'Közepes', 6.40, 22, 27, 'Juhász Dóra', '+3630666677', 'dora.juhasz@gmail.com', 'Kovács Gergő', '+36 70 723 1979', 1, 2990.00, NULL),
(103, 'Díszdoboz', 'Nagy', 8.15, 23, 28, 'Katona Gergely', '+3670666677', 'gergely.katona@gmail.com', 'Balogh Dávid', '+36 70 622 9289', 0, 2990.00, NULL),
(104, 'Zokni', 'Kicsi', 2.13, 24, 29, 'Major Eszter', '+3620777788', 'eszter.major@gmail.com', 'Kovács Gergő', '+36 70 232 1886', 0, 1990.00, NULL),
(105, 'Pohár', 'Közepes', 1.11, 25, 30, 'Szalai Miklós', '+3630777788', 'miklos.szalai@gmail.com', 'Barta Lili', '+36 70 643 2497', 1, 2990.00, NULL),
(106, 'Laptop', 'Nagy', 5.69, 26, 31, 'Kádár Imre', '+3670777788', 'imre.kadar@gmail.com', 'Balogh Dávid', '+36 70 986 1839', 1, 3490.00, NULL),
(107, 'Csomag', 'Kicsi', 9.02, 27, 32, 'Németh Orsolya', '+3620888899', 'orsolya.nemeth@gmail.com', 'Kiss Levente', '+36 70 887 5734', 0, 1990.00, NULL),
(108, 'Könyv', 'Közepes', 3.38, 28, 33, 'Rácz Viktor', '+3630888899', 'viktor.racz@gmail.com', 'Balogh Dávid', '+36 70 321 8840', 0, 2490.00, NULL),
(109, 'Táska', 'Nagy', 1.45, 29, 34, 'Lukács Bettina', '+3670888899', 'bettina.lukacs@gmail.com', 'Nagy Dániel', '+36 70 572 2795', 0, 2990.00, NULL),
(110, 'Tablet', 'Kicsi', 6.82, 30, 35, 'Kelemen Attila', '+3620999900', 'attila.kelemen@gmail.com', 'Nagy Dániel', '+36 70 348 8719', 0, 1990.00, NULL),
(111, 'Telefon', 'Közepes', 4.70, 31, 36, 'Somogyi Petra', '+3630999900', 'petra.somogyi@gmail.com', 'Varga Ádám', '+36 70 321 1510', 1, 2990.00, NULL),
(112, 'Fényképező', 'Nagy', 0.84, 32, 37, 'Bartha Levente', '+3670999900', 'levente.bartha@gmail.com', 'Kelemen Dóra', '+36 70 214 9810', 1, 3490.00, NULL),
(113, 'Díszdoboz', 'Kicsi', 5.97, 33, 38, 'Illés Fanni', '+3620102030', 'fanni.illes@gmail.com', 'Papp Bence', '+36 70 655 2708', 0, 1990.00, NULL),
(114, 'Zokni', 'Közepes', 8.44, 34, 39, 'Kárpáti Richárd', '+3630102030', 'richard.karpati@gmail.com', 'Nagy Dániel', '+36 70 383 8292', 0, 2490.00, NULL),
(115, 'Pohár', 'Nagy', 2.66, 35, 40, 'Pintér Melinda', '+3670102030', 'melinda.pinter@gmail.com', 'Barta Lili', '+36 70 253 6058', 1, 3490.00, NULL),
(116, 'Laptop', 'Kicsi', 4.91, 36, 41, 'Szűcs Zoltán', '+3620203040', 'zoltan.szucs@gmail.com', 'Varga Ádám', '+36 70 197 2257', 1, 2490.00, NULL),
(117, 'Csomag', 'Közepes', 1.73, 37, 42, 'Benkő Erika', '+3630203040', 'erika.benko@gmail.com', 'Balogh Dávid', '+36 70 237 4562', 0, 2490.00, NULL),
(118, 'Könyv', 'Nagy', 7.88, 38, 43, 'Veres Norbert', '+3670203040', 'norbert.veres@gmail.com', 'Papp Bence', '+36 70 589 5104', 0, 2990.00, NULL),
(119, 'Táska', 'Kicsi', 9.75, 39, 44, 'Török Ildikó', '+3620304050', 'ildiko.torok@gmail.com', 'Molnár Balázs', '+36 70 450 4134', 0, 1990.00, NULL),
(120, 'Tablet', 'Közepes', 3.64, 40, 45, 'Kiss Roland', '+3630304050', 'roland.kiss@gmail.com', 'Kiss Levente', '+36 70 458 5675', 0, 2490.00, NULL),
(121, 'Telefon', 'Nagy', 0.26, 41, 46, 'Hajdu Zsuzsa', '+3670304050', 'zsuzsa.hajdu@gmail.com', 'Farkas Zoltán', '+36 70 163 9885', 1, 3490.00, NULL),
(122, 'Fényképező', 'Kicsi', 7.07, 42, 47, 'Fehér Ákos', '+3620405060', 'akos.feher@gmail.com', 'Balogh Dávid', '+36 70 194 6044', 1, 2490.00, NULL),
(123, 'Díszdoboz', 'Közepes', 6.57, 43, 48, 'Barta Klaudia', '+3630405060', 'klaudia.barta@gmail.com', 'Oláh Noémi', '+36 70 376 3473', 0, 2490.00, NULL),
(124, 'Zokni', 'Nagy', 2.54, 44, 49, 'Győri Balázs', '+3670405060', 'balazs.gyori@gmail.com', 'Kovács Gergő', '+36 70 851 8745', 0, 2990.00, NULL),
(125, 'Pohár', 'Kicsi', 5.33, 45, 50, 'Szekeres Zita', '+3620506070', 'zita.szekeres@gmail.com', 'Varga Ádám', '+36 70 669 9523', 1, 2490.00, NULL),
(126, 'Súlyzó', 'M', 5.00, 4, 80, 'Kovács Viktor', '+36 70 632 5271', 'kovacs.viktor@gmail.com', 'Komlósi Ferenc', '+36 70 563 2403', 0, 2290.00, NULL),
(127, 'Óra', 'S', 4.00, 80, 80, 'Kovács Viktor', '+36 70 632 5271', 'kovacs.viktor@gmail.com', 'Lakatos Brendon', '+36 50 241 7621', 1, 2790.00, NULL),
(128, 'Ing', 'L', 0.50, 78, 80, 'Kovács Viktor', '+36 70 632 5271', 'kovacs.viktor@gmail.com', 'Kovács Bertalan', '+36 30 444 7621', 0, 2290.00, NULL),
(129, 'Keverő', 'L', 20.00, 69, 81, 'Nagy Eszter', '+36 50 241 2543', 'nagy.eszter2001@gmail.com', 'Kukor Márton', '+36 30 111 7611', 0, 3190.00, NULL),
(130, 'Vasaló', 'S', 2.00, 71, 82, 'Kukor Márton', '+36 30 111 7611', 'kukor.marton@gmail.com', 'Nagy Eszter', '+36 50 241 2543', 0, 1490.00, NULL),
(131, 'Hangfal', 'L', 30.00, 30, 83, 'Fodor Kira', '+36 70 431 1523', 'fodor.kira@gmail.com', 'Kukor Márton', '+36 30 111 7611', 0, 3190.00, NULL),
(132, 'cipő', 'S', 0.50, 50, 86, 'Lakatos Tivadar', '+36 70 210 1010', 'lakatos.tivadar@gmail.com', 'Kukor Márton', '+36 30 111 7611', 0, 1490.00, NULL),
(133, 'Horgászbot', 'M', 2.00, 37, 87, 'Németh Anett', '06305437652', 'nemeth.anett@gmail.com', 'Dancs Ferenc', '+36706332457', 0, 1990.00, NULL),
(134, 'Villanykörte', 'S', 0.50, 34, 87, 'Németh Anett', '06305437652', 'nemeth.anett@gmail.com', 'Kukor Márton', '+36 30 111 7611', 1, 1990.00, 'kukor.marton@gmail.com'),
(135, 'Egérfogó', 'M', 1.00, 32, 82, 'Kukor Márton', '+36 30 111 7611', 'kukor.marton@gmail.com', 'Nagy Eszter', '+36 50 241 2543', 0, 1990.00, 'nagy.eszter2001@gmail.com'),
(136, 'Tusfürdő', 'S', 0.50, 53, 81, 'Nagy Eszter', '+36 50 241 2543', 'nagy.eszter2001@gmail.com', 'Kukor Márton', '+36 30 111 7611', 0, 1490.00, 'kukor.marton@gmail.com'),
(137, 'Erősítő', 'L', 15.00, 60, 81, 'Nagy Eszter', '+36 50 241 2543', 'nagy.eszter2001@gmail.com', 'Kovács Viktor', '+36 70 632 5271', 1, 3690.00, 'kovacs.viktor@gmail.com'),
(138, 'Gitár', 'M', 6.00, 35, 91, 'Novák Péter', '06206537214', 'novak.peter@gmail.com', 'Radics Péter', '06705317639', 1, 3190.00, 'radics.peter@gmail.com'),
(139, 'Hegedű', 'M', 6.00, 51, 91, 'Novák Péter', '06206537214', 'novak.peter@gmail.com', 'Varga Tamás', '06705317639', 1, 3190.00, 'varga.tamas@gmail.com'),
(140, 'Pendrive', 'S', 0.10, 42, 94, 'Komlósi Máté', '06706332401', 'komlosi.mate@hbsz.edu.hu', 'Krúcsó Marcell', '06705317639', 0, 1490.00, 'krucso.marcell@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csomagautomata`
--

CREATE TABLE `csomagautomata` (
  `csomagautomata_id` int(11) NOT NULL,
  `iranyitoszam` varchar(10) NOT NULL,
  `helyszin` varchar(150) NOT NULL,
  `nyitvatartas` varchar(100) DEFAULT NULL,
  `utvonal_id` int(11) DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `csomagautomata`
--

INSERT INTO `csomagautomata` (`csomagautomata_id`, `iranyitoszam`, `helyszin`, `nyitvatartas`, `utvonal_id`, `lat`, `lng`) VALUES
(1, '1051', 'Budapest, Deák tér 1.', '0-24', 1, 47.4245760, 19.0717075),
(2, '1061', 'Budapest, Oktogon 5.', '0-24', 2, 47.5056283, 19.0634802),
(3, '9021', 'Győr, Baross utca 12.', '06:00-22:00', 3, 47.6870677, 17.6332031),
(4, '6720', 'Szeged, Kossuth Lajos sétány 4.', '0-24', 4, 46.2563167, 20.1472784),
(5, '4025', 'Debrecen, Piac utca 10.', '0-24', 5, 47.5313533, 21.6253592),
(6, '7621', 'Pécs, Irgalmasok utcája 3.', '0-24', 6, 46.0744233, 18.2290527),
(7, '3525', 'Miskolc, Széchenyi utca 8.', '06:00-23:00', 7, 48.1497186, 20.7993209),
(8, '4400', 'Nyíregyháza, Kossuth tér 7.', '0-24', 8, 47.9549033, 21.7182244),
(9, '8200', 'Veszprém, Jókai utca 14.', '06:00-22:00', 9, 47.0955528, 17.9036430),
(10, '6000', 'Kecskemét, Fő tér 1.', '0-24', 10, 46.9080403, 19.6924483),
(11, '2800', 'Tatabánya, Szent Borbála tér 6.', '0-24', 11, 47.5811651, 18.4003026),
(12, '3300', 'Eger, Dobó tér 3.', '0-24', 12, 47.9029825, 20.3768242),
(13, '8900', 'Zalaegerszeg, Kossuth Lajos utca 5.', '06:00-23:00', 13, 46.8430281, 16.8457627),
(14, '9400', 'Sopron, Várkerület 15.', '0-24', 14, 47.6878914, 16.5913212),
(15, '8000', 'Székesfehérvár, Palotai út 20.', '0-24', 15, 47.1931013, 18.4030866),
(16, '1138', 'Budapest, Váci út 178.', '0-24', 16, 47.5502900, 19.0726473),
(17, '1146', 'Budapest, Lehel tér 5.', '0-24', 17, 47.5178734, 19.0638425),
(18, '1117', 'Budapest, Móricz Zsigmond körtér 2.', '0-24', 18, 47.4781941, 19.0477038),
(19, '1085', 'Budapest, Blaha Lujza tér 1.', '0-24', 19, 47.4962181, 19.0695773),
(20, '1102', 'Budapest, Örs vezér tere 25.', '0-24', 20, 47.5030241, 19.1395952),
(21, '1088', 'Budapest, Rákóczi út 70.', '06:00-23:00', 21, 47.4987720, 19.0752407),
(22, '1117', 'Budapest, Allee Bevásárlóközpont', '0-24', 22, 47.4752373, 19.0492094),
(23, '1082', 'Budapest, Corvin Plaza', '0-24', 23, 47.4859910, 19.0742935),
(24, '1106', 'Budapest, Árkád Örs', '0-24', 24, 47.5028712, 19.1375131),
(25, '1062', 'Budapest, Westend City Center', '0-24', 25, 47.5140855, 19.0591401),
(26, '9023', 'Győr, Árkád Győr', '0-24', 26, 47.6906179, 17.6443250),
(27, '9022', 'Győr, Szent István út 10.', '06:00-22:00', 27, 47.6859396, 17.6409902),
(28, '9024', 'Győr, Budai út 1.', '0-24', 28, 47.6899597, 17.6443312),
(29, '9023', 'Győr, Bartók Béla út 8.', '06:00-22:00', 29, 47.6814886, 17.6381785),
(30, '9025', 'Győr, Malom liget 3.', '0-24', 30, 47.6801740, 17.6447976),
(31, '4026', 'Debrecen, Fórum Bevásárlóközpont', '0-24', 31, 47.5326511, 21.6292129),
(32, '4032', 'Debrecen, Kassai út 26.', '0-24', 32, 47.5423527, 21.6396622),
(33, '4030', 'Debrecen, Hatvan utca 52.', '06:00-22:00', 33, 47.5297680, 21.6171992),
(34, '4028', 'Debrecen, István út 14.', '0-24', 34, 47.5275329, 21.6080740),
(35, '4031', 'Debrecen, Kishegyesi út 1.', '0-24', 35, 47.5308972, 21.6086272),
(36, '6724', 'Szeged, Árkád Szeged', '0-24', 36, 46.2547854, 20.1389231),
(37, '6722', 'Szeged, Tisza Lajos körút 20.', '0-24', 37, 46.2564569, 20.1511940),
(38, '6725', 'Szeged, Kálvária sugárút 12.', '06:00-23:00', 38, 46.2513965, 20.1418991),
(39, '6721', 'Szeged, Mars tér 6.', '0-24', 39, 46.2583399, 20.1401578),
(40, '6723', 'Szeged, Rókusi körút 42.', '0-24', 40, 46.2694991, 20.1391012),
(41, '7622', 'Pécs, Árkád Pécs', '0-24', 41, 46.0722029, 18.2321012),
(42, '7621', 'Pécs, Király utca 30.', '0-24', 42, 46.0768277, 18.2323816),
(43, '7630', 'Pécs, Budai vám 1.', '06:00-22:00', 43, 46.0830052, 18.2707756),
(44, '7632', 'Pécs, Megyeri út 76.', '0-24', 44, 46.0510817, 18.2117117),
(45, '7633', 'Pécs, Siklósi út 52.', '0-24', 45, 46.0568090, 18.2305776),
(46, '3525', 'Miskolc, Szinvapark', '0-24', 46, 48.1030127, 20.7920808),
(47, '3527', 'Miskolc, Andrássy út 98.', '06:00-22:00', 47, 48.1012526, 20.7238278),
(48, '3529', 'Miskolc, Bajcsy-Zsilinszky út 15.', '0-24', 48, 48.1035468, 20.7957159),
(49, '3535', 'Miskolc, Tapolcai út 1.', '0-24', 49, 48.0566981, 20.7781327),
(50, '3530', 'Miskolc, Győri kapu 42.', '06:00-23:00', 50, 48.1044549, 20.7559665),
(51, '4400', 'Nyíregyháza, Korzó Bevásárlóközpont', '0-24', 51, 47.9582770, 21.7175894),
(52, '4405', 'Nyíregyháza, Debreceni út 106.', '0-24', 52, 47.9381330, 21.7193183),
(53, '4406', 'Nyíregyháza, Szegfű utca 75.', '06:00-22:00', 53, 47.9547444, 21.7319880),
(54, '4407', 'Nyíregyháza, Pazonyi út 5.', '0-24', 54, 47.9641682, 21.7243999),
(55, '4408', 'Nyíregyháza, Tokaji út 68.', '0-24', 55, 47.9912987, 21.6619491),
(56, '6000', 'Kecskemét, Malom Központ', '0-24', 56, 46.9081572, 19.6888252),
(57, '6000', 'Kecskemét, Izsáki út 12.', '0-24', 57, 46.8949000, 19.6650853),
(58, '6000', 'Kecskemét, Szolnoki út 23.', '06:00-22:00', 58, 46.9122406, 19.7092722),
(59, '6000', 'Kecskemét, Rákóczi út 14.', '0-24', 59, 46.9101280, 19.6969125),
(60, '6000', 'Kecskemét, Halasi út 29.', '0-24', 60, 46.8864494, 19.6799697),
(61, '8000', 'Székesfehérvár, Alba Plaza', '0-24', 61, 47.1899676, 18.4074161),
(62, '8000', 'Székesfehérvár, Palotai út 8.', '0-24', 62, 47.1922076, 18.4037630),
(63, '8000', 'Székesfehérvár, Budai út 41.', '06:00-22:00', 63, 47.1907445, 18.4243107),
(64, '8000', 'Székesfehérvár, Fiskális út 20.', '0-24', 64, 47.1970237, 18.4468286),
(65, '8000', 'Székesfehérvár, Balatoni út 44.', '0-24', 65, 47.1654635, 18.4034608),
(66, '9700', 'Szombathely, Savaria Plaza', '0-24', 66, 47.2222904, 16.6171718),
(67, '9700', 'Szombathely, Zanati út 70.', '0-24', 67, 47.2395848, 16.6528614),
(68, '9700', 'Szombathely, Thököly utca 5.', '06:00-22:00', 68, 47.2286182, 16.6199988),
(69, '9700', 'Szombathely, Szent Márton utca 12.', '0-24', 69, 47.2320223, 16.6287753),
(70, '9700', 'Szombathely, Körmendi út 92.', '0-24', 70, 47.2140162, 16.6185899),
(71, '3300', 'Eger, Agria Park', '0-24', 71, 47.8995114, 20.3688266),
(72, '3300', 'Eger, Kallómalom utca 88.', '0-24', 72, 47.9175918, 20.3727879),
(73, '3300', 'Eger, Törvényház utca 4.', '06:00-22:00', 73, 47.8997565, 20.3676241),
(74, '3300', 'Eger, Rákóczi út 25.', '0-24', 74, 47.9122239, 20.3700502),
(75, '3300', 'Eger, Sas út 2.', '0-24', 75, 47.8894070, 20.3820176),
(76, '8900', 'Zalaegerszeg, Dísz tér 4.', '0-24', 76, 46.8423553, 16.8465022),
(77, '8900', 'Zalaegerszeg, Kossuth utca 15.', '06:00-23:00', 77, 46.8421904, 16.8457545),
(78, '8900', 'Zalaegerszeg, Ola utca 1.', '0-24', 78, 46.8480540, 16.8327750),
(79, '8900', 'Zalaegerszeg, Sport utca 9.', '0-24', 79, 46.8392550, 16.8626583),
(80, '8900', 'Zalaegerszeg, Landorhegyi út 21.', '0-24', 80, 46.8384582, 16.8286458);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `felhasznalo_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefonszam` varchar(30) DEFAULT NULL,
  `jelszo` varchar(80) NOT NULL,
  `jogosultsag` varchar(20) NOT NULL,
  `token` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`felhasznalo_id`, `nev`, `email`, `telefonszam`, `jelszo`, `jogosultsag`, `token`) VALUES
(1, 'Kiss Péter', 'peter.kiss@gmail.com', '+361234567', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR'),
(2, 'Nagy Anna', 'anna.nagy@gmail.com', '+3620123456', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR'),
(3, 'Tóth Gábor', 'gabor.toth@gmail.com', '+3630123456', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(4, 'Szabó László', 'laszlo.szabo@gmail.com', '+3670123456', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(5, 'Horváth Éva', 'eva.horvath@gmail.com', '+3620987654', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(6, 'Varga Zoltán', 'zoltan.varga@gmail.com', '+3630987654', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(7, 'Kovács Mária', 'maria.kovacs@gmail.com', '+3670987654', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(8, 'Balogh Tamás', 'tamas.balogh@gmail.com', '+3620555123', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(9, 'Papp Judit', 'judit.papp@gmail.com', '+3630555123', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(10, 'Farkas András', 'andras.farkas@gmail.com', '+3670555123', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(11, 'Molnár Katalin', 'katalin.molnar@gmail.com', '+3620111122', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(12, 'Takács István', 'istvan.takacs@gmail.com', '+3630111122', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(13, 'Oláh Lilla', 'lilla.olah@gmail.com', '+3670111122', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(14, 'Lakatos József', 'jozsef.lakatos@gmail.com', '+3620222233', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(15, 'Gál Zsófia', 'zsofia.gal@gmail.com', '+3630222233', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(16, 'Bíró Ádám', 'adam.biro@gmail.com', '+3670222233', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(17, 'Sipos Réka', 'reka.sipos@gmail.com', '+3620333344', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(18, 'Mészáros Dávid', 'david.meszaros@gmail.com', '+3630333344', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(19, 'Simon Beáta', 'beata.simon@gmail.com', '+3670333344', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(20, 'Bodnár Ferenc', 'ferenc.bodnar@gmail.com', '+3620444455', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(21, 'Orbán Noémi', 'noemi.orban@gmail.com', '+3630444455', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(22, 'Hegedűs Márk', 'mark.hegedus@gmail.com', '+3670444455', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(23, 'Kerekes Nóra', 'nora.kerekes@gmail.com', '+3620555566', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(24, 'Vörös Bence', 'bence.voros@gmail.com', '+3630555566', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(25, 'Csontos Ágnes', 'agnes.csontos@gmail.com', '+3670555566', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(26, 'Fodor Roland', 'roland.fodor@gmail.com', '+3620666677', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(27, 'Juhász Dóra', 'dora.juhasz@gmail.com', '+3630666677', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(28, 'Katona Gergely', 'gergely.katona@gmail.com', '+3670666677', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(29, 'Major Eszter', 'eszter.major@gmail.com', '+3620777788', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(30, 'Szalai Miklós', 'miklos.szalai@gmail.com', '+3630777788', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(31, 'Kádár Imre', 'imre.kadar@gmail.com', '+3670777788', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(32, 'Németh Orsolya', 'orsolya.nemeth@gmail.com', '+3620888899', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(33, 'Rácz Viktor', 'viktor.racz@gmail.com', '+3630888899', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(34, 'Lukács Bettina', 'bettina.lukacs@gmail.com', '+3670888899', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(35, 'Kelemen Attila', 'attila.kelemen@gmail.com', '+3620999900', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(36, 'Somogyi Petra', 'petra.somogyi@gmail.com', '+3630999900', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(37, 'Bartha Levente', 'levente.bartha@gmail.com', '+3670999900', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(38, 'Illés Fanni', 'fanni.illes@gmail.com', '+3620102030', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(39, 'Kárpáti Richárd', 'richard.karpati@gmail.com', '+3630102030', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(40, 'Pintér Melinda', 'melinda.pinter@gmail.com', '+3670102030', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(41, 'Szűcs Zoltán', 'zoltan.szucs@gmail.com', '+3620203040', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(42, 'Benkő Erika', 'erika.benko@gmail.com', '+3630203040', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(43, 'Veres Norbert', 'norbert.veres@gmail.com', '+3670203040', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(44, 'Török Ildikó', 'ildiko.torok@gmail.com', '+3620304050', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(45, 'Kiss Roland', 'roland.kiss@gmail.com', '+3630304050', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(46, 'Hajdu Zsuzsa', 'zsuzsa.hajdu@gmail.com', '+3670304050', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(47, 'Fehér Ákos', 'akos.feher@gmail.com', '+3620405060', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(48, 'Barta Klaudia', 'klaudia.barta@gmail.com', '+3630405060', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(49, 'Győri Balázs', 'balazs.gyori@gmail.com', '+3670405060', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(50, 'Szekeres Zita', 'zita.szekeres@gmail.com', '+3620506070', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(51, 'Polgár Dénes', 'denes.polgar@gmail.com', '+3630506070', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(52, 'Kocsis Anita', 'anita.kocsis@gmail.com', '+3670506070', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(53, 'Berki Lóránt', 'lorant.berki@gmail.com', '+3620607080', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(54, 'Pálfi Szilvia', 'szilvia.palfi@gmail.com', '+3630607080', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(55, 'Vadász Gergő', 'gergo.vadasz@gmail.com', '+3670607080', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(56, 'Révész Kinga', 'kinga.revesz@gmail.com', '+3620708090', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(57, 'Szántó Milán', 'milan.szanto@gmail.com', '+3630708090', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(58, 'Bognár Tímea', 'timea.bognar@gmail.com', '+3670708090', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(59, 'Erdős Patrik', 'patrik.erdos@gmail.com', '+3620809100', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(60, 'Király Bernadett', 'bernadett.kiraly@gmail.com', '+3630809100', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(61, 'Halász Róbert', 'robert.halasz@gmail.com', '+3670809100', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(62, 'Lendvai Alexandra', 'alexandra.lendvai@gmail.com', '+3620910111', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(63, 'Jakab Tibor', 'tibor.jakab@gmail.com', '+3630910111', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(64, 'Balla Nikolett', 'nikolett.balla@gmail.com', '+3670910111', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(65, 'Kis Dávid', 'david.kis@gmail.com', '+3620101112', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(66, 'Kele Kitti', 'kitti.kele@gmail.com', '+3630101112', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(67, 'Szendrei Áron', 'aron.szendrei@gmail.com', '+3670101112', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(68, 'Fülöp Réka', 'reka.fulop@gmail.com', '+3620201213', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(69, 'Borsos Márton', 'marton.borsos@gmail.com', '+3630201213', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(70, 'Kincses Laura', 'laura.kincses@gmail.com', '+3670201213', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(71, 'Dombóvári Ákos', 'akos.dombovari@gmail.com', '+3620301314', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(72, 'Hollósi Sára', 'sara.hollosi@gmail.com', '+3630301314', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(73, 'Pap Kristóf', 'kristof.pap@gmail.com', '+3670301314', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(74, 'Vincze Henrietta', 'henrietta.vincze@gmail.com', '+3620401415', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'User', NULL),
(75, 'Tímár Árpád', 'arpad.timar@gmail.com', '+3630401415', '0RWOii6D7/5vgS177ieZuQ==.w6VFGTh94FiUh5q9BRDyazRQYBaroM1qhazSqfJG7gk=', 'Admin', NULL),
(80, 'Kovács Viktor', 'kovacs.viktor@gmail.com', '+36 70 632 5271', 'Zj7UY9QqZqtQWuNers06pg==.HMxF768KL76VeL4hI4QH7RgcIwhWKuCexI0Ub8iXymQ=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjgwIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImtvdmFjcy52aWt0b3JAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsInBlcm1pc3Npb24iOlsiQ3NvbWFnLlJlYWQiLCJDc29tYWcuQ3JlYXRlIiwiQ3NvbWFnYXV0b21hdGEuUmVhZCIsIkZlbGhhc3puYWxvLlJlYWQiLCJGdXRhci5SZWFkIiwiSmFybXUuUmVhZCIsIlN6YWxsaXRhcy5SZWFkIiwiU3phbGxpdGFzLlVwZGF0ZSIsIlV0dm9uYWwuUmVhZCIsIkplbGVudGtlemVzLlJlYWQiLCJKZWxlbnRrZXplcy5DcmVhdGUiLCJLYXBjc29sYXQuUmVhZCIsIkthcGNzb2xhdC5DcmVhdGUiXSwiZXhwIjoxNzc2ODc0NTI0LCJpc3MiOiJIQlNaIiwiYXVkIjoiMTNBIn0.z_XTOxl0iZwj1k5HmNuGJdLrY7cvIpiGKOj1E15KCJU'),
(81, 'Nagy Eszter', 'nagy.eszter2001@gmail.com', '+36 50 241 2543', 'tXoHdCnZZseGw7GOLTf5FQ==.nNwPhAqqveS9vq1dukgreV6pQ2jMQZhU7rvSo73s/JA=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjgxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im5hZ3kuZXN6dGVyMjAwMUBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzY5NTU5OTUsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.WL92UVgHQy3M3cxNt7w-MnE7DQz3ZvVt2EopKR8qacg'),
(82, 'Kukor Márton', 'kukor.marton@gmail.com', '+36 30 111 7611', 'WZG1otwK8O6TJSq5ZnFIaw==.NZTjJj5GoZrwje6J9P9qPn+guSgQgGHD6zE//L5vyD0=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjgyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Imt1a29yLm1hcnRvbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzY5NTQzODYsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ._1H_45ZREqOVT7YDAeUT1xSwnjE7eN28-tylQK7vNo8'),
(83, 'Fodor Kira', 'fodor.kira@gmail.com', '+36 70 431 1523', 'G/dnsiNlVjsx1zLzvU3H4A==.bGZZqhteiytBh2ZM1q1nK3GrwdnFi3HzTX8+rmQ4xiE=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjgzIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImZvZG9yLmtpcmFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsInBlcm1pc3Npb24iOlsiQ3NvbWFnLlJlYWQiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJVdHZvbmFsLlJlYWQiLCJKZWxlbnRrZXplcy5SZWFkIiwiSmVsZW50a2V6ZXMuQ3JlYXRlIiwiS2FwY3NvbGF0LlJlYWQiLCJLYXBjc29sYXQuQ3JlYXRlIl0sImV4cCI6MTc3NjcwNjAwMywiaXNzIjoiSEJTWiIsImF1ZCI6IjEzQSJ9.LqEURkfeq89QaVBiRhq7VVpgSqe05EH7QtLu5j_w_hU'),
(84, 'Orsós Attila', 'orsos.attila@gmail.com', '+36 30 263 5321', 'uSpfbdLcAtbCnuU4ILZ5CA==.26JMYnVCi5w5KepkQWvjALhXZm5WYB+msJwmtGX86H8=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijg0IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im9yc29zLmF0dGlsYUBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzY4NTY4NzIsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.8eLwSO4HImitv7X7CuJ3WaXyUGN7K1FZH-YRrXDDPFo'),
(85, 'Kecskés Tímea', 'kecskes.timea@gmail.com', '+36 50 154 8352', '8XuDQ0lfYiZlPHUycPgI0Q==.yjMmPgUh81bCKy9J/4u/mKXti1tfJDiSiY5JFevIzmg=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijg1IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImtlY3NrZXMudGltZWFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsInBlcm1pc3Npb24iOlsiQ3NvbWFnLlJlYWQiLCJDc29tYWcuQ3JlYXRlIiwiQ3NvbWFnYXV0b21hdGEuUmVhZCIsIkZlbGhhc3puYWxvLlJlYWQiLCJGdXRhci5SZWFkIiwiSmFybXUuUmVhZCIsIlN6YWxsaXRhcy5SZWFkIiwiU3phbGxpdGFzLlVwZGF0ZSIsIlV0dm9uYWwuUmVhZCIsIkplbGVudGtlemVzLlJlYWQiLCJKZWxlbnRrZXplcy5DcmVhdGUiLCJLYXBjc29sYXQuUmVhZCIsIkthcGNzb2xhdC5DcmVhdGUiXSwiZXhwIjoxNzc2ODYxMDg0LCJpc3MiOiJIQlNaIiwiYXVkIjoiMTNBIn0.H82AOYVtWs3POhK1i9BGw7cnwLD1Y6NHAAGzXCn75SU'),
(86, 'Lakatos Tivadar', 'lakatos.tivadar@gmail.com', '+36 70 210 1010', 'fSTktRWnTjsuAEKYh3TpBQ==.3ga3GOGfEn/ozYOiUtqrsQrl2p2f1vRbT9CrCCiNC9Q=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijg2IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Imxha2F0b3MudGl2YWRhckBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzY4NzcxNTUsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.L0mu5LCilrh9rEHtXsLXVAYsF491hIqUcZn6I4RYh30'),
(87, 'Németh Anett', 'nemeth.anett@gmail.com', '06305437652', 'rMQGMJWOKPGZeAqIuxDX5w==.ztbgOw1ztF3Ye2GBvWN8h6cg3Hdkoh5eH3Td83yaops=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijg3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im5lbWV0aC5hbmV0dEBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzY5MzExNTYsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.AX12abgK-28oa2t8FlYS9jZ0N9gf9b26_KGvdvi5QcA'),
(88, 'User User', 'user@gmail.com', '06701112222', 'JIqInUWjF4yeb046CgMvqA==.Wdf+ONpRon81cpQlLQGs5SrVwwSqGR4scywPeZ5kqiQ=', 'User', NULL),
(89, 'Admin Admin', 'admin@gmail.com', '06702223333', 'GUHVMIn6A280mGatQVNfpA==.QFp5QqyQWh2e+Cgjyf5LrKFYBZjOrSaS5OqlV8XwnmA=', 'Admin', NULL),
(90, 'Iszak Martin', 'iszak.martin@gmail.com', '06206537777', '2wbD0mVT0rSIExNUooamQw==.U3QWDJPYTvrKnl9JamMBiIp1VRr8pwWRAFqS24KFndI=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkwIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImlzemFrLm1hcnRpbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzcwMjAzNDcsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.Pb5-ZG0SUePil_0svphqqMednYmtT55GeXCN2uBHbTI'),
(91, 'Novák Péter', 'novak.peter@gmail.com', '06206537214', 'MJNq4KAB093D6h9PNitgUg==.YcUynuetaQjkG5IJDUgwsb+se40j82EQ2iHaT6pvhnE=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkxIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im5vdmFrLnBldGVyQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJwZXJtaXNzaW9uIjpbIkNzb21hZy5SZWFkIiwiQ3NvbWFnLkNyZWF0ZSIsIkNzb21hZ2F1dG9tYXRhLlJlYWQiLCJGZWxoYXN6bmFsby5SZWFkIiwiRnV0YXIuUmVhZCIsIkphcm11LlJlYWQiLCJTemFsbGl0YXMuUmVhZCIsIlN6YWxsaXRhcy5VcGRhdGUiLCJVdHZvbmFsLlJlYWQiLCJKZWxlbnRrZXplcy5SZWFkIiwiSmVsZW50a2V6ZXMuQ3JlYXRlIiwiS2FwY3NvbGF0LlJlYWQiLCJLYXBjc29sYXQuQ3JlYXRlIl0sImV4cCI6MTc3NzA0NDAyNSwiaXNzIjoiSEJTWiIsImF1ZCI6IjEzQSJ9.vG3nAZVnUIIJp5OouNywwaRPZAXhlwq9_lWDeyDDBsA'),
(92, 'Németh Albert', 'nemeth.albert@gmail.com', '06206531031', 'PmLCSvL6bCxWQivqoTAdiA==.9LuP5vgw2P0vSSZ11l+32sT052RqAdnoGANjBMdOXa8=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im5lbWV0aC5hbGJlcnRAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsInBlcm1pc3Npb24iOlsiQ3NvbWFnLlJlYWQiLCJDc29tYWcuQ3JlYXRlIiwiQ3NvbWFnYXV0b21hdGEuUmVhZCIsIkZlbGhhc3puYWxvLlJlYWQiLCJGdXRhci5SZWFkIiwiSmFybXUuUmVhZCIsIlN6YWxsaXRhcy5SZWFkIiwiU3phbGxpdGFzLlVwZGF0ZSIsIlV0dm9uYWwuUmVhZCIsIkplbGVudGtlemVzLlJlYWQiLCJKZWxlbnRrZXplcy5DcmVhdGUiLCJLYXBjc29sYXQuUmVhZCIsIkthcGNzb2xhdC5DcmVhdGUiXSwiZXhwIjoxNzc3MDUxODM5LCJpc3MiOiJIQlNaIiwiYXVkIjoiMTNBIn0.vbLw07CSv9TechX4KPukvsMBqEwiNKBo1Mnxa7lNmfU'),
(93, 'Krúcsó Marcell', 'krucso.marcell@gmail.com', '06705317639', 'egQihn6eiGUmeNC57+2RqA==.PPrlmk83DVlTMJwKx8ZMNto11GuJa72A69oTOZw8zqk=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkzIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImtyZXBsaS50aWJvckBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzcwNTA3NDAsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.NC3nVPSlLFnoZSrmQMiWTupf1hFglE-ZfDQKS0CuDdo'),
(94, 'Komlósi Máté', 'komlosi.mate@hbsz.edu.hu', '06706332401', '/p1kguL5KtF7pDPEuTeeXA==.ffZ1tflXkw00h4GJ0ALnIuFUr2GJDsHZzgwGeRDCux8=', 'User', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijk0IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImtvbWxvc2kubWF0ZS5mZXJlbmNAaGJzei5lZHUuaHUiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwicGVybWlzc2lvbiI6WyJDc29tYWcuUmVhZCIsIkNzb21hZy5DcmVhdGUiLCJDc29tYWdhdXRvbWF0YS5SZWFkIiwiRmVsaGFzem5hbG8uUmVhZCIsIkZ1dGFyLlJlYWQiLCJKYXJtdS5SZWFkIiwiU3phbGxpdGFzLlJlYWQiLCJTemFsbGl0YXMuVXBkYXRlIiwiVXR2b25hbC5SZWFkIiwiSmVsZW50a2V6ZXMuUmVhZCIsIkplbGVudGtlemVzLkNyZWF0ZSIsIkthcGNzb2xhdC5SZWFkIiwiS2FwY3NvbGF0LkNyZWF0ZSJdLCJleHAiOjE3NzcwNTAyNzMsImlzcyI6IkhCU1oiLCJhdWQiOiIxM0EifQ.sLK0Z2DcOMaMmEugunRaAjMqY_rE_1YPUboSHqZ7lN4');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `futar`
--

CREATE TABLE `futar` (
  `futar_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `elerhetoseg` varchar(100) DEFAULT NULL,
  `jogositvany_tipus` varchar(50) DEFAULT NULL,
  `munka_kezdese` datetime DEFAULT current_timestamp(),
  `jarmu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `futar`
--

INSERT INTO `futar` (`futar_id`, `nev`, `elerhetoseg`, `jogositvany_tipus`, `munka_kezdese`, `jarmu_id`) VALUES
(1, 'Tóth Dénes', '+36201111111', 'A', '2010-11-03 00:00:00', 1),
(2, 'Kiss András', '+36202222222', 'B', '2012-05-14 00:00:00', 2),
(3, 'Nagy Péter', '+36203333333', 'B', '2015-01-20 00:00:00', 3),
(4, 'Szabó László', '+36204444444', 'C', '2008-09-01 00:00:00', 4),
(5, 'Horváth Zoltán', '+36205555555', 'B', '2016-03-12 00:00:00', 5),
(6, 'Varga Tamás', '+36206666666', 'A', '2019-07-08 00:00:00', 6),
(7, 'Kovács Gábor', '+36207777777', 'C', '2011-11-22 00:00:00', 7),
(8, 'Balogh István', '+36208888888', 'B', '2014-02-17 00:00:00', 8),
(9, 'Papp Róbert', '+36209999999', 'B', '2017-06-30 00:00:00', 9),
(10, 'Farkas Attila', '+36201010101', 'A', '2020-01-05 00:00:00', 10),
(11, 'Molnár Dávid', '+36202020202', 'B', '2013-04-10 00:00:00', 11),
(12, 'Takács Ferenc', '+36203030303', 'C', '2009-08-19 00:00:00', 12),
(13, 'Oláh Miklós', '+36204040404', 'B', '2016-12-01 00:00:00', 13),
(14, 'Lakatos József', '+36205050505', 'A', '2018-05-23 00:00:00', 14),
(15, 'Gál Roland', '+36206060606', 'B', '2014-09-15 00:00:00', 15),
(16, 'Bíró Ádám', '+36207070707', 'B', '2017-11-07 00:00:00', 16),
(17, 'Sipos Norbert', '+36208080808', 'C', '2010-06-18 00:00:00', 17),
(18, 'Mészáros Tibor', '+36209090909', 'B', '2019-02-02 00:00:00', 18),
(19, 'Simon Levente', '+36201112121', 'A', '2021-04-14 00:00:00', 19),
(20, 'Bodnár Balázs', '+36202223232', 'B', '2015-10-29 00:00:00', 20),
(21, 'Orbán Krisztián', '+36203334343', 'C', '2007-03-11 00:00:00', 21),
(22, 'Hegedűs Márk', '+36204445454', 'B', '2016-08-06 00:00:00', 22),
(23, 'Kerekes Zsolt', '+36205556565', 'A', '2018-01-25 00:00:00', 23),
(24, 'Vörös Imre', '+36206667676', 'B', '2012-07-09 00:00:00', 24),
(25, 'Csontos Lajos', '+36207778787', 'C', '2009-12-13 00:00:00', 25),
(26, 'Fodor Gergely', '+36208889898', 'B', '2017-05-04 00:00:00', 26),
(27, 'Juhász Ákos', '+36209990909', 'A', '2020-09-18 00:00:00', 27),
(28, 'Katona Péter', '+36201020202', 'B', '2014-03-27 00:00:00', 28),
(29, 'Major Róbert', '+36202030303', 'B', '2011-11-30 00:00:00', 29),
(30, 'Szalai Gábor', '+36203040404', 'C', '2008-02-16 00:00:00', 30),
(31, 'Kádár Zsolt', '+36204050505', 'B', '2016-06-21 00:00:00', 1),
(32, 'Németh László', '+36205060606', 'A', '2019-12-02 00:00:00', 2),
(33, 'Rácz Ferenc', '+36206070707', 'B', '2013-10-08 00:00:00', 3),
(34, 'Lukács Tamás', '+36207080808', 'C', '2007-07-19 00:00:00', 4),
(35, 'Kelemen Viktor', '+36208090909', 'B', '2015-04-01 00:00:00', 5),
(36, 'Somogyi Zoltán', '+36209101010', 'A', '2018-08-11 00:00:00', 6),
(37, 'Bartha Bence', '+36201113131', 'B', '2020-02-24 00:00:00', 7),
(38, 'Illés Dániel', '+36202224242', 'B', '2014-12-17 00:00:00', 8),
(39, 'Kárpáti Lóránt', '+36203335353', 'C', '2009-05-09 00:00:00', 9),
(40, 'Pintér Szabolcs', '+36204446464', 'B', '2016-09-28 00:00:00', 10),
(41, 'Szűcs Máté', '+36205557575', 'A', '2019-03-06 00:00:00', 11),
(42, 'Benkő Roland', '+36206668686', 'B', '2011-08-22 00:00:00', 12),
(43, 'Veres Csaba', '+36207779797', 'C', '2008-01-14 00:00:00', 13),
(44, 'Török Gábor', '+36208880808', 'B', '2017-07-03 00:00:00', 14),
(45, 'Kiss Márton', '+36209981818', 'A', '2021-01-19 00:00:00', 15),
(46, 'Hajdu Árpád', '+36201091919', 'B', '2015-06-26 00:00:00', 16),
(47, 'Fehér Rómeó', '+36202102020', 'B', '2013-02-08 00:00:00', 17),
(48, 'Barta Zsolt', '+36203112121', 'C', '2007-10-31 00:00:00', 18),
(49, 'Győri Andor', '+36204122222', 'B', '2018-04-12 00:00:00', 19),
(50, 'Szekeres Tibor', '+36205132323', 'A', '2020-11-05 00:00:00', 20),
(51, 'Polgár Imre', '+36206142424', 'B', '2014-07-18 00:00:00', 21),
(52, 'Kocsis Gábor', '+36207152525', 'C', '2009-09-02 00:00:00', 22),
(53, 'Berki Norbert', '+36208162626', 'B', '2016-01-27 00:00:00', 23),
(54, 'Pálfi Attila', '+36209172727', 'A', '2019-05-16 00:00:00', 24),
(55, 'Vadász Zoltán', '+36201082828', 'B', '2012-12-09 00:00:00', 25),
(56, 'Révész Péter', '+36202092929', 'C', '2008-06-04 00:00:00', 26),
(57, 'Szántó Róbert', '+36203103030', 'B', '2017-03-21 00:00:00', 27),
(58, 'Bognár Krisztián', '+36204113131', 'A', '2020-08-30 00:00:00', 28),
(59, 'Erdős Levente', '+36205123232', 'B', '2015-01-11 00:00:00', 29),
(60, 'Király Tamás', '+36206133333', 'C', '2009-04-25 00:00:00', 30),
(61, 'Halász Ádám', '+36207143434', 'B', '2016-10-07 00:00:00', 1),
(62, 'Lendvai Zoltán', '+36208153535', 'A', '2018-02-15 00:00:00', 2),
(63, 'Jakab Gergő', '+36209163636', 'B', '2014-11-28 00:00:00', 3),
(64, 'Balla Szilárd', '+36201073737', 'C', '2007-12-03 00:00:00', 4),
(65, 'Kis László', '+36202083838', 'B', '2017-06-19 00:00:00', 5),
(66, 'Kele Norbert', '+36203093939', 'A', '2021-09-01 00:00:00', 6),
(67, 'Szendrei Balázs', '+36204104040', 'B', '2015-03-14 00:00:00', 7),
(68, 'Fülöp Gábor', '+36205114141', 'C', '2008-08-27 00:00:00', 8),
(69, 'Borsos Attila', '+36206124242', 'B', '2016-12-20 00:00:00', 9),
(70, 'Kincses Róbert', '+36207134343', 'A', '2019-07-05 00:00:00', 10),
(71, 'Dombóvári Zsolt', '+36208144444', 'B', '2013-09-18 00:00:00', 11),
(72, 'Hollósi Péter', '+36209154545', 'C', '2009-01-29 00:00:00', 12),
(73, 'Pap László', '+36201064646', 'B', '2017-04-10 00:00:00', 13),
(74, 'Vincze Ákos', '+36202074747', 'A', '2020-10-22 00:00:00', 14),
(75, 'Tímár Gábor', '+36203084848', 'B', '2014-05-31 00:00:00', 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jarmu`
--

CREATE TABLE `jarmu` (
  `jarmu_id` int(11) NOT NULL,
  `rendszam` varchar(20) NOT NULL,
  `tipus` varchar(50) DEFAULT NULL,
  `kapacitas_kg` int(11) DEFAULT NULL,
  `allapot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `jarmu`
--

INSERT INTO `jarmu` (`jarmu_id`, `rendszam`, `tipus`, `kapacitas_kg`, `allapot`) VALUES
(1, 'ABC-101', 'Személyautó', 300, 'Használatban'),
(2, 'DEF-202', 'Kisteherautó', 1200, 'Használatban'),
(3, 'GHI-303', 'Furgon', 1000, 'Szabad'),
(4, 'JKL-404', 'Személyautó', 350, 'Szervizben'),
(5, 'MNO-505', 'Kisteherautó', 1500, 'Használatban'),
(6, 'PQR-606', 'Furgon', 1100, 'Szabad'),
(7, 'STU-707', 'Személyautó', 280, 'Használatban'),
(8, 'VWX-808', 'Kisteherautó', 1300, 'Szervizben'),
(9, 'YZA-909', 'Furgon', 900, 'Használatban'),
(10, 'BCD-111', 'Személyautó', 320, 'Szabad'),
(11, 'CDE-222', 'Kisteherautó', 1400, 'Használatban'),
(12, 'EFG-333', 'Furgon', 1000, 'Szervizben'),
(13, 'FGH-444', 'Személyautó', 300, 'Használatban'),
(14, 'GHI-555', 'Kisteherautó', 1600, 'Szabad'),
(15, 'HIJ-666', 'Furgon', 950, 'Használatban'),
(16, 'IJK-777', 'Személyautó', 270, 'Szervizben'),
(17, 'JKL-888', 'Kisteherautó', 1250, 'Használatban'),
(18, 'KLM-999', 'Furgon', 1050, 'Szabad'),
(19, 'LMN-121', 'Személyautó', 340, 'Használatban'),
(20, 'MNO-232', 'Kisteherautó', 1450, 'Szervizben'),
(21, 'NOP-343', 'Furgon', 1150, 'Használatban'),
(22, 'OPQ-454', 'Személyautó', 310, 'Szabad'),
(23, 'PQR-565', 'Kisteherautó', 1550, 'Használatban'),
(24, 'QRS-676', 'Furgon', 980, 'Szervizben'),
(25, 'RST-787', 'Személyautó', 290, 'Használatban'),
(26, 'STU-898', 'Kisteherautó', 1350, 'Szabad'),
(27, 'TUV-909', 'Furgon', 1080, 'Használatban'),
(28, 'UVW-010', 'Személyautó', 360, 'Szervizben'),
(29, 'VWX-121', 'Kisteherautó', 1500, 'Használatban'),
(30, 'WXY-232', 'Furgon', 1020, 'Szabad');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezesek`
--

CREATE TABLE `jelentkezesek` (
  `jelentkezesId` int(11) NOT NULL,
  `felhasznalo_id` int(11) DEFAULT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(30) NOT NULL,
  `lakohely` varchar(100) NOT NULL,
  `pozicio` varchar(50) NOT NULL,
  `tapasztalat` varchar(10) NOT NULL,
  `bemutatkozas` text NOT NULL,
  `letrehozva` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `jelentkezesek`
--

INSERT INTO `jelentkezesek` (`jelentkezesId`, `felhasznalo_id`, `nev`, `email`, `telefon`, `lakohely`, `pozicio`, `tapasztalat`, `bemutatkozas`, `letrehozva`) VALUES
(1, 1, 'Kiss Gábor', 'kissgabor@gmail.com', '+36 70 123 4567', 'Budapest', 'futar', 'igen', '5 év futár tapasztalattal rendelkezem és szeretek önállóan dolgozni.', '2026-03-01 09:12:10'),
(2, 2, 'Nagy Péter', 'nagypeter@gmail.com', '+36 30 234 5678', 'Győr', 'raktar', 'nem', 'Gyorsan tanulok és precíz munkát végzek.', '2026-03-01 10:45:33'),
(3, 3, 'Tóth András', 'tothandras@gmail.com', '+36 20 345 6789', 'Debrecen', 'futar', 'igen', 'Korábban ételfutárként dolgoztam.', '2026-03-02 08:21:05'),
(4, 4, 'Szabó Balázs', 'szabobalazs@gmail.com', '+36 70 456 7890', 'Szeged', 'admin', 'nem', 'Szervezett és pontos vagyok.', '2026-03-02 11:54:27'),
(5, 5, 'Varga Tamás', 'vargatamas@gmail.com', '+36 30 567 8901', 'Pécs', 'ugyfelszolgalat', 'igen', 'Ügyfélkezelésben van tapasztalatom.', '2026-03-03 14:17:42'),
(6, 6, 'Kovács Dániel', 'kovacsdani@gmail.com', '+36 20 678 9012', 'Budapest', 'futar', 'igen', 'Megbízható és terhelhető vagyok.', '2026-03-03 16:32:18'),
(7, 7, 'Molnár Zoltán', 'molnarzoli@gmail.com', '+36 70 789 0123', 'Miskolc', 'raktar', 'igen', 'Raktári tapasztalattal rendelkezem.', '2026-03-04 07:55:04'),
(8, 8, 'Farkas Ádám', 'farkasadam@gmail.com', '+36 30 890 1234', 'Győr', 'futar', 'nem', 'Szeretek vezetni és pontos vagyok.', '2026-03-04 12:08:51'),
(9, 9, 'Horváth Bence', 'horvathbence@gmail.com', '+36 20 901 2345', 'Székesfehérvár', 'futar', 'igen', 'Több év logisztikai tapasztalatom van.', '2026-03-05 09:41:16'),
(10, 10, 'Papp Dávid', 'pappdavid@gmail.com', '+36 70 112 2334', 'Kecskemét', 'admin', 'nem', 'Adminisztrációs feladatokban jártas vagyok.', '2026-03-05 13:22:59'),
(11, 11, 'Lakatos Márk', 'lakatosmark@gmail.com', '+36 30 223 3445', 'Nyíregyháza', 'raktar', 'igen', 'Fizikai munkát jól bírom és csapatban is jól dolgozom.', '2026-03-06 08:05:36'),
(12, 12, 'Juhász Márton', 'juhaszmarton@gmail.com', '+36 20 334 4556', 'Eger', 'futar', 'igen', 'Gyors és pontos munkavégzés jellemez.', '2026-03-06 10:44:08'),
(13, 13, 'Bíró Krisztián', 'birokrisztian@gmail.com', '+36 70 445 5667', 'Budapest', 'ugyfelszolgalat', 'nem', 'Jó kommunikációs készséggel rendelkezem.', '2026-03-06 15:19:50'),
(14, 14, 'Sipos Roland', 'siposroland@gmail.com', '+36 30 556 6778', 'Szolnok', 'futar', 'igen', 'Szeretem a pörgős munkát.', '2026-03-07 07:48:22'),
(15, 15, 'Takács Attila', 'takacsattila@gmail.com', '+36 20 667 7889', 'Veszprém', 'futar', 'nem', 'Motivált és megbízható vagyok.', '2026-03-07 11:37:14'),
(16, 16, 'Oláh Norbert', 'olahnorbert@gmail.com', '+36 70 778 8990', 'Tatabánya', 'raktar', 'igen', 'Raktárkezelési tapasztalattal rendelkezem.', '2026-03-07 14:56:31'),
(17, 17, 'Kelemen Gergő', 'kelemengergo@gmail.com', '+36 30 889 9001', 'Szombathely', 'futar', 'igen', 'Több éves futár tapasztalatom van.', '2026-03-08 08:10:43'),
(18, 18, 'Barta Máté', 'bartamate@gmail.com', '+36 20 990 0112', 'Békéscsaba', 'admin', 'nem', 'Precíz és gyors munkavégzés jellemez.', '2026-03-08 09:28:17'),
(19, 19, 'Szalai Zsolt', 'szalaizsolt@gmail.com', '+36 70 101 1223', 'Szeged', 'futar', 'igen', 'Megbízható és pontos vagyok.', '2026-03-08 12:03:54'),
(20, 20, 'Barna Viktor', 'barnaviktor@gmail.com', '+36 30 212 2334', 'Budapest', 'ugyfelszolgalat', 'igen', 'Ügyfélkezelési tapasztalattal rendelkezem.', '2026-03-08 14:46:21'),
(21, 21, 'Komlósi Máté', 'komlosimate11@gmail.com', '+36 70 633 2408', 'Budapest', 'admin', 'igen', 'Szeretnék admin lenni.', '2026-03-08 16:27:03'),
(22, 22, 'Kovács Viktor', 'kovacs.viktor@gmail.com', '+36 70 632 5271', 'Szombathely', 'ugyfelszolgalat', 'nem', 'Szeretnék segíteni ahogy csak tudok :)', '2026-04-10 10:54:25'),
(23, 23, 'Nagy Eszter', 'nagy.eszter2001@gmail.com', '+36 50 241 2543', 'Szeged', 'futar', 'igen', 'Elbocsátottak az előző munkahelyemről, így most az Önök csapatában szeretnék dolgozni, megbízható, pontos, és gyors vagyok.', '2026-04-10 11:07:40'),
(25, 84, 'Orsós Attila', 'orsos.attila@gmail.com', '+36 30 263 5321', 'Pécs', 'admin', 'igen', 'Szeretek irányítani', '2026-04-22 13:24:00'),
(26, 85, 'Kecskés Tímea', 'kecskes.timea@gmail.com', '+36 50 154 8352', 'Bük', 'ugyfelszolgalat', 'nem', 'Szeretnék megtanulni az emberekkel kommunikálni rendesen', '2026-04-22 13:31:58'),
(27, 86, 'Lakatos Tivadar', 'lakatos.tivadar@gmail.com', '+36 70 210 1010', 'Nyíregyháza', 'futar', 'igen', 'Céget szeretnék váltani, mert utálom a főnökömet', '2026-04-22 17:25:48');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcsolat`
--

CREATE TABLE `kapcsolat` (
  `kapcsolat_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) DEFAULT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefon` varchar(30) NOT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `uzenet` text NOT NULL,
  `letrehozas_datuma` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `kapcsolat`
--

INSERT INTO `kapcsolat` (`kapcsolat_id`, `felhasznalo_id`, `nev`, `email`, `telefon`, `tema`, `uzenet`, `letrehozas_datuma`) VALUES
(1, 1, 'Kovács Viktor', 'kovacs.viktor@gmail.com', '+36 30 123 4567', 'Csomagkövetés', 'Hol található jelenleg a csomagom?', '2026-03-31 08:12:14'),
(2, 2, 'Nagy Anna', 'nagy.anna@gmail.com', '+36 70 234 5678', 'Késés', 'Mikor érkezik meg a csomagom?', '2026-03-31 09:47:52'),
(3, 3, 'Tóth Péter', 'toth.peter@gmail.com', '+36 20 345 6789', 'Sérült csomag', 'Sérülten érkezett meg a csomag.', '2026-04-01 10:05:33'),
(4, 4, 'Szabó Gábor', 'szabo.gabor@gmail.com', '+36 30 456 7890', 'Átirányítás', 'Át lehet irányítani másik címre?', '2026-04-01 11:38:09'),
(5, 5, 'Varga Zsófia', 'varga.zsofia@gmail.com', '+36 70 567 8901', 'Automata', 'Nem működik a csomagautomata.', '2026-04-01 13:21:46'),
(6, 6, 'Horváth László', 'horvath.laszlo@gmail.com', '+36 20 678 9012', 'Számlázás', 'Nem kaptam számlát.', '2026-04-02 07:56:18'),
(7, 7, 'Kiss Máté', 'kiss.mate@gmail.com', '+36 30 789 0123', 'Szállítás', 'Milyen időpontban érkezik a futár?', '2026-04-02 09:14:57'),
(8, 8, 'Molnár Eszter', 'molnar.eszter@gmail.com', '+36 70 890 1234', 'Késés', 'Késik a csomagom.', '2026-04-02 12:43:26'),
(9, 9, 'Balogh Dávid', 'balogh.david@gmail.com', '+36 20 901 2345', 'Csomagkövetés', 'Nem találom a csomagot.', '2026-04-03 08:07:41'),
(10, 10, 'Farkas Réka', 'farkas.reka@gmail.com', '+36 30 112 2334', 'Automata', 'Nem nyílik ki a rekesz.', '2026-04-03 14:29:03'),
(11, 11, 'Papp Bence', 'papp.bence@gmail.com', '+36 70 223 3445', 'Átvétel', 'Más is átveheti a csomagot?', '2026-04-04 10:51:35'),
(12, 12, 'Lakatos István', 'lakatos.istvan@gmail.com', '+36 20 334 4556', 'Szállítás', 'Hol van a futár most?', '2026-04-04 16:18:22'),
(13, 13, 'Takács Gergő', 'takacs.gergo@gmail.com', '+36 30 445 5667', 'Késés', 'Már 2 napja nem érkezett meg.', '2026-04-05 07:33:58'),
(14, 14, 'Oláh Noémi', 'olah.noemi@gmail.com', '+36 70 556 6778', 'Sérült csomag', 'Hiányos a csomag.', '2026-04-05 11:26:44'),
(15, 15, 'Simon Ádám', 'simon.adam@gmail.com', '+36 20 667 7889', 'Számlázás', 'Hibás a számla.', '2026-04-06 09:02:17'),
(16, 16, 'Juhász Kata', 'juhasz.kata@gmail.com', '+36 30 778 8990', 'Csomagkövetés', 'Nem frissül a státusz.', '2026-04-06 15:47:59'),
(17, 17, 'Kelemen Dóra', 'kelemen.dora@gmail.com', '+36 70 889 9001', 'Automata', 'Nem kaptam kódot.', '2026-04-07 08:19:06'),
(18, 18, 'Barta Lili', 'barta.lili@gmail.com', '+36 20 990 0112', 'Átirányítás', 'Másik városba kérem.', '2026-04-08 13:54:28'),
(19, 19, 'Gál Norbert', 'gal.norbert@gmail.com', '+36 30 101 1213', 'Szállítás', 'Mikor érkezik?', '2026-04-09 17:08:11'),
(20, 20, 'Veres Tamás', 'veres.tamas@gmail.com', '+36 70 212 1314', 'Egyéb', 'Szeretnék érdeklődni a szolgáltatásokról.', '2026-04-10 18:36:49'),
(21, 21, 'Nagy Eszter', 'nagy.eszter2001@gmail.com', '+36 50 241 2543', 'csomagkovetes', 'Nem pontos', '2026-04-10 12:07:56'),
(22, 22, 'Donka Bianka', 'donkabianka19@gmail.com', '+36 50 300 2510', 'Egyéb', 'Becsíptem a kezemet a rekeszbe', '2026-04-10 12:32:16'),
(24, NULL, 'Kukor Márton', 'kukor.marton@gmail.com', '+36 30 111 7611', 'Csomagkövetés', 'Szeretném tudni hol jár a csomagom.', '2026-04-21 18:06:27'),
(25, NULL, 'Kukor Márton', 'kukor.marton@gmail.com', '+36 30 111 7611', 'Csomagküldés', 'Nem emlékszem hova küldtem a csomagom.', '2026-04-21 18:10:48'),
(26, 81, 'Nagy Eszter', 'nagy.eszter2001@gmail.com', '+36 50 241 2543', 'Egyéb', 'Admin felület mikor lesz?', '2026-04-21 18:50:17'),
(27, 85, 'Kecskés Tímea', 'kecskes.timea@gmail.com', '+36 50 154 8352', 'Panasz', 'Nem érkezett meg a csomagom időben', '2026-04-22 13:33:43'),
(28, 86, 'Lakatos Tivadar', 'lakatos.tivadar@gmail.com', '+36 70 210 1010', 'Csomagküldés', 'Hogy tudok csomagot küldeni, mert nem találom az oldalon belül :D', '2026-04-22 17:17:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szallitas`
--

CREATE TABLE `szallitas` (
  `szallitas_id` int(11) NOT NULL,
  `csomag_id` int(11) DEFAULT NULL,
  `futar_id` int(11) DEFAULT NULL,
  `utvonal_id` int(11) DEFAULT NULL,
  `jarmu_id` int(11) DEFAULT NULL,
  `idopont` datetime DEFAULT current_timestamp(),
  `allapot` varchar(50) DEFAULT NULL,
  `varhato_erkezes` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `szallitas`
--

INSERT INTO `szallitas` (`szallitas_id`, `csomag_id`, `futar_id`, `utvonal_id`, `jarmu_id`, `idopont`, `allapot`, `varhato_erkezes`) VALUES
(1, 1, 1, 1, 1, '2025-01-05 08:12:10', 'Teljesítve', '2025-01-05 11:12:10'),
(2, 2, 2, 2, 2, '2025-01-05 09:30:45', 'Teljesítve', '2025-01-05 12:30:45'),
(3, 3, 3, 3, 3, '2025-01-05 10:15:22', 'Teljesítve', '2025-01-05 13:15:22'),
(4, 4, 4, 4, 4, '2025-01-05 11:05:00', 'Törölve', NULL),
(5, 5, 5, 5, 5, '2025-01-05 12:40:18', 'Teljesítve', '2025-01-05 15:40:18'),
(6, 6, 6, 6, 6, '2025-01-05 13:25:33', 'Teljesítve', '2025-01-05 16:25:33'),
(7, 7, 7, 7, 7, '2025-01-05 14:10:09', 'Teljesítve', '2025-01-05 17:10:09'),
(8, 8, 8, 8, 8, '2025-01-05 15:55:44', 'Teljesítve', '2025-01-05 18:55:44'),
(9, 9, 9, 9, 9, '2025-01-05 16:20:11', 'Teljesítve', '2025-01-05 19:20:11'),
(10, 10, 10, 10, 10, '2025-01-05 17:45:59', 'Teljesítve', '2025-01-05 20:45:59'),
(11, 11, 11, 11, 11, '2025-01-06 08:05:12', 'Teljesítve', '2025-01-06 11:05:12'),
(12, 12, 12, 12, 12, '2025-01-06 09:18:47', 'Teljesítve', '2025-01-06 12:18:47'),
(13, 13, 13, 13, 13, '2025-01-06 10:44:31', 'Teljesítve', '2025-01-06 13:44:31'),
(14, 14, 14, 14, 14, '2025-01-06 11:29:00', 'Teljesítve', '2025-01-06 14:29:00'),
(15, 15, 15, 15, 15, '2025-01-06 12:50:26', 'Törölve', NULL),
(16, 16, 16, 16, 16, '2025-01-06 13:35:10', 'Teljesítve', '2025-01-06 16:35:10'),
(17, 17, 17, 17, 17, '2025-01-06 14:48:42', 'Teljesítve', '2025-01-06 17:48:42'),
(18, 18, 18, 18, 18, '2025-01-06 15:22:19', 'Teljesítve', '2025-01-06 18:22:19'),
(19, 19, 19, 19, 19, '2025-01-06 16:55:55', 'Teljesítve', '2025-01-06 19:55:55'),
(20, 20, 20, 20, 20, '2025-01-06 17:40:08', 'Teljesítve', '2025-01-06 20:40:08'),
(21, 21, 21, 21, 21, '2025-01-07 08:10:33', 'Teljesítve', '2025-01-07 11:10:33'),
(22, 22, 22, 22, 22, '2025-01-07 09:45:21', 'Teljesítve', '2025-01-07 12:45:21'),
(23, 23, 23, 23, 23, '2025-01-07 10:30:54', 'Teljesítve', '2025-01-07 13:30:54'),
(24, 24, 24, 24, 24, '2025-01-07 11:15:18', 'Teljesítve', '2025-01-07 14:15:18'),
(25, 25, 25, 25, 25, '2025-01-07 12:05:40', 'Törölve', NULL),
(26, 26, 26, 26, 26, '2025-01-07 13:28:09', 'Teljesítve', '2025-01-07 16:28:09'),
(27, 27, 27, 27, 27, '2025-01-07 14:50:12', 'Teljesítve', '2025-01-07 17:50:12'),
(28, 28, 28, 28, 28, '2025-01-07 15:35:44', 'Teljesítve', '2025-01-07 18:35:44'),
(29, 29, 29, 29, 29, '2025-01-07 16:10:27', 'Teljesítve', '2025-01-07 19:10:27'),
(30, 30, 30, 30, 30, '2025-01-07 17:55:01', 'Teljesítve', '2025-01-07 20:55:01'),
(31, 31, 31, 31, 1, '2025-01-08 08:20:19', 'Teljesítve', '2025-01-08 11:20:19'),
(32, 32, 32, 32, 2, '2025-01-08 09:05:33', 'Teljesítve', '2025-01-08 12:05:33'),
(33, 33, 33, 33, 3, '2025-01-08 10:40:48', 'Teljesítve', '2025-01-08 13:40:48'),
(34, 34, 34, 34, 4, '2025-01-08 11:22:07', 'Teljesítve', '2025-01-08 14:22:07'),
(35, 35, 35, 35, 5, '2025-01-08 12:55:59', 'Teljesítve', '2025-01-08 15:55:59'),
(36, 36, 36, 36, 6, '2025-01-08 13:35:14', 'Teljesítve', '2025-01-08 16:35:14'),
(37, 37, 37, 37, 7, '2025-01-08 14:18:41', 'Teljesítve', '2025-01-08 17:18:41'),
(38, 38, 38, 38, 8, '2025-01-08 15:42:06', 'Teljesítve', '2025-01-08 18:42:06'),
(39, 39, 39, 39, 9, '2025-01-08 16:27:55', 'Teljesítve', '2025-01-08 19:27:55'),
(40, 40, 40, 40, 10, '2025-01-08 17:10:22', 'Teljesítve', '2025-01-08 20:10:22'),
(41, 41, 41, 41, 11, '2025-01-09 08:15:00', 'Teljesítve', '2025-01-09 11:15:00'),
(42, 42, 42, 42, 12, '2025-01-09 09:30:11', 'Teljesítve', '2025-01-09 12:30:11'),
(43, 43, 43, 43, 13, '2025-01-09 10:45:29', 'Teljesítve', '2025-01-09 13:45:29'),
(44, 44, 44, 44, 14, '2025-01-09 11:18:42', 'Teljesítve', '2025-01-09 14:18:42'),
(45, 45, 45, 45, 15, '2025-01-09 12:40:55', 'Teljesítve', '2025-01-09 15:40:55'),
(46, 46, 46, 46, 16, '2025-01-09 13:25:33', 'Teljesítve', '2025-01-09 16:25:33'),
(47, 47, 47, 47, 17, '2025-01-09 14:55:08', 'Teljesítve', '2025-01-09 17:55:08'),
(48, 48, 48, 48, 18, '2025-01-09 15:35:19', 'Teljesítve', '2025-01-09 18:35:19'),
(49, 49, 49, 49, 19, '2025-01-09 16:10:44', 'Teljesítve', '2025-01-09 19:10:44'),
(50, 50, 50, 50, 20, '2025-01-09 17:45:02', 'Teljesítve', '2025-01-09 20:45:02'),
(51, 51, 51, 51, 21, '2025-01-10 08:05:18', 'Teljesítve', '2025-01-10 11:05:18'),
(52, 52, 52, 52, 22, '2025-01-10 09:22:41', 'Teljesítve', '2025-01-10 12:22:41'),
(53, 53, 53, 53, 23, '2025-01-10 10:48:36', 'Teljesítve', '2025-01-10 13:48:36'),
(54, 54, 54, 54, 24, '2025-01-10 11:30:55', 'Teljesítve', '2025-01-10 14:30:55'),
(55, 55, 55, 55, 25, '2025-01-10 12:15:09', 'Törölve', NULL),
(56, 56, 56, 56, 26, '2025-01-10 13:40:27', 'Teljesítve', '2025-01-10 16:40:27'),
(57, 57, 57, 57, 27, '2025-01-10 14:20:33', 'Teljesítve', '2025-01-10 17:20:33'),
(58, 58, 58, 58, 28, '2025-01-10 15:55:48', 'Teljesítve', '2025-01-10 18:55:48'),
(59, 59, 59, 59, 29, '2025-01-10 16:35:14', 'Teljesítve', '2025-01-10 19:35:14'),
(60, 60, 60, 60, 30, '2025-01-10 17:50:59', 'Teljesítve', '2025-01-10 20:50:59'),
(61, 61, 61, 61, 1, '2025-01-11 08:12:00', 'Teljesítve', '2025-01-11 11:12:00'),
(62, 62, 62, 62, 2, '2025-01-11 09:45:10', 'Teljesítve', '2025-01-11 12:45:10'),
(63, 63, 63, 63, 3, '2025-01-11 10:30:42', 'Teljesítve', '2025-01-11 13:30:42'),
(64, 64, 64, 64, 4, '2025-01-11 11:18:29', 'Teljesítve', '2025-01-11 14:18:29'),
(65, 65, 65, 65, 5, '2025-01-11 12:50:37', 'Teljesítve', '2025-01-11 15:50:37'),
(66, 66, 66, 66, 6, '2025-01-11 13:35:55', 'Teljesítve', '2025-01-11 16:35:55'),
(67, 67, 67, 67, 7, '2025-01-11 14:22:11', 'Teljesítve', '2025-01-11 17:22:11'),
(68, 68, 68, 68, 8, '2025-01-11 15:48:09', 'Teljesítve', '2025-01-11 18:48:09'),
(69, 69, 69, 69, 9, '2025-01-11 16:30:44', 'Teljesítve', '2025-01-11 19:30:44'),
(70, 70, 70, 70, 10, '2025-01-11 17:55:01', 'Teljesítve', '2025-01-11 20:55:01'),
(71, 71, 71, 71, 11, '2025-01-12 08:05:18', 'Teljesítve', '2025-01-12 11:05:18'),
(72, 72, 72, 72, 12, '2025-01-12 09:20:33', 'Teljesítve', '2025-01-12 12:20:33'),
(73, 73, 73, 73, 13, '2025-01-12 10:45:49', 'Teljesítve', '2025-01-12 13:45:49'),
(74, 74, 74, 74, 14, '2025-01-12 11:35:27', 'Teljesítve', '2025-01-12 14:35:27'),
(75, 75, 75, 75, 15, '2025-01-12 12:10:55', 'Teljesítve', '2025-01-12 15:10:55'),
(76, 76, 5, 76, 5, '2025-01-12 13:40:18', 'Teljesítve', '2025-01-12 16:40:18'),
(77, 77, 12, 77, 12, '2025-01-12 14:25:36', 'Teljesítve', '2025-01-12 17:25:36'),
(78, 78, 23, 78, 23, '2025-01-12 15:55:41', 'Teljesítve', '2025-01-12 18:55:41'),
(79, 79, 34, 79, 4, '2025-01-12 16:35:09', 'Teljesítve', '2025-01-12 19:35:09'),
(80, 80, 45, 80, 15, '2025-01-12 17:50:58', 'Teljesítve', '2025-01-12 20:50:58'),
(81, 81, 56, 81, 26, '2025-01-13 08:15:22', 'Teljesítve', '2025-01-13 11:15:22'),
(82, 82, 67, 82, 7, '2025-01-13 09:30:40', 'Teljesítve', '2025-01-13 12:30:40'),
(83, 83, 18, 83, 18, '2025-01-13 10:45:11', 'Teljesítve', '2025-01-13 13:45:11'),
(84, 84, 29, 84, 29, '2025-01-13 11:20:59', 'Teljesítve', '2025-01-13 14:20:59'),
(85, 85, 40, 85, 10, '2025-01-13 12:55:33', 'Teljesítve', '2025-01-13 15:55:33'),
(86, 86, 51, 86, 21, '2025-01-13 13:35:10', 'Teljesítve', '2025-01-13 16:35:10'),
(87, 87, 62, 87, 2, '2025-01-13 14:18:47', 'Teljesítve', '2025-01-13 17:18:47'),
(88, 88, 73, 88, 13, '2025-01-13 15:45:28', 'Teljesítve', '2025-01-13 18:45:28'),
(89, 89, 14, 89, 14, '2025-01-13 16:30:02', 'Teljesítve', '2025-01-13 19:30:02'),
(90, 90, 25, 90, 25, '2025-01-13 17:55:44', 'Teljesítve', '2025-01-13 20:55:44'),
(91, 91, 36, 91, 6, '2025-01-14 08:10:19', 'Teljesítve', '2025-01-14 11:10:19'),
(92, 92, 47, 92, 17, '2025-01-14 09:25:33', 'Teljesítve', '2025-01-14 12:25:33'),
(93, 93, 58, 93, 28, '2025-01-14 10:40:55', 'Teljesítve', '2025-01-14 13:40:55'),
(94, 94, 69, 94, 9, '2025-01-14 11:35:41', 'Teljesítve', '2025-01-14 14:35:41'),
(95, 95, 70, 95, 10, '2025-01-14 12:50:09', 'Teljesítve', '2025-01-14 15:50:09'),
(96, 96, 11, 96, 11, '2025-01-14 13:20:58', 'Teljesítve', '2025-01-14 16:20:58'),
(97, 97, 22, 97, 22, '2025-01-14 14:45:36', 'Teljesítve', '2025-01-14 17:45:36'),
(98, 98, 33, 98, 3, '2025-01-14 15:30:11', 'Teljesítve', '2025-01-14 18:30:11'),
(99, 99, 44, 99, 14, '2025-01-14 16:55:49', 'Teljesítve', '2025-01-14 19:55:49'),
(100, 100, 55, 100, 25, '2025-01-14 17:40:00', 'Teljesítve', '2025-01-14 20:40:00'),
(101, 130, 1, 1, 1, '2026-04-20 18:07:55', 'Törölve', NULL),
(102, 131, 1, 1, 1, '2026-04-20 18:30:16', 'Törölve', NULL),
(103, 132, 1, 1, 1, '2026-04-22 17:20:41', 'Teljesítve', '2026-04-22 20:20:41'),
(104, 133, 1, 1, 1, '2026-04-23 09:00:43', 'Folyamatban', NULL),
(105, 134, 34, 34, 17, '2026-04-23 09:47:32', 'Folyamatban', '2026-04-24 05:47:32'),
(106, 135, 52, 32, 23, '2026-04-23 14:59:51', 'Folyamatban', '2026-04-24 07:59:51'),
(107, 136, 41, 53, 17, '2026-04-23 15:22:17', 'Folyamatban', '2026-04-24 10:22:17'),
(108, 137, 31, 60, 14, '2026-04-23 15:54:27', 'Folyamatban', '2026-04-24 15:54:27'),
(109, 138, 69, 35, 12, '2026-04-24 09:50:07', 'Törölve', '2026-04-25 00:50:07'),
(110, 139, 6, 51, 25, '2026-04-24 16:21:41', 'Folyamatban', '2026-04-25 10:21:41'),
(111, 140, 55, 42, 5, '2026-04-24 18:09:31', 'Folyamatban', '2026-04-25 00:09:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utvonal`
--

CREATE TABLE `utvonal` (
  `utvonal_id` int(11) NOT NULL,
  `kezdopont` varchar(50) NOT NULL,
  `vegpont` varchar(50) NOT NULL,
  `hossz(km)` int(10) NOT NULL,
  `forgalom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `utvonal`
--

INSERT INTO `utvonal` (`utvonal_id`, `kezdopont`, `vegpont`, `hossz(km)`, `forgalom`) VALUES
(1, 'Budapest', 'Szombathely', 200, 'enyhe'),
(2, 'Budapest', 'Győr', 120, 'közepes'),
(3, 'Budapest', 'Debrecen', 230, 'erős'),
(4, 'Budapest', 'Szeged', 175, 'közepes'),
(5, 'Budapest', 'Pécs', 210, 'enyhe'),
(6, 'Budapest', 'Miskolc', 180, 'erős'),
(7, 'Budapest', 'Eger', 135, 'közepes'),
(8, 'Budapest', 'Kecskemét', 90, 'enyhe'),
(9, 'Budapest', 'Nyíregyháza', 245, 'erős'),
(10, 'Budapest', 'Veszprém', 125, 'közepes'),
(11, 'Győr', 'Sopron', 70, 'enyhe'),
(12, 'Győr', 'Mosonmagyaróvár', 45, 'enyhe'),
(13, 'Győr', 'Tatabánya', 95, 'közepes'),
(14, 'Győr', 'Székesfehérvár', 120, 'közepes'),
(15, 'Győr', 'Pápa', 85, 'enyhe'),
(16, 'Győr', 'Veszprém', 90, 'közepes'),
(17, 'Győr', 'Zalaegerszeg', 160, 'erős'),
(18, 'Győr', 'Kaposvár', 190, 'erős'),
(19, 'Győr', 'Pécs', 220, 'erős'),
(20, 'Győr', 'Szombathely', 140, 'közepes'),
(21, 'Debrecen', 'Nyíregyháza', 50, 'enyhe'),
(22, 'Debrecen', 'Miskolc', 120, 'közepes'),
(23, 'Debrecen', 'Eger', 140, 'közepes'),
(24, 'Debrecen', 'Szolnok', 110, 'enyhe'),
(25, 'Debrecen', 'Békéscsaba', 95, 'enyhe'),
(26, 'Debrecen', 'Szeged', 200, 'erős'),
(27, 'Debrecen', 'Kecskemét', 165, 'közepes'),
(28, 'Debrecen', 'Pécs', 310, 'erős'),
(29, 'Debrecen', 'Kaposvár', 330, 'erős'),
(30, 'Debrecen', 'Székesfehérvár', 290, 'erős'),
(31, 'Szeged', 'Kecskemét', 85, 'közepes'),
(32, 'Szeged', 'Békéscsaba', 110, 'enyhe'),
(33, 'Szeged', 'Szolnok', 120, 'közepes'),
(34, 'Szeged', 'Hódmezővásárhely', 25, 'enyhe'),
(35, 'Szeged', 'Debrecen, Kishegyesi út 1.', 35, 'enyhe'),
(36, 'Szeged', 'Pécs', 210, 'erős'),
(37, 'Szeged', 'Kaposvár', 240, 'erős'),
(38, 'Szeged', 'Veszprém', 260, 'erős'),
(39, 'Szeged', 'Zalaegerszeg', 290, 'erős'),
(40, 'Szeged', 'Szombathely', 350, 'erős'),
(41, 'Pécs', 'Kaposvár', 110, 'közepes'),
(42, 'Pécs', 'Pécs, Király utca 30.', 75, 'enyhe'),
(43, 'Pécs', 'Dunaújváros', 130, 'közepes'),
(44, 'Pécs', 'Székesfehérvár', 190, 'közepes'),
(45, 'Pécs', 'Veszprém', 170, 'közepes'),
(46, 'Pécs', 'Zalaegerszeg', 160, 'közepes'),
(47, 'Pécs', 'Nagykanizsa', 140, 'enyhe'),
(48, 'Pécs', 'Siófok', 150, 'erős'),
(49, 'Pécs', 'Balatonfüred', 180, 'erős'),
(50, 'Pécs', 'Győr', 220, 'erős'),
(51, 'Miskolc', 'Nyíregyháza, Korzó Bevásárlóközpont', 70, 'enyhe'),
(52, 'Miskolc', 'Kazincbarcika', 35, 'enyhe'),
(53, 'Miskolc', 'Ózd', 50, 'enyhe'),
(54, 'Miskolc', 'Nyíregyháza', 135, 'közepes'),
(55, 'Miskolc', 'Szolnok', 160, 'közepes'),
(56, 'Miskolc', 'Budapest', 180, 'erős'),
(57, 'Miskolc', 'Kecskemét', 210, 'erős'),
(58, 'Miskolc', 'Szeged', 260, 'erős'),
(59, 'Miskolc', 'Pécs', 300, 'erős'),
(60, 'Miskolc', 'Kecskemét, Halasi út 29.', 360, 'erős'),
(61, 'Veszprém', 'Székesfehérvár', 60, 'közepes'),
(62, 'Veszprém', 'Balatonfüred', 25, 'enyhe'),
(63, 'Veszprém', 'Ajka', 35, 'enyhe'),
(64, 'Veszprém', 'Zirc', 40, 'enyhe'),
(65, 'Veszprém', 'Pápa', 60, 'közepes'),
(66, 'Veszprém', 'Győr', 90, 'közepes'),
(67, 'Veszprém', 'Kaposvár', 140, 'közepes'),
(68, 'Veszprém', 'Nagykanizsa', 155, 'közepes'),
(69, 'Veszprém', 'Szombathely', 170, 'közepes'),
(70, 'Veszprém', 'Zalaegerszeg', 120, 'közepes'),
(71, 'Székesfehérvár', 'Dunaújváros', 55, 'enyhe'),
(72, 'Székesfehérvár', 'Siófok', 70, 'közepes'),
(73, 'Székesfehérvár', 'Balatonfüred', 85, 'közepes'),
(74, 'Székesfehérvár', 'Kecskemét', 130, 'közepes'),
(75, 'Székesfehérvár', 'Szolnok', 160, 'erős'),
(76, 'Székesfehérvár', 'Pécs', 190, 'közepes'),
(77, 'Székesfehérvár', 'Kaposvár', 170, 'közepes'),
(78, 'Székesfehérvár', 'Zalaegerszeg', 200, 'erős'),
(79, 'Székesfehérvár', 'Szombathely', 210, 'erős'),
(80, 'Székesfehérvár', 'Győr', 120, 'közepes'),
(81, 'Nyíregyháza', 'Debrecen', 50, 'enyhe'),
(82, 'Nyíregyháza', 'Mátészalka', 55, 'enyhe'),
(83, 'Nyíregyháza', 'Vásárosnamény', 70, 'enyhe'),
(84, 'Nyíregyháza', 'Tokaj', 60, 'enyhe'),
(85, 'Nyíregyháza', 'Miskolc', 135, 'közepes'),
(86, 'Nyíregyháza', 'Eger', 160, 'közepes'),
(87, 'Nyíregyháza', 'Szolnok', 190, 'erős'),
(88, 'Nyíregyháza', 'Kecskemét', 230, 'erős'),
(89, 'Nyíregyháza', 'Budapest', 245, 'erős'),
(90, 'Nyíregyháza', 'Pécs', 340, 'erős'),
(91, 'Zalaegerszeg', 'Nagykanizsa', 50, 'enyhe'),
(92, 'Zalaegerszeg', 'Szombathely', 65, 'enyhe'),
(93, 'Zalaegerszeg', 'Keszthely', 55, 'enyhe'),
(94, 'Zalaegerszeg', 'Veszprém', 120, 'közepes'),
(95, 'Zalaegerszeg', 'Győr', 160, 'közepes'),
(96, 'Zalaegerszeg', 'Kaposvár', 145, 'közepes'),
(97, 'Zalaegerszeg', 'Pécs', 160, 'közepes'),
(98, 'Zalaegerszeg', 'Székesfehérvár', 200, 'erős'),
(99, 'Zalaegerszeg', 'Budapest', 230, 'erős'),
(100, 'Zalaegerszeg', 'Debrecen', 370, 'erős');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csomag`
--
ALTER TABLE `csomag`
  ADD PRIMARY KEY (`csomag_id`),
  ADD KEY `csomag_csafk` (`csomagautomata_id`),
  ADD KEY `csomag_fhfk` (`felhasznalo_id`);

--
-- A tábla indexei `csomagautomata`
--
ALTER TABLE `csomagautomata`
  ADD PRIMARY KEY (`csomagautomata_id`),
  ADD KEY `csomagautomata_uvfk` (`utvonal_id`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`felhasznalo_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefonszam` (`telefonszam`);

--
-- A tábla indexei `futar`
--
ALTER TABLE `futar`
  ADD PRIMARY KEY (`futar_id`),
  ADD UNIQUE KEY `elerhetoseg` (`elerhetoseg`),
  ADD KEY `futar_jmfk` (`jarmu_id`);

--
-- A tábla indexei `jarmu`
--
ALTER TABLE `jarmu`
  ADD PRIMARY KEY (`jarmu_id`),
  ADD UNIQUE KEY `rendszam` (`rendszam`);

--
-- A tábla indexei `jelentkezesek`
--
ALTER TABLE `jelentkezesek`
  ADD PRIMARY KEY (`jelentkezesId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefon` (`telefon`),
  ADD KEY `jelentkezes_fhfk` (`felhasznalo_id`);

--
-- A tábla indexei `kapcsolat`
--
ALTER TABLE `kapcsolat`
  ADD PRIMARY KEY (`kapcsolat_id`),
  ADD KEY `kapcsolat_fhfk` (`felhasznalo_id`);

--
-- A tábla indexei `szallitas`
--
ALTER TABLE `szallitas`
  ADD PRIMARY KEY (`szallitas_id`),
  ADD KEY `szallitas_ibfk_1` (`futar_id`),
  ADD KEY `szallitas_ibfk_2` (`utvonal_id`),
  ADD KEY `szallitas_csomag_fk_idx` (`csomag_id`),
  ADD KEY `szallitas_jarmu_fk_idx` (`jarmu_id`);

--
-- A tábla indexei `utvonal`
--
ALTER TABLE `utvonal`
  ADD PRIMARY KEY (`utvonal_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csomag`
--
ALTER TABLE `csomag`
  MODIFY `csomag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT a táblához `csomagautomata`
--
ALTER TABLE `csomagautomata`
  MODIFY `csomagautomata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT a táblához `futar`
--
ALTER TABLE `futar`
  MODIFY `futar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT a táblához `jarmu`
--
ALTER TABLE `jarmu`
  MODIFY `jarmu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT a táblához `jelentkezesek`
--
ALTER TABLE `jelentkezesek`
  MODIFY `jelentkezesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `kapcsolat`
--
ALTER TABLE `kapcsolat`
  MODIFY `kapcsolat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT a táblához `szallitas`
--
ALTER TABLE `szallitas`
  MODIFY `szallitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT a táblához `utvonal`
--
ALTER TABLE `utvonal`
  MODIFY `utvonal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `csomag`
--
ALTER TABLE `csomag`
  ADD CONSTRAINT `csomag_csafk` FOREIGN KEY (`csomagautomata_id`) REFERENCES `csomagautomata` (`csomagautomata_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `csomag_fhfk` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `csomagautomata`
--
ALTER TABLE `csomagautomata`
  ADD CONSTRAINT `csomagautomata_uvfk` FOREIGN KEY (`utvonal_id`) REFERENCES `utvonal` (`utvonal_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Megkötések a táblához `futar`
--
ALTER TABLE `futar`
  ADD CONSTRAINT `futar_jmfk` FOREIGN KEY (`jarmu_id`) REFERENCES `jarmu` (`jarmu_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Megkötések a táblához `jelentkezesek`
--
ALTER TABLE `jelentkezesek`
  ADD CONSTRAINT `jelentkezes_fhfk` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Megkötések a táblához `kapcsolat`
--
ALTER TABLE `kapcsolat`
  ADD CONSTRAINT `kapcsolat_fhfk` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Megkötések a táblához `szallitas`
--
ALTER TABLE `szallitas`
  ADD CONSTRAINT `szallitas_csomag_fk` FOREIGN KEY (`csomag_id`) REFERENCES `csomag` (`csomag_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `szallitas_ibfk_1` FOREIGN KEY (`futar_id`) REFERENCES `futar` (`futar_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `szallitas_ibfk_2` FOREIGN KEY (`utvonal_id`) REFERENCES `utvonal` (`utvonal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `szallitas_jarmu_fk` FOREIGN KEY (`jarmu_id`) REFERENCES `jarmu` (`jarmu_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
