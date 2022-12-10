<?php
$orderObj = new Order();
$orderList = $orderObj->getAllOrder();

if (isset($_POST['update_status_btn'])) {
    $status_msg =  $obj->updat_order_status($_POST);
}
if (isset($status_msg)) {
    echo  $status_msg;
}
?>

<h2>Manage order</h2>

<div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th class="product-name">Order Id</th>
                <th class="product-price">Total</th>
                <th class="product-subtotal">Customer</th>
                <th class="product-subtotal">Delivery address</th>
                <th class="product-subtotal">Order Status</th>
                <th class="product-subtotal">Update Status</th>
                <th class="product-subtotal">Placing Time</th>
            </tr>
        </thead>

        <tbody>
            <?php
            if($orderList){
            foreach ($orderList as $order) {
            ?>
                <tr>
                    <td class="product-name"><?php echo $order['id'] ?></td>
                    <td class="product-price"><?php echo $order['total'] ?></td>
                    <td class="product-subtotal"><?php echo $order['username'] ?></td>
                    <td class="product-subtotal"><?php echo $order['delivery_address'] ?></td>
                    <td class="product-subtotal">
                        <?php
                        if ($order['order_status'] == 0) {
                            echo "<p class='btn btn-danger btn-sm'> Pending </p>";
                        } elseif ($order['order_status'] == 1) {
                            echo "<p class='btn btn-warning btn-sm'> Processing </p>";
                        } elseif ($order['order_status'] == 2) {
                            echo "<p class='btn btn-success btn-sm'> Delivered </p>";
                        }
                        ?>
                    </td>

                    <td class="product-subtotal">
                        <form action="manage_order.php" method="POST">
                            <select name="update_status">
                                <option>Select</option>
                                <option value="0">Pending</option>
                                <option value="1">Processing</option>
                                <option value="2">Deliverd</option>
                            </select> <br>
                            <input type="hidden" name="order_id" value="<?php echo $order['id']  ?>">
                            <input type="submit" value="update" name="update_status_btn">
                        </form>

                    </td>
                    <td class="product-subtotal"><?php echo $order['created_at'] ?></td>
                </tr>
            <?php } }?>
        </tbody>
    </table>
</div>