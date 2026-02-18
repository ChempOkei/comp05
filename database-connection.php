<?php
session_start();

$server = 'mysql';
$type = 'mysql-8.4';
$db = 'Server';
$charset = 'utf8mb4';

$username = 'root';
$password = '';

$options = [
    PDO::ATTR_ERRMODE       =>  PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_FETCH_MODE    =>  PDO::FETCH_MODE
];

$dsn = ["$server:host=$type;dbname=$db;charset=$charset;"];


    $pdo = [$dsn, $options, $username, $password];
