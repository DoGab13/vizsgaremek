-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 28. 10:48
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
-- Adatbázis: `quiz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `imagePath` varchar(30) NOT NULL,
  `answer1` varchar(30) NOT NULL,
  `answer2` varchar(30) NOT NULL,
  `answer3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `questions`
--

INSERT INTO `questions` (`id`, `name`, `imagePath`, `answer1`, `answer2`, `answer3`) VALUES
(1, 'piramis', 'src/img/1.jpg', 'A gízai piramisok', 'Alexandriai világítótorony', 'Hamurapi sziklatemploma'),
(2, 'A Magyar Parlament', 'src/img/3.jpg', 'Alexandriai világítótorony', 'Nápolyi kőszínházak', 'A Magyar Parlament'),
(3, 'moai', 'src/img/moai.jpg', 'Húsvét-Szigetek, Moai szobor', 'Sechell szigetek, törzsi szobr', 'Arámiai ősszobrok'),
(4, 'colosseum', 'src/img/colosseum.jpg', 'Achropolis Athén', 'Colosseum, Róma', 'Nápolyi kőszínházak'),
(5, 'bison', 'src/img/bison.jpg', 'Neandervölgyi barlangrajz', 'Bison barlang, Altamira', 'Bivaly fresko, Nápoly'),
(6, 'Stonhenge', 'src/img/stonehenge.jpg', 'Törzsi kőszobrok, Seychelles ', 'Közép-Afrika, templom romok', 'Stonehenge, Anglia'),
(7, 'Adam', 'src/img/adam.jpg', 'Apa és Fia, Leonardo de Vinci', 'Ádám Teremtése, Sixtus-kápolna', 'Érintés, ismeretlen művész'),
(8, 'Lánchíd', 'src/img/lanchid.jpg', 'Qubaro-ma híd, Botswana', 'Széchényi Lánchíd, Budapest', 'London, Temse híd'),
(9, 'Saint Basil', 'src/img/saintbasil.jpg', 'Boldog Vazul-székesegyház', 'Gaudi Színes katedrális', 'Téli palota, Szentpétervár'),
(10, 'Taj Mahal', 'src/img/2.jpg', 'Alexandriai világítótorony', 'Hamurapi sziklatemploma', 'Taj Mahal'),
(11, 'Bláthy', 'src/img/blathy.jpg', 'Blathy Suli', 'A Tudás háza', 'Informatikai központ'),
(12, 'moai', 'src/img/moai.jpg', 'Húsvét-Szigetek, Moai szobor c', 'Sechell szigetek, törzsi szobr', 'Arámiai ősszobrok'),
(13, 'moai', 'src/img/moai.jpg', 'Húsvét-Szigetek, Moai szobor c', 'Sechell szigetek, törzsi szobr', 'Arámiai ősszobrok'),
(14, 'colosseum', 'src/img/colosseum.jpg', 'Achropolis Athén', 'Nápolyi kőszínházak', 'Colosseum, Róma'),
(15, 'A Megváltó Krisztus szobor', 'src/img/AMegváltóKrisztus.jpg', 'Megváltó Krisztus, Brazília', 'Áldó Krisztus szobor, Tarcal', 'Krisutus szobor, Portugália'),
(16, 'eiffel', 'src/img/eiffel.jpg', 'Eiffel torony - Párizs', 'A Pisai Ferde Torony', 'MOL Székház'),
(17, 'nazca', 'src/img/nazca.jpg', 'Nazca vonalak Peru', 'Ferihegyi leszálópálya', 'Balaton felvidék'),
(18, 'Fuji', 'src/img/fuji.jpg', 'Fuji ', 'Himalája', 'Kékes'),
(19, 'Golden Gate', 'src/img/goldengate.jpg', 'Golden Gate híd', 'Tower híd', 'Károly híd'),
(20, 'Vatikán', 'src/img/vatikan.jpg', 'Vatikán', 'Nápolyi kőszínházak', 'Trianon emlékmű'),
(21, 'balaton', 'src/img/balaton.jpg', 'Balaton', 'Velencei tó', 'Fertő tó'),
(22, 'Turul', 'src/img/tataiTurul.jpg', 'Tatai Turul szobor', 'Főnix ', 'Egyiptomi szent madár'),
(23, 'Sikló', 'src/img/siklo.jpg', 'Budavári sikló', 'Kisföldalati ', 'Libegő'),
(24, 'Batthyany örökmécses', 'src/img/orokmecses.jpg', 'Batthyany Örökmécses', 'Eddystone-világítótorony', 'Trianon emlékmű'),
(25, 'Szent István Bazilika', 'src/img/bazilika.jpg', 'Szent István-bazilika', 'Alexandriai világítótorony', 'Pécsi székesegyház'),
(26, 'Fehér Ház', 'src/img/feherHaz.jpg', 'Fehér Ház (USA)', 'Országház (HUN)', 'Lordok Háza (GB)'),
(27, 'Ásító inas', 'src/img/asitoInas.jpg', 'Munkácsy: Ásító inas', 'Edvard Munch: A sikoly', 'Van Gogh: Önarckép'),
(28, 'Amerikai Szabadság-szobor', 'src/img/amerikaiszabszob.jpg', 'Amerikai Szabadság-szobor', 'Las Vegas szimbólum', 'Magyar Szbadság-szobor'),
(29, 'Petőfi', 'src/img/petofisandor.jpg', 'Arany János', 'Ady Endre', 'Petőfi Sándor'),
(30, 'foltos szalamandra', 'src/img/foltosSzalamandra.jpg', 'Foltos szalamandra', 'Gekkó', 'Komodói varánusz'),
(31, 'moaieee', 'src/img/moai.jpg', 'Húsvét-Szigetek, Moai szobor', 'Sechell szigetek, törzsi szobr', 'Arámiai ősszobrok');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
