<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Milky Store</title>

    <link rel="icon" href="dairy image set/logo.jpg">
    <script src="AdditionalFiles/js/datepicker.js"></script>
</head>
<body>
<?php
include_once 'adminheader2.php';
?>
<br>
<div class="container">

    <div class="row mt-4 justify-content-center">
        <div class="col-sm-4 offset-2">
            <input type="date" id="fromdate" class="dtp form-control" name="fromdate">
<!--            <input type="text" placeholder="From:" readonly id="fromdate" class="dtp form-control" name="fromdate">-->
        </div>
        <div class="col-sm-4 offset-2">
            <input type="date" id="todate" onchange="datewisesale()" class="dtp form-control" name="todate">
<!--            <input type="text" id="todate" onchange="datewisesale()" placeholder="To:" readonly class="dtp form-control" name="todate">-->
        </div>
    </div>

    <div id="datewiseorder" class="table-responsive mt-2">

    </div>
</div>
<script>
    $(document).ready(function () {
        // $("#signup").validate();
        $(".dtp").datepicker({
            changeYear: true,
            changeMonth: true,
            dateFormat: "yy-mm-dd"
        });
        datewisesale();
    })

    function datewisesale() {
        var from = document.getElementById("fromdate").value;
        var to = document.getElementById("todate").value;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                console.log(this.responseText);
                document.getElementById("datewiseorder").innerHTML = this.responseText;
            }
        };
        if (from == "" && to == "") {
            xmlhttp.open("GET", "salereportaction.php", true);
        } else {
            xmlhttp.open("GET", "salereportaction.php?q=" + from + "&r=" + to, true);
        }
        xmlhttp.send();
    }
</script>
</body>
</html>



