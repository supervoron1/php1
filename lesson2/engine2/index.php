<?php

if (isset($_GET['page'])) {
	$page = $_GET['page'];
} else {
	$page = 'index';
}

//TODO изменить построение страницы с меню
echo renderTemplate('layout',
	renderTemplate('header'),
	renderTemplate('menu'),
	renderTemplate($page),
	renderTemplate('footer'));

//TODO не меняя тела функции обеспечить передачу более 1 параметра меню для подстановки в шаблон
function renderTemplate($page, $header = '', $menu = '', $content = '', $footer = '')
{
	ob_start();
	include "templates/{$page}.php";
	return ob_get_clean();
}
