-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 10 2021 г., 17:39
-- Версия сервера: 8.0.19
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `notebook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `ID` int NOT NULL,
  `USER` varchar(30) NOT NULL,
  `NOTE` varchar(2000) NOT NULL,
  `TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`ID`, `USER`, `NOTE`, `TIME`) VALUES
(1, 'ADMIN', 'ERTYUHIJOKIOJHYUGTFRGHBJNNHBGFCHBJNHBGFBHJNKNHBGHBJNHBGBJNK', '2021-04-10 12:52:15'),
(2, 'ADMIN', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:54:53'),
(3, 'User 2', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:55:10'),
(4, 'User 1', '@#$%^TD484254542654ifkjkbfuy9884i3j4h3ko2oi72uiy3gjhmjfkfjvgbfhvhyrjhjgrhjghrnffbrjvbrjjfuetfr83yriub', '2021-04-10 12:55:26'),
(5, 'User 3', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:55:43'),
(6, 'User 7', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:56:12'),
(7, 'User 1', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:56:12'),
(8, 'User 4', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:56:12'),
(9, 'User 5', '@#$%^TDCVBHYTRYHGJKIU&TGHU65rtgyhj3hgt567eyuijhsy6u72ug678273627372uiy3gjhmjfkfjvgbfhvhyfbrjvbrjjfuetfr83yriub', '2021-04-10 12:56:12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
