<?php require_once("includes/header.php");
// Logout user
$session->logout();
redirect("login.php");
?>