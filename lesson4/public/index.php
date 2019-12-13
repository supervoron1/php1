<?php
define('ROOT', dirname(__DIR__));
include_once "../config/config.php";

if (isset($_GET['page'])) {
	$page = $_GET['page'];
} else {
	$page = 'main';
}

$params = [];

switch ($page) {

	case 'main':
		$params = [];
		break;

	case 'catalog':
		$params = [
			'catalog' => [
				[
					'name' => 'Пицца',
					'price' => 24
				],
				[
					'name' => 'Чай',
					'price' => 1
				],
				[
					'name' => 'Яблоко',
					'price' => 12
				],
			],
			'name' => "Вася"
		];
		break;

	case 'apicatalog':
		$params = [
			'catalog' => [
				[
					'name' => 'Пицца',
					'price' => 24
				],
				[
					'name' => 'Чай',
					'price' => 1
				],
				[
					'name' => 'Яблоко',
					'price' => 12
				],
			]
		];
		echo json_encode($params, JSON_UNESCAPED_UNICODE);
		die();
		break;

	case 'gallery':
		$img = array_slice(scandir("../public/gallery_img/small/"), 2);
		$params = [
			'images' => $img,
			'address' => "../public/gallery_img/small/"
		];

		break;
}

echo render($page, $params);

