<?php

function open_BD(): PDO
{
    try {
        $conn = new PDO('mysql:host=localhost;dbname=phptest;charset=utf8', "root", "");
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $e) {
        throw new Exception("No BD??", 1);
    }
}
