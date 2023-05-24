<?php
session_start();

require_once "./connection/connectionpdo.php";

  $SETTING_NAME = "lang";
  $stmt = $connection->prepare('SELECT * FROM setting WHERE set_name = :Lang_Set');
  $stmt->bindParam(':Lang_Set', $SETTING_NAME);
  $stmt->execute();
  $set = $stmt->fetchAll();
foreach ($set as $sets) {
    $lang_set1 = $sets['set'];
    $lang_set2 = $sets['set2'];
}


if (isset($_GET['lang'])) {
    if ($_GET['lang'] == 'En') {
        if($lang_set1 == 'En'){
    $_SESSION['lang'] = $lang_set1;
}elseif($lang_set1 == 'Ar'){
    $_SESSION['lang'] = $lang_set2;
}
    } elseif ($_GET['lang'] == 'Ar') {
        if($lang_set1 == 'Ar'){
            $_SESSION['lang'] = $lang_set1;
        }elseif($lang_set1 == 'En'){
            $_SESSION['lang'] = $lang_set2;
        }
    }
    header('Location:' . $_SERVER['PHP_SELF']);
    exit();
  }
  

    switch ($_SESSION['lang']) {
        case $lang_set1:
            require("lang/$lang_set1.php");
            break;
        case $lang_set2:
            require("lang/$lang_set2.php");
            break;
        default:
            require("lang/$lang_set1.php");
    }
?>