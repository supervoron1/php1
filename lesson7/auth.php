<?php
session_start();

include_once 'db.php';

function auth($login, $pass)
{
	global $db;
	$result = mysqli_query($db, "SELECT * FROM users WHERE login = '{$login}'");
	$row = mysqli_fetch_assoc($result);
	if (password_verify($pass, $row['pass'])) {
		$_SESSION['login'] = $login;
		$_SESSION['id'] = $row['id'];
		return true;
	}
	return false;
}

if (!empty($_POST)) {
	$login = $_POST['login'];
	$pass = $_POST['pass'];

	if (!auth($login, $pass)) {
		die('wrong login and pass');
	} else {
		if (isset($_POST['save'])) {
			$hash = uniqid(rand(), true);
			$id = $_SESSION['id'];
			$sql = "UPDATE `users` SET `hash` = '{$hash}' WHERE id = {$id}";
			$result = mysqli_query($db, $sql);
			setcookie('hash', $hash, time() + 3600, '/');
		}
		header('Location: /');
	}

//	if ($pass === $user['pass']) {
////		var_dump('Authorized!!');
////		setcookie('login', $login, time() + 3600, '/');
//		$_SESSION['login'] = $login;
//		header('Location: /');
//	}
}

function isAuth()
{
//	return isset($_COOKIE['login']);
	return isset($_SESSION['login']);

}

function getUser()
{
//	return $_COOKIE['login'];
	return $_SESSION['login'];
}

//var_dump($_COOKIE);
//var_dump($_GET);

if (isset($_GET['logout'])) {
//	setcookie('login', '', time() - 3600);
	unset($_SESSION['login']);
	header('Location: /');
}
