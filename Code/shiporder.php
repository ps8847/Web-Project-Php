<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <?php
    // include_once 'headerfiles.php';
    ?>
</head>
<body>
<?php
include_once 'adminheader2.php';
?>
<div class="container">
    <div class="row justify-content-center">
        <h1>Ship Order</h1>
    </div>
    <form action="shiporderaction.php" id="form1" method="post">
        <div class="row form-group text-center mt-2">
            <div class="col-sm-4">
                <label for="trackid" class="text-primary">Tracking Id</label>
            </div>
            <div class="col-sm-4">
                <input type="number" name="trackid" id="trackid" class="form-control" min="6" minlength="6" data-rule-required="true" data-msg-required="id must be provided">
            </div>
        </div>
        <div class="row form-group text-center">
            <div class="col-sm-4">
                <label for="companyname" class="text-primary">Company Name</label>
            </div>
            <div class="col-sm-4">
                <input type="text" name="companyname" id="companyname" class="form-control" data-rule-required="true" data-msg-required="company name must be provided">
            </div>
        </div>
        <div class="row form-group text-center">
            <div class="col-sm-4">
                <label for="trackingurl" class="text-primary">Tracking url:</label>
            </div>
            <div class="col-sm-4">
                <input type="text" name="trackingurl" id="trackingurl" class="form-control" data-rule-required="true" data-msg-required="url must be entered">
            </div>
        </div>
        <div class="row form-group text-center">
            <div class="col-sm-4">
                <label for="remarks" class="text-primary">Tracking Remarks</label>
            </div>
            <div class="col-sm-4">
                <textarea name="remarks" id="remarks" class="form-control" cols="30" rows="5"></textarea>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-sm-4">
                <input type="hidden" value="<?php echo $_GET["q"];?>" class="form-control" name="billid" id="billid">
<!--                <input type="hidden" value="--><?php //echo $_GET["r"];?><!--" class="form-control" name="fullname" id="fullname">-->
<!--                <input type="hidden" value="--><?php //echo $_GET["s"];?><!--" class="form-control" name="mobile" id="mobile">-->
            </div>
            <div class="col-sm-4">
                <input type="submit" value="Submit" class="btn-warning w-25">
            </div>
        </div>
    </form>
</div>
</body>
</html>
