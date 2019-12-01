<?php
$title = 'Главная страница - страница обо мне';
$header = 'Информация обо мне';
$img = 'src="../aircraft.jpg"';
date_default_timezone_set('europe/samara');
$date = date('Y');

$file = file_get_contents('template.html');
$file = str_replace('{{ TITLE }}', $title, $file);
$file = str_replace('{{ HEADER }}', $header, $file);
$file = str_replace('{{ IMG }}', $img, $file);
$file = str_replace('{{ DATE }}', $date, $file);
echo $file;
