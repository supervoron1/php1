-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 28 2019 г., 19:26
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
(151, 1, 'kmcot1bbel6c282ssh7r5d5ks4drq55t'),
(152, 3, 'kmcot1bbel6c282ssh7r5d5ks4drq55t'),
(153, 4, 'kmcot1bbel6c282ssh7r5d5ks4drq55t'),
(158, 2, '9gveo3lpgie2m1enlccmm3ifgvi4v52f'),
(159, 4, '9gveo3lpgie2m1enlccmm3ifgvi4v52f'),
(160, 7, '9gveo3lpgie2m1enlccmm3ifgvi4v52f'),
(163, 3, '5ehis885jh1dga150j8bh2u21hbm0s4p'),
(164, 1, 'rk8ov6s8sp27p88lv99ljgpar1d3r07c'),
(165, 3, 'rk8ov6s8sp27p88lv99ljgpar1d3r07c'),
(166, 2, '6hkojv9ruunme6j406e7vu94ugtlhu2p'),
(168, 4, '6hkojv9ruunme6j406e7vu94ugtlhu2p');

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
  `price` float NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `image`, `short_desc`, `description`, `price`, `likes`) VALUES
(1, 'Футболка', 'shirt1.jpg', 'Мужская футболка', 'Мужская футболка с модным принтом', 100, 3),
(2, 'Блузка', 'shirt2.jpg', 'Блузка женская', 'Элегантная блузка для женщин', 150, 1),
(3, 'Куртка', 'shirt3.jpg', 'Куртка мужская', 'Стильная мужская куртка с дутым эффектом', 300, 0),
(4, 'Платье', 'shirt4.jpg', 'Платье весеннее', 'Весеннее платье с нарядным принтом', 170, 1),
(7, 'Платье', 'shirt5.jpg', 'Платье в полоску', 'Стильное и оригинальное платье в полоску', 190, 0);

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
(1, '01.jpg', 18),
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
(12, '12.jpg', 23),
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
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `login` varchar(64) NOT NULL,
  `tel` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `session_id`, `login`, `tel`, `address`) VALUES
(8, 'kmcot1bbel6c282ssh7r5d5ks4drq55t', 'Dmitriy', '+7 (123) 465-66-56', 'oceancity, md'),
(10, '9gveo3lpgie2m1enlccmm3ifgvi4v52f', 'Racoon', '+7 (554) 545-45-45', 'salisbury, md'),
(11, 'rk8ov6s8sp27p88lv99ljgpar1d3r07c', 'mike', '+7 (999) 171-20-17', 'pocomoke, md');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `hash` text NOT NULL,
  `tel` varchar(63) NOT NULL,
  `email` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `hash`, `tel`, `email`) VALUES
(1, 'admin', '$2y$10$tckHPKk7agtljs5bB5QDL.l3BpA6fSIccaSGYLmTY7tyYwa.PSDpO', '11845755115e0373458eb886.78831411', '+14109573877', 'admin@aol.com'),
(2, 'dmitry', '$2y$10$NIT7gVPBIzECGUmFFVzyJe3Uuh5iZu0m2Pr0iCjnGRoBGkniOxH16', '3404783135e030c4bd39be1.68860464', '+74991234567', 'admin@vorontsov.biz'),
(25, 'geek', '$2y$10$36zFuPAXAkN39zrlFTfteOmTsvvutLySC58KHIqw5hJAcI3Qdjqte', '3868285475e04c10f3137c0.50238975', '+14109570354', 'geek@bk.ru'),
(32, 'mike', '$2y$10$3oxkssDLRhozL2n.DQPvLO.6RMHjjPlBjdtOvv8vfjh.FOlGZEiL.', '', '+79991712017', 'mike@vorontsov.biz');

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
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

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
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
