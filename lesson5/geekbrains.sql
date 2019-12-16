-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 16 2019 г., 16:51
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `geekbrains`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Спорт'),
(2, 'Политика');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img_name` varchar(64) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `img_name`, `views`) VALUES
(1, '01.jpg', 3),
(2, '02.jpg', 2),
(3, '03.jpg', 1),
(4, '04.jpg', 0),
(5, '05.jpg', 3),
(6, '06.jpg', 1),
(7, '07.jpg', 0),
(8, '08.jpg', 0),
(9, '09.jpg', 1),
(10, '10.jpg', 0),
(11, '11.jpg', 0),
(12, '12.jpg', 2),
(13, '13.jpg', 0),
(14, '14.jpg', 2),
(15, '15.jpg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `prev` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `category`, `prev`, `text`) VALUES
(1, 1, 'Китай выразил протест США из-за выдворения дипломатов', 'ПЕКИН, 16 дек — РИА Новости. Пекин выразил протест и сделал представление Вашингтону после выдворения китайских дипломатов, заявил официальный представитель МИД КНР Гэн Шуан.\r\nРанее газета The New York Times со ссылкой на источники написала, что США тайно выслали двух дипломатов, которые в конце сентября этого года пытались попасть на военную базу близ Норфолка в штате Виргиния. Издание отметило, что последнее выдворение было более 30 лет назад, в 1987 году.'),
(2, 2, 'Воздушная дуэль истребителей МиГ-32БМ попала на видео', 'МОСКВА, 16 дек – РИА Новости. Телеканал \"Звезда\" опубликовал видео воздушной учебной дуэли двух МиГ-31БМ.\r\nИстребители выполнили \"бочку\" и другие фигуры сложного пилотажа, а также отработали различные маневры для быстрой смены положения и ведения огня.\r\nОтмечается, что большая часть дуэли проходила на предельных скоростях самолета, что позволило летчикам усовершенствовать навыки по выдерживанию длительных перегрузок.'),
(3, 2, 'Opel возобновил продажи в России', 'МОСКВА, 16 дек — РИА Новости. Opel возвращается в Россию, в салоны официальных дилеров поступили первые модели Zafira Life и Grandland X.\r\nПродажи стартовали в Москве, Санкт-Петербурге, Нижнем Новгороде, Ростове-на-Дону, Рязани и Ставрополе.'),
(4, 2, 'На Сахалине ответили на заявления о передаче Курил Японии', 'ЮЖНО-САХАЛИНСК, 16 дек — РИА Новости. Депутат Сахалинской областной думы Максим Козлов сказал РИА Новости, что считает недопустимой риторикой призыв объявить Курильский архипелаг территорией Японии.\r\nРанее сообщалось, что глава оппозиционной Коммунистической партии Японии Кадзуо Сии в интервью газете \"Ёмиури\" заявил, что Токио на переговорах с Москвой должен потребовать весь Курильский архипелаг, поскольку это \"исконно японская территория\".');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
