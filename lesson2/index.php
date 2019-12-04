<?php
// Задание 1
echo "<b>Задание 1</b><br>";
$a = mt_rand(-50, 50);
$b = mt_rand(-50, 50);

echo "Если а и b положительные, вывести их разность<br>
			Если а и b отрицательные, вывести их произведение<br>
			Если а и b разных знаков, вывести их сумму<br>";

if ($a >= 0 && $b >= 0) {
	$result = $a - $b;
	$output = "Разность {$a} и {$b} = {$result}<hr>";
} elseif ($a < 0 && $b < 0) {
	$result = $a * $b;
	$output = "Произведение {$a} и {$b} = {$result}<hr>";
} else {
	$result = $a + $b;
	$output = "Сумма {$a} и {$b} = {$result}<hr>";
}
echo $output;

// Задание 2
echo "<b>Задание 2</b><br>";
$a = mt_rand(0, 15);
echo "Случайное число = {$a}<br>";
switch ($a) {
	case 0:
		echo "{$a} ";
		$a++;
	case 1:
		echo "{$a} ";
		$a++;
	case 2:
		echo "{$a} ";
		$a++;
	case 3:
		echo "{$a} ";
		$a++;
	case 4:
		echo "{$a} ";
		$a++;
	case 5:
		echo "{$a} ";
		$a++;
	case 6:
		echo "{$a} ";
		$a++;
	case 7:
		echo "{$a} ";
		$a++;
	case 8:
		echo "{$a} ";
		$a++;
	case 9:
		echo "{$a} ";
		$a++;
	case 10:
		echo "{$a} ";
		$a++;
	case 11:
		echo "{$a} ";
		$a++;
	case 12:
		echo "{$a} ";
		$a++;
	case 13:
		echo "{$a} ";
		$a++;
	case 14:
		echo "{$a} ";
		$a++;
	case 15:
		echo "{$a} ";
		$a++;
}

// Задание 3
function sum($a, $b)
{
	return $a + $b;
}

function sub($a, $b)
{
	return $a - $b;
}

function mult($a, $b)
{
	return $a * $b;
}

function div($a, $b)
{
	return ($b != 0) ? $a / $b : "Невозможно равделить на 0";
}

//Задание 4
echo "<hr><b>Задание 4</b><br>";
$arg1 = mt_rand(-50, 50);
$arg2 = mt_rand(-50, 50);
$operation = mt_rand(1, 4);

switch ($operation) {
	case '1':
		$operation = '+';
		break;
	case '2':
		$operation = '-';
		break;
	case '3':
		$operation = '*';
		break;
	case '4':
		$operation = '/';
}

function mathOperation($arg1, $arg2, $operation)
{
	switch ($operation) {
		case '+':
			$result = sum($arg1, $arg2);
			break;
		case '-':
			$result = sub($arg1, $arg2);
			break;
		case '*':
			$result = mult($arg1, $arg2);
			break;
		case '/':
			$result = div($arg1, $arg2);
			break;
		default:
			$result = 'Invalid operation';
	}
	return $result;
}

$result = mathOperation($arg1, $arg2, $operation);
echo "Выполняется операция: {$arg1} {$operation} {$arg2}<br>";
echo "Результат = {$result}";

//Задание 6
echo "<hr><b>Задание 6</b><br>";
$val = mt_rand(-20, 20);
$pow = mt_rand(0, 10);

function power($val, $pow)
{
	if ($pow == 0) return 1;
	return $val * power($val, $pow - 1);
}

echo "{$val} в степени {$pow} = " . power($val, $pow);

// Задание 7
echo "<hr><b>Задание 7</b><br>";
/*
0 часов	минут	    10 часов минут      20 часов минут	    30 минут      40 минут
1 час	  минута	  11 часов минут      21 час	 минута	    31 минута     41 минута
2 часа	минуты	  12 часов минут      22 часа	 минуты	    32 минуты     42 минуты
3 часа	минуты	  13 часов минут      23 часа	 минуты	    33 минуты     43 минуты
4 часа	минуты	  14 часов минут      24 часа	 минуты	    34 минуты     44 минуты
5 часов	минут	    15 часов минут      25 минут	          35 минут      45 минут
6 часов	минут	    16 часов минут      26 минут	          36 минут      46 минут
7 часов минут	    17 часов минут      27 минут	          37 минут      47 минут
8 часов	минут	    18 часов минут      28 минут	          38 минут      48 минут
9 часов минут	    19 часов минут      29 минут	          39 минут      49 минут
*/
$hour = date('G');
$min = date('i');

echo "Текущее время: {$hour} " . getWord($hour, 'hours') . " $min " . getWord($min, 'min');
function getWord($number, $format)
{
	if ($number > 10 && $number <= 20) $message = 1;
	else {
		switch ($number % 10) {
			case 1:
				$message = 2;
				break;
			case 2:
			case 3:
			case 4:
				$message = 3;
				break;
			default:
				$message = 1;
		}
	}
	if ($format == 'hours')
		switch ($message) {
			case 1:
				return 'часов';
			case 2:
				return 'час';
			case 3:
				return 'часа';
		}
	if ($format == 'min')
		switch ($message) {
			case 1:
				return 'минут';
			case 2:
				return 'минута';
			case 3:
				return 'минуты';
		}
}
