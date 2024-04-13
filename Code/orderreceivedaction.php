<?php
// include_once 'adminheader2.php';
date_default_timezone_set("Asia/Kolkata");

include_once "connection.php";
$billid = $_POST["billid"];
$person = $_POST["person"];
$fullname = $_POST["fullname"];
$currentDateTime = date('Y-m-d H:i:s');

$update = "UPDATE `bill` SET `status`='delievered', `personreceived`='$person' WHERE `billid`='$billid'";
// echo $update;
$msg = "Dear " . $fullname . ",\nYour Order is received by .\n " . $person . "\n receiving Date/Time " . $currentDateTime;

if (mysqli_query($con, $update)) {
    echo "Update Success";
    header("location:vieworder.php");
} else {
    echo "Update Failed";
    header("location:vieworder.php");
}

