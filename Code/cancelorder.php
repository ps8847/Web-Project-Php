<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

</head>
<body onload="getCartCount()">
<?php
include_once 'usernavbar2.php';
?>
<div class="container">
    <div class="row col-sm-8 justify-content-center">
        <h1>Cancel Order</h1>
    </div>
    <form action="cancelorderaction.php" id="form1" method="post">
        <div class="row col-sm-8">
            <label for="remarks" class="h5">Remarks</label>
        </div>
        <div class="row col-sm-8">
            <input type="hidden" value="<?php echo $_GET['q'];?>" id="billid" class="form-control" name="billid">
            <input type="hidden" value="<?php echo $_GET['r'];?>" id="qty" class="form-control" name="qty">
            <input type="text" id="remarks" data-rule-required="true" class="form-control" name="remarks">
        </div>
        <div class="row mt-4 justify-content-center">
            <input type="submit" value="Cancel Order" class="btn btn-danger">
        </div>
    </form>
</div>

<?php
    include_once 'adminfooter.php';
    ?>

<script src="AdditionalFiles/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script src="AdditionalFiles/js/popper.min.js"></script>
<script src="AdditionalFiles/js/bootstrap.js"></script>

<script src="AdditionalFiles/js/script.js"></script>
</body>
</html>
<?php
