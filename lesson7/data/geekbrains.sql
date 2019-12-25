-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2019 г., 12:30
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
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `session_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `goods_id`, `session_id`) VALUES
(52, 1, '3e7sr7kmvi4ht1445gjdrp1qk0dftaf2'),
(53, 1, '3e7sr7kmvi4ht1445gjdrp1qk0dftaf2'),
(54, 3, '3e7sr7kmvi4ht1445gjdrp1qk0dftaf2'),
(55, 2, 'bvsmt0qpko0fkhe011nq8qopog5prisn');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `short_desc` tinytext NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `image`, `short_desc`, `description`, `price`) VALUES
(1, 'Футболка', 'shirt1.jpg', 'Мужская футболка', 'Мужская футболка с модным принтом', 100),
(2, 'Блузка', 'shirt2.jpg', 'Блузка женская', 'Элегантная блузка для женщин', 150),
(3, 'Куртка', 'shirt3.jpg', 'Куртка мужская', 'Стильная мужская куртка с дутым эффектом', 300),
(4, 'Платье', 'shirt4.jpg', 'Платье весеннее', 'Весеннее платье с нарядным принтом', 170),
(7, 'Платье', 'shirt5.jpg', 'Платье в полоску', 'Стильное и оригинальное платье в полоску', 190);

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
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `feedback` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `feedback`) VALUES
(1, 'Вася', 'Привет от Васи'),
(4, 'Darth Vader', 'Luke, I am your father'),
(5, 'Yoda', 'Try not, do or do not. There is no try'),
(8, 'Admin', 'rm -rf'),
(16, 'Han Solo', 'Hang in there Kid!'),
(17, 'Luke Skywalker', 'New DeathStar is born'),
(18, 'Петюня', 'Привет от Петрушки'),
(19, 'Forrest Gump', 'Life doesn\'t always turn out the way you planned');

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
(1, '01.jpg', 16),
(2, '02.jpg', 11),
(3, '03.jpg', 2),
(4, '04.jpg', 2),
(5, '05.jpg', 8),
(6, '06.jpg', 2),
(7, '07.jpg', 3),
(8, '08.jpg', 1),
(9, '09.jpg', 1),
(10, '10.jpg', 1),
(11, '11.jpg', 2),
(12, '12.jpg', 22),
(13, '13.jpg', 6),
(14, '14.jpg', 8),
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

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `hash`) VALUES
(1, 'admin', '$2y$10$tckHPKk7agtljs5bB5QDL.l3BpA6fSIccaSGYLmTY7tyYwa.PSDpO', '4892222145e032bac501f53.59610097'),
(2, 'dmitry', '$2y$10$NIT7gVPBIzECGUmFFVzyJe3Uuh5iZu0m2Pr0iCjnGRoBGkniOxH16', '3404783135e030c4bd39be1.68860464');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
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
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
