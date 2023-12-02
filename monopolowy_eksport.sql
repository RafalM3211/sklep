-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Paź 2023, 13:58
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `monopolowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

CREATE TABLE `dostawcy` (
  `id_dostawcy` int(11) NOT NULL,
  `nazwa_dostawcy` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `adres_dostawcy` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `numer_telefonu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `adres_email` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dostawcy`
--

INSERT INTO `dostawcy` (`id_dostawcy`, `nazwa_dostawcy`, `adres_dostawcy`, `numer_telefonu`, `adres_email`) VALUES
(1, 'Firma A', 'ul. Przykładowa 1', '123-456-789', 'firmaa@example.com'),
(2, 'Firma B', 'ul. Testowa 2', '987-654-321', 'firmab@example.com'),
(3, 'Firma C', 'ul. Prosta 3', '555-123-789', 'firmac@example.com'),
(4, 'Firma D', 'ul. Nowa 4', '111-222-333', 'firmad@example.com'),
(5, 'Firma E', 'ul. Główna 5', '999-888-777', 'firmae@example.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imie_pracownika` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko_pracownika` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `stanowisko_pracownika` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_zatrudnienia` datetime DEFAULT NULL,
  `wynagrodzenie_pracownika` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `imie_pracownika`, `nazwisko_pracownika`, `stanowisko_pracownika`, `data_zatrudnienia`, `wynagrodzenie_pracownika`) VALUES
