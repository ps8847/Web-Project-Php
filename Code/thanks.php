<?php
@session_start();
include "cart.php";
include "connection.php";
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Milky Store</title>

<link rel="icon" href="dairy image set/logo.jpg">

    <link rel="icon" href="images/grocery.png">
    <link rel="stylesheet" href="AdditionalFiles/css/bootstrap.css">
    <link rel="stylesheet" href="AdditionalFiles/js/bootstrap.js">
    <link rel="stylesheet" href="AdditionalFiles/fontawesome/css/all.css">
    <link rel="stylesheet" href="AdditionalFiles/css/userhome.css">
    <script src="AdditionalFiles/js/owl.carousel.min.js"></script>
</head>
<body onload="getCartCount()">

<!--HEADER-->
<?php
include_once "usernavbar2.php";
?>
<!--//HEADER-->

<div class="container">
    <div class="jumbotron text-center mt-5">
        <div class="img-thumbnail-3">
            <i class="text-success far fa-5x fa-check-circle"></i>
        </div>

        Thank you for Booking with us. Your Booking ID is <?php echo $_REQUEST['bid']; ?>
    </div>
</div>

<!--FOOTER-->
<?php
include_once "adminfooter.php";
?>
<!--//FOOTER-->

<script src="AdditionalFiles/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script src="AdditionalFiles/js/popper.min.js"></script>
<script src="AdditionalFiles/js/bootstrap.js"></script>

<script src="AdditionalFiles/js/script.js"></script>

</body>
</html>
