<?php

//Точка входа в приложение, сюда мы попадаем каждый раз когда загружаем страницу

//Первым делом подключим файл с константами настроек

include $_SERVER['DOCUMENT_ROOT'] . "/../config/config.php";

//Читаем параметр page из url, чтобы определить, какую страницу-шаблон
//хочет увидеть пользователь, по умолчанию это будет index

$url_array = explode("/", $_SERVER['REQUEST_URI']);

//Читаем параметр page из url, чтобы определить, какую страницу-шаблон
//хочет увидеть пользователь, по умолчанию это будет index
//$page = "";
//$action = "";
//$id = "";
//
//$action = $url_array[2];
//if ($url_array[1] == "") {
//	$page = 'index';
//} else {
//	$page = $url_array[1];
//}

$page = "";
$action = "";
$id = "";
if ($url_array[1] == "") {
	$page = 'index';
} else {
	$page = $url_array[1];
	if (!$url_array[2]=="") {
		if (is_numeric($url_array[2])) {
			$id = $url_array[2];
		} else {
			$action = $url_array[2];
			if (is_numeric($url_array[3])) {
				$id = $url_array[3];
			}
		}
	}
}

//Для каждой страницы готовим массив со своим набором переменных
//для подстановки их в соотвествующий шаблон

$params = prepareVariables($page, $action, $id);

//_log($params, "params");

echo render($page, $params);


