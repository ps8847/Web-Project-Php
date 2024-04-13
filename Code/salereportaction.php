<table class="table table-bordered table-striped table-sm">
    <thead>
    <tr>
        <th>Sr&nbsp;No.</th>
        <th>Product&nbsp;Name</th>
        <th>Qty&nbsp;Sold</th>
        <th>Avg&nbsp;(Cost&nbsp;Price)</th>
        <th>Avg&nbsp;(Discount)</th>
        <th>Avg&nbsp;(Price)</th>
        <th>Profit</th>
    </tr>
    </thead>
    <tbody>

    <?php
    include_once 'connection.php';
    if (isset($_GET['q']) and $_GET['r']) {
        $fromdate = $_GET["q"];
        $todate = $_GET["r"];
        $sql1 = "SELECT *,sum(quantity) as sq FROM `product` inner join bill_details on product.productid=bill_details.productid WHERE  bill.datetime between '$fromdate' and '$todate'";
        echo $sql1;
    } else {
        $sql1 = "SELECT *,sum(quantity) as sq,avg(costprice) as acp,avg(bill_details.discount) as ad,avg(netprice) as ap FROM `product` inner join bill_details on product.productid=bill_details.productid group by product.productid";
        echo $sql1;
    }

    $ar = array();
    $k = 0;
    $result = mysqli_query($con, $sql1);
    while ($salerow = mysqli_fetch_array($result)) {
        $k++;
        $profit=$salerow['ap']-$salerow['acp'];
        ?>
        <tr>
            <td><?php echo $k; ?></td>
            <td><?php echo $salerow['productname']; ?></td>
            <td><?php echo $salerow['sq']; ?></td>
            <td><?php echo $salerow['acp']; ?></td>
            <td><?php echo $salerow['ad']; ?></td>
            <td><?php echo $salerow['ap']; ?></td>
            <td><?php echo $profit; ?></td>
        </tr>
        <?php
    }
    ?>
    </tbody>
</table>