(1, 'Jan', 'Kowalski', 'Kierownik projektu', '2022-03-15 09:00:00', 6000),
(2, 'Anna', 'Nowak', 'Programista', '2022-04-01 08:30:00', 4500.5),
(3, 'Piotr', 'Nowicki', 'Analityk biznesowy', '2022-04-15 08:45:00', 5100.75),
(4, 'Maria', 'Wiśniewska', 'Specjalista ds. marketingu', '2022-05-02 10:15:00', 5500),
(5, 'Marek', 'Jankowski', 'Inżynier ds. jakości', '2022-05-10 11:30:00', 5200.25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa_produktu` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `cena_netto` float NOT NULL,
  `cena_brutto` float NOT NULL,
  `typ_alkoholu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `producent` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ilosc_magazyn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa_produktu`, `cena_netto`, `cena_brutto`, `typ_alkoholu`, `producent`, `ilosc_magazyn`) VALUES
(1, 'Piwo jasne', 2.6, 3.15, 'Piwo', 'Browar XYZ', 120),
(2, 'Rum kubański', 22.5, 27.45, 'Rum', 'Destylarnia DEF', 45),
(3, 'Wino czerwone', 14.99, 18.29, 'Wino', 'Winiarnia XYZ', 90),
(4, 'Whisky single malt', 60, 73.2, 'Whisky', 'Destylarnia GHI', 20),
(5, 'Wódka', 19, 23.18, 'Wódka', 'Destylarnia ABC', 65),
(6, 'Wino białe', 11.99, 14.63, 'Wino', 'Winiarnia UVW', 75),
(7, 'Piwo ciemne', 3, 3.66, 'Piwo', 'Browar XYZ', 110),
(8, 'Tequila', 27.5, 33.53, 'Tequila', 'Destylarnia RST', 35),
(9, 'Wermut', 10.5, 12.81, 'Wermut', 'Destylarnia PQR', 50),
(10, 'Gin', 20, 24.4, 'Gin', 'Destylarnia ABC', 40),
(11, 'Piwo jasne', 2.8, 3.41, 'Piwo', 'Browar XYZ', 105),
(12, 'Wino czerwone', 16.5, 20.13, 'Wino', 'Winiarnia XYZ', 85),
(13, 'Whisky single malt', 58, 70.54, 'Whisky', 'Destylarnia GHI', 18),
(14, 'Wódka', 18.5, 22.52, 'Wódka', 'Destylarnia ABC', 70),
(15, 'Wino białe', 12, 14.64, 'Wino', 'Winiarnia UVW', 90),
(16, 'Piwo ciemne', 3.1, 3.77, 'Piwo', 'Browar XYZ', 105),
(17, 'Tequila', 29, 35.27, 'Tequila', 'Destylarnia RST', 40),
(18, 'Wermut', 11, 13.42, 'Wermut', 'Destylarnia PQR', 55),
(19, 'Gin', 21.5, 26.21, 'Gin', 'Destylarnia ABC', 45),
(20, 'Rum kubański', 25, 30.5, 'Rum', 'Destylarnia DEF', 60);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `wyslane`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `wyslane` (
`id_zamowienia` int(11)
,`id_produktu` int(11)
,`id_klienta` int(11)
,`sposob_platnosci` varchar(45)
,`status_zamowienia` varchar(45)
,`ilosc_sztuk` int(11)
,`data_zlozenia` datetime
,`data_wykonania` datetime
,`id_dostawcy` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_produktu` int(11) DEFAULT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `sposob_platnosci` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `status_zamowienia` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ilosc_sztuk` int(11) DEFAULT NULL,
  `data_zlozenia` datetime DEFAULT NULL,
  `data_wykonania` datetime DEFAULT NULL,
  `id_dostawcy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_produktu`, `id_klienta`, `sposob_platnosci`, `status_zamowienia`, `ilosc_sztuk`, `data_zlozenia`, `data_wykonania`, `id_dostawcy`) VALUES
(1, 1, 1, 'Karta kredytowa', 'W trakcie realizacji', 5, '2023-03-15 10:30:00', '2023-03-17 14:45:00', 1),
(2, 2, 2, 'Gotówka', 'Wysłane', 10, '2023-03-16 11:15:00', '2023-03-20 13:20:00', 2),
(3, 3, 3, 'Przelew bankowy', 'Wysłane', 3, '2023-03-18 09:30:00', '2023-03-22 12:10:00', 3),
(4, 4, 4, 'Karta kredytowa', 'Zakończone', 2, '2023-03-20 14:00:00', '2023-03-24 15:30:00', 4),
(5, 5, 5, 'Przelew bankowy', 'W trakcie realizacji', 8, '2023-03-22 16:45:00', NULL, 5),
(6, 6, 1, 'Gotówka', 'Wysłane', 7, '2023-03-23 08:30:00', '2023-03-27 11:15:00', 2),
(7, 7, 2, 'Karta kredytowa', 'Zakończone', 4, '2023-03-25 10:15:00', '2023-03-29 14:20:00', 3),
(8, 8, 3, 'Przelew bankowy', 'Wysłane', 6, '2023-03-26 12:45:00', '2023-03-30 13:30:00', 4),
(9, 9, 4, 'Gotówka', 'W trakcie realizacji', 9, '2023-03-28 09:30:00', NULL, 5),
(10, 10, 5, 'Karta kredytowa', 'Wysłane', 5, '2023-03-30 14:00:00', '2023-04-03 15:15:00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zarejestrowani_klienci`
--

CREATE TABLE `zarejestrowani_klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie_klienta` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko_klienta` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `adres_email` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `numer_telefonu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `adres` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zarejestrowani_klienci`
--

INSERT INTO `zarejestrowani_klienci` (`id_klienta`, `imie_klienta`, `nazwisko_klienta`, `adres_email`, `numer_telefonu`, `adres`) VALUES
(1, 'Anna', 'Kowalska', 'anna@example.com', '123-456-789', 'ul. Kwiatowa 1'),
(2, 'Jan', 'Nowak', 'jan@example.com', '987-654-321', 'ul. Słoneczna 5'),
(3, 'Karolina', 'Wiśniewska', 'karolina@example.com', '555-123-789', 'ul. Ogrodowa 12'),
(4, 'Marek', 'Kwiatkowski', 'marek@example.com', '111-222-333', 'ul. Leśna 8'),
(5, 'Ewa', 'Jankowska', 'ewa@example.com', '999-888-777', 'ul. Polna 2'),
(6, 'Piotr', 'Kaczmarek', 'piotr@example.com', '444-555-666', 'ul. Zielona 15'),
(7, 'Katarzyna', 'Nowakowska', 'katarzyna@example.com', '777-888-999', 'ul. Miodowa 7'),
(8, 'Robert', 'Dąbrowski', 'robert@example.com', '666-777-888', 'ul. Krótka 3'),
(9, 'Magdalena', 'Zawadzka', 'magdalena@example.com', '222-333-444', 'ul. Jagodowa 10'),
(10, 'Łukasz', 'Kowalczyk', 'lukasz@example.com', '888-777-666', 'ul. Malinowa 6'),
(11, 'Alicja', 'Gajos', 'alicja@example.com', '555-444-333', 'ul. Sosnowa 4'),
(12, 'Tomasz', 'Olszewski', 'tomasz@example.com', '222-999-444', 'ul. Brzozowa 9'),
(13, 'Małgorzata', 'Szymańska', 'malgorzata@example.com', '111-333-555', 'ul. Kasztanowa 14'),
(14, 'Kamil', 'Lis', 'kamil@example.com', '999-222-444', 'ul. Lipowa 11'),
(15, 'Agnieszka', 'Pawlak', 'agnieszka@example.com', '777-111-555', 'ul. Wiśniowa 16'),
(16, 'Marcin', 'Wojciechowski', 'marcin@example.com', '333-777-888', 'ul. Morelowa 17'),
(17, 'Monika', 'Kaczmarek', 'monika@example.com', '444-999-666', 'ul. Klonowa 13'),
(18, 'Artur', 'Nowicki', 'artur@example.com', '666-444-222', 'ul. Dębowa 18'),
(19, 'Patrycja', 'Wójcik', 'patrycja@example.com', '555-999-333', 'ul. Akacjowa 19'),
(20, 'Bartosz', 'Jaworski', 'bartosz@example.com', '111-222-444', 'ul. Cisowa 20');

-- --------------------------------------------------------

--
-- Struktura widoku `wyslane`
--
DROP TABLE IF EXISTS `wyslane`;

CREATE ALGORITHM=UNDEFINED DEFINER=`rafal`@`192.168.53.108` SQL SECURITY DEFINER VIEW `wyslane`  AS SELECT `zamowienia`.`id_zamowienia` AS `id_zamowienia`, `zamowienia`.`id_produktu` AS `id_produktu`, `zamowienia`.`id_klienta` AS `id_klienta`, `zamowienia`.`sposob_platnosci` AS `sposob_platnosci`, `zamowienia`.`status_zamowienia` AS `status_zamowienia`, `zamowienia`.`ilosc_sztuk` AS `ilosc_sztuk`, `zamowienia`.`data_zlozenia` AS `data_zlozenia`, `zamowienia`.`data_wykonania` AS `data_wykonania`, `zamowienia`.`id_dostawcy` AS `id_dostawcy` FROM `zamowienia` WHERE `zamowienia`.`status_zamowienia` like 'Wysłane' ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id_dostawcy`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_zamowienia` (`id_zamowienia`),
  ADD KEY `id_produktu` (`id_produktu`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_dostawcy` (`id_dostawcy`);

--
-- Indeksy dla tabeli `zarejestrowani_klienci`
--
ALTER TABLE `zarejestrowani_klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  MODIFY `id_dostawcy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zarejestrowani_klienci`
--
ALTER TABLE `zarejestrowani_klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_produktu`) REFERENCES `produkty` (`id_produktu`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_klienta`) REFERENCES `zarejestrowani_klienci` (`id_klienta`),
  ADD CONSTRAINT `zamowienia_ibfk_3` FOREIGN KEY (`id_dostawcy`) REFERENCES `dostawcy` (`id_dostawcy`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
