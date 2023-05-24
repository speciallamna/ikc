<?php
require_once "./Connection/connectionpdo.php";
$id = 1;
$stmt = $connection->prepare("SELECT * from admin_url where ID = ?");
$stmt->execute([$id]);
$row = $stmt->fetch();
$new = $row['new'];
$stmt = null;
$connection = null;
define("ADMIN_URL",  "{$new}");
?>