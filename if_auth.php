<?php

$login = "admin";
$pass = "123";

if ($login == "admin" && $pass == "123") {
    $auth = true;
    $user = $login;
} else {
    $auth = false;
}
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<? if ($auth): ?>
    Добро пожаловать <?= $user ?>
<? else: ?>
    <form>
        <input type="text">
        <input type="password">
        <input type="submit" value="Войти">
    </form>
<? endif; ?>
</body>
</html>
