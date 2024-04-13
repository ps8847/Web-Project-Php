<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="AdditionalFiles/css/bootstrap.css">
    <link rel="stylesheet" href="AdditionalFiles/js/bootstrap.js">
    <link rel="stylesheet" href="AdditionalFiles/fontawesome/css/all.css">
    <link rel="icon" href="dairy image set/logo.jpg">

    <title>Login</title>

    <style>
        body {
            line-height: 1.5;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .container::after {
            background: url('images/background image.jpg') no-repeat center/cover;
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            opacity: 0.2;
        }
    </style>

    <script>
        function clickpassword() {
            var x = document.getElementById("pass");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</head>
<body onload="getCartCount()">

<?php
include_once 'usernavbar.php';
?>

<div class="container">
    <div class="row justify-content-center" style="margin-top: 5rem; margin-bottom: 5rem;">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body justify-content-center">
                    <h3 class="card-title">Login</h3>
                    <hr>
                    <div>
                        <?php
                        if (isset($_GET['msg'])) {
                        if ($_GET['msg'] == "added") {
                        ?>
                        <div style="margin-top: 15px;">
                            <!-- <h4 class="text-danger">this Category Can't be deleted ..Because Its Linked to a Sub Category..</h4> -->
                            <div class="alert alert-success">
                                <a href="#" data-dismiss="alert" class="close">&times;</a>
                                <strong>Account is Created..Now Login With Your EMAIL & PASSWORD</strong>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }
                    ?>
                </div>
                <form action="user_signup_and_login_action.php" method="post">
                    <div class="form-group">
                        <label for="email">Enter Email</label>
                        <input name="email" type="email" required name="email" id="email" placeholder="Email"
                               class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="pass">Enter Password</label>
                        <input name="password" type="password" required id="pass" placeholder="Password"
                               class="form-control"><input type="checkbox" onclick="clickpassword()">&nbsp;Show password
                    </div>
                    <div>
                        <?php
                        if (isset($_GET['msg'])) {
                        if ($_GET['msg'] == "invalid Username") {
                        ?>
                        <div style="margin-top: 15px;">
                            <!-- <h4 class="text-danger">this Category Can't be deleted ..Because Its Linked to a Sub Category..</h4> -->
                            <div class="alert alert-danger">
                                <a href="#" data-dismiss="alert" class="close">&times;</a>
                                <strong>Invalid Email</strong>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    }
                    ?>

                    <?php
                    if (isset($_GET['msg'])) {
                    if ($_GET['msg'] == "Incorrect password") {
                    ?>
                    <div style="margin-top: 15px;">
                        <div class="alert alert-danger">
                            <a href="#" data-dismiss="alert" class="close">&times;</a>
                            <strong>Incorrect Password</strong>
                        </div>
                    </div>
            </div>
            <?php
            }
            }
            ?>
             <?php
                    if (isset($_GET['msg'])) {
                    if ($_GET['msg'] == "Password Changed Successfully") {
                    ?>
                    <div style="margin-top: 15px;">
                        <div class="alert alert-success">
                            <a href="#" data-dismiss="alert" class="close">&times;</a>
                            <strong>Password cHANGED sUCCESSFULLY</strong>
                        </div>
                    </div>
            </div>
            <?php
            }
            }
            ?>
            <?php
            if (isset($_GET['msg'])) {
            if ($_GET['msg'] == "Incorrect") {
            ?>
            <div style="margin-top: 15px;">
                <div class="alert alert-danger">
                    <a href="#" data-dismiss="alert" class="close">&times;</a>
                    <strong>Incorrect Password</strong>
                </div>
            </div>
        </div>

        <?php
        }
        }
        ?>
    </div>
    <input type="hidden" name="action" value="Login">
    <input type="submit" value="Login" class="btn btn-block btn-warning">
    <!-- <br>
    <a href="#"><h6>Forgot Password?</h6></a> -->
    </form>
</div>
</div>
</div>
</div>
</div>

<?php
include_once "adminfooter.php";
?>

<script src="AdditionalFiles/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"
        integrity="sha512-37T7leoNS06R80c8Ulq7cdCDU5MNQBwlYoy1TX/WUsLFC2eYNqtKlV0QjH7r8JpG/S0GUMZwebnVFLPd6SU5yg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="AdditionalFiles/js/popper.min.js"></script>
<script src="AdditionalFiles/js/bootstrap.js"></script>

<script src="AdditionalFiles/js/script.js"></script>

</body>
</html>