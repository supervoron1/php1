<?php
//session_start();
//
$login = 'admin';
$pass = '123';
//
//$_SESSION['login'] = $login;
//$_SESSION['pass'] = $pass;
//var_dump(session_id());
//var_dump($_SESSION);
$hash = password_hash($pass, PASSWORD_DEFAULT);
var_dump(password_hash($pass, PASSWORD_DEFAULT));
var_dump(password_verify('123', $hash));
