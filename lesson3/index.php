<?php
// Задание 1
//С помощью цикла while вывести все числа в промежутке от 0 до 100, которые делятся на 3 без остатка.
echo '<u>Задание 1</u><br>';
$i = 0;
while ($i <= 100) {
	if ($i % 3 === 0) {
		echo $i . ' ';
	}
	$i++;
}
// Задание 2
// С помощью цикла do…while написать функцию для вывода чисел от 0 до 10, чтобы результат выглядел так:
//0 – это ноль.
//1 – нечётное число.
//2 – чётное число.
//3 – нечётное число.
echo '<hr><u>Задание 2</u><br>';
$i = 0;
do {
	if ($i == 0) {
		echo $i . '– это ноль<br>';
	} else if ($i & 1 != 0) {
		echo $i . '- нечётное число<br>';
	} else {
		echo $i . '- чётное число<br>';
	}
	$i++;
} while ($i <= 10);

// Задание 3
//Объявить массив, в котором в качестве ключей будут использоваться названия областей, а в качестве значений – массивы с названиями городов из соответствующей области.
//Вывести в цикле значения массива, чтобы результат был таким:
//Московская область:
//Москва, Зеленоград, Клин.
//Ленинградская область:
//Санкт-Петербург, Всеволожск, Павловск, Кронштадт.
//Рязанская область…(названия городов можно найти на maps.yandex.ru)
echo '<hr><u>Задание 3</u><br>';
$arrayCity = [
	'Московская область' => ['Москва', 'Зеленоград', 'Клин'],
	'Ленинградская область' => ['Санкт-Петербург', 'Всеволожск', 'Павловск', 'Кронштадт'],
	'Рязанская область' => ['Скопин', 'Касимов', 'Рыбное', 'Кораблино'],
];

foreach ($arrayCity as $key => $region) {
	echo $key . ': <br>';
	$str = '';
	foreach ($region as $city) {
		$str .= $city . ', ';
	}
	$str = mb_substr($str, 0, -2) . '<br>';
	echo "$str <br>";
}


// Задание 4
//Объявить массив, индексами которого являются буквы русского языка, а значениями –
// соответствующие латинские буквосочетания
// (‘а’=> ’a’, ‘б’ => ‘b’, ‘в’ => ‘v’, ‘г’ => ‘g’, …, ‘э’ => ‘e’, ‘ю’ => ‘yu’, ‘я’ => ‘ya’).
//Написать функцию транслитерации строк
echo '<hr><u>Задание 4</u><br>';
$arrayTranslate = [
	"а" => "a",
	"б" => "b",
	"в" => "v",
	"г" => "g",
	"д" => "d",
	"е" => "e",
	"ё" => "yo",
	"ж" => "zh",
	"з" => "z",
	"и" => "i",
	"й" => "y",
	"к" => "k",
	"л" => "l",
	"м" => "m",
	"н" => "n",
	"о" => "o",
	"п" => "p",
	"р" => "r",
	"с" => "s",
	"т" => "t",
	"у" => "u",
	"ф" => "f",
	"х" => "kh",
	"ц" => "ts",
	"ч" => "ch",
	"ш" => "sh",
	"щ" => "sсh",
	"ъ" => "",
	"ы" => "i",
	"ь" => "'",
	"э" => "e",
	"ю" => "yu",
	"я" => "ya"
];
function translit($str, $arrayTranslate)
{
	return strtr($str, $arrayTranslate);
}

echo translit('синхрофазатрон', $arrayTranslate) . '<br>';

// Задание 5
// Написать функцию, которая заменяет в строке пробелы на подчеркивания и возвращает видоизмененную строчку.
echo '<hr><u>Задание 5</u><br>';
function replace($str)
{
	return str_replace(" ", "_", $str);
}

echo replace("Написать функцию, которая заменяет в строке пробелы на подчеркивания и возвращает видоизмененную строчку") . '<br>';

// Задание 6
//В имеющемся шаблоне сайта заменить статичное меню (ul - li) на генерируемое через PHP.
// Необходимо представить пункты меню как элементы массива и вывести их циклом.
// Подумать, как можно реализовать меню с вложенными подменю? Попробовать его реализовать.
echo '<hr><u>Задание 6</u><br>';
$menu = [
	[
		'title' => 'Главная',
		'href' => '/'
	],
	[
		'title' => 'Услуги',
		'href' => '/catalog',
		'subMenu' => [
			[
				'title' => 'Создание сайтов',
				'href' => '/catalog/sites'
			],
			[
				'title' => 'Мобильные приложения',
				'href' => '/catalog/mobile'
			]
		]
	],
	[
		'title' => 'Контакты',
		'href' => '/contacts',
		'subMenu' => [
			[
				'title' => 'Адреса',
				'href' => '/contacts/address'
			],
			[
				'title' => 'Телефоны',
				'href' => '/contacts/phone'
			]
		]
	]
];

$result = '<ul>';
$result .= menuRender($menu);
$result .= '</ul>';

echo $result;

function menuRender($menu_array)
{
	$result = '';

	foreach ($menu_array as $item) {
		$result .= "<li><a href='{$item['href']}'>{$item['title']}</a>";
		if (isset($item["subMenu"])) {
			$result .= '<ul>';
			$result .= menuRender($item["subMenu"]);
			$result .= '</ul>';
		}
		$result .= '</li>';
	}
	return $result;
}

// Задание 7*
// Вывести с помощью цикла for числа от 0 до 9, НЕ используя тело цикла. Выглядеть это должно так:
echo '<hr><u>Задание 7</u><br>';
for ($i = 0; $i <= 9; print $i++ . ' ') {
};

// Задание 8*
// Повторить третье задание, но вывести на экран только города, начинающиеся с буквы «К».
echo '<hr><u>Задание 8</u><br>';
foreach ($arrayCity as $key => $region) {
	echo $key . ': <br>';
	$str = '';
	foreach ($region as $city) {
		if (mb_substr($city, 0, 1, 'utf-8') === 'К') {
			$str .= $city . ', ';
		}
	}
	$str = mb_substr($str, 0, -2) . '<br>';
	echo "$str <br>";
}

// Задание 9*
// Объединить две ранее написанные функции в одну, которая получает строку на русском языке,
// производит транслитерацию и замену пробелов на подчеркивания
// (аналогичная задача решается при конструировании url-адресов на основе названия статьи в блогах).
echo '<hr><u>Задание 9</u><br>';
function translitAndReplace($str, $arrayTranslate)
{
	$str = str_replace(" ", "_", $str);
	return strtr($str, $arrayTranslate);
}

echo translitAndReplace('программа производящая транслитерацию и замену пробелов на подчеркивание', $arrayTranslate);
