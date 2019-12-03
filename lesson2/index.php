<?php
// Задание 1
echo "Задание 1<br>";
$a = mt_rand(-50, 50);
$b = mt_rand(-50, 50);

echo "если а и b положительные, вывести их разность<br>
			если а и b отрицательные, вывести их произведение<br>
			если а и b разных знаков, вывести их сумму<br>";

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
echo "Задание 2<br>";
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
	return ($b != 0) ? $a / $b : "Division by '0'";
}

//Задание 4
echo "<hr>Задание 4<br>";
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
echo "<hr>Задание 6<br>";
$val = mt_rand(-20, 20);
$pow = mt_rand(0, 10);

function power($val, $pow)
{
	if ($pow == 0) return 1;
	return $val * power($val, $pow - 1);
}

$result = power($val, $pow);
echo "{$val} в степени {$pow} = {$result}";
