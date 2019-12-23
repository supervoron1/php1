<?php
//TODO сделать пути абсолютными
//Файл констант
define('TEMPLATES_DIR', '../templates/');
define('LAYOUTS_DIR', 'layouts/');

/* DB config */
define('HOST', 'localhost:3306');
define('USER', 'geek');
define('PASS', '121212');
define('DB', 'geekbrains');

const ERR_CODE = [
	null => "",
	"OK" => "Отзыв добавлен!",
	"DELETED" => "Отзыв удален!",
	"ERROR_ADD" => "Ошибка добавления отзыва!",
	"ERROR_DEL" => "Ошибка удаления отзыва!",
	"ERROR_UPDATE" => "Ошибка изменения отзыва!",
	"UPDATED" => "Отзыв изменен!"
];

//Тут же подключим основные функции-модули нашего приложения
include "../engine/db.php";
include "../engine/functions.php";
include "../engine/log.php";
include "../engine/news.php";
include "../engine/gallery.php";
include "../engine/feedback.php";
include "../engine/catalog.php";
