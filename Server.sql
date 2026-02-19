-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.4:3306
-- Время создания: Фев 19 2026 г., 09:00
-- Версия сервера: 8.4.6
-- Версия PHP: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Server`
--

-- --------------------------------------------------------

--
-- Структура таблицы `certificate`
--

CREATE TABLE `certificate` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `courseform`
--

CREATE TABLE `courseform` (
  `kursid` int NOT NULL,
  `kursname` varchar(150) NOT NULL,
  `kursbody` varchar(500) NOT NULL,
  `kursdatestart` date NOT NULL,
  `kursdateend` date NOT NULL,
  `kurstime` time NOT NULL,
  `kursprice` varchar(50) NOT NULL,
  `kursimg` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kurs` varchar(150) NOT NULL,
  `paystatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `status`, `name`, `kurs`, `paystatus`) VALUES
(1, 'student1@example.com', '1234', 'student', 'Иван Иванов', '', ''),
(2, 'student2@example.com', '1234', 'student', 'Анна Смирнова', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courseform`
--
ALTER TABLE `courseform`
  ADD PRIMARY KEY (`kursid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courseform`
--
ALTER TABLE `courseform`
  MODIFY `kursid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
