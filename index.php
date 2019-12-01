<?php
echo '<h2>Welcome to PHP_1 Course</h2>';
echo '<h3>var_dump function testing ...</h3>';
$a = [1, 3.14, NULL, 'sample', true, [3, 'text', false]];
$b = [
	['Smith' => ['name' => 'ivan', 'age' => 25, 'sex' => 'male']],
	['Peters' => ['name' => 'peter', 'age' => 40, 'sex' => 'male']],
	['Chisholm' => ['name' => 'sarah', 'age' => 60, 'sex' => 'female']],
];
var_dump($a);
var_dump($b, "стоп");
var_dump("stop");
die();
