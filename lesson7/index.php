<?php
include 'auth.php';

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<? if (!isAuth()) : ?>
    <form action="" method="post">
        <input type="text" name="login" placeholder="login">
        <input type="password" name="pass" placeholder="password">
        Save?<input type="checkbox" name="check">
        <input type="submit">
    </form>
<? else: ?>
    Welcome <?= getUser() ?> <a href="/?logout">Logout</a>
<? endif; ?>
</body>
</html>
