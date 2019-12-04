<?php
echo '<h2>Welcome to PHP_1 Course</h2>';
echo '<h3 style="color: blue">Var_dump function testing ...</h3>';
$a = [1, 3.14, NULL, 'sample', true, [3, 'text', false]];
$b = [
	['Smith' => ['name' => 'john', 'age' => 25, 'sex' => 'male']],
	['Peters' => ['name' => 'joe', 'age' => 40, 'sex' => 'male']],
	['Chisholm' => ['name' => 'sarah', 'age' => 60, 'sex' => 'female']],
];
var_dump($a);
var_dump($b, "стоп");
var_dump("stop");
die();
