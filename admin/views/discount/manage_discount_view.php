<?php
$discountObj = new Discount();
$discountList = $discountObj->getAllDiscount();

if (isset($_GET['status'])) {
    $id = $_GET['id'];
    
    if($_GET['status'] == "delete") {
        $discountObj->deleteDiscount($id);
    }
    $discountList = $discountObj->getAllDiscount();
}
?>

<h2>Manage Coupon</h2>

<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>Coupon Id</th>
            <th>Coupon Code</th>
            <th>Coupon Description</th>
            <th>Coupon Discount</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        <?php
        foreach ($discountList as $discount) {
        ?>
            <tr>
                <td> <?php echo $discount['id'] ?></td>
                <td> <?php echo $discount['name'] ?></td>
                <td> <?php echo $discount['description'] ?></td>
                <td> <?php echo $discount['discount_percent'] ?></td>
                <td>
                    <?php
                    if($discount['active']) echo "Active";
                    else echo "Unactive";
                    ?>
                </td>
                <td>
                    <a href="edit_discount.php?status=edit&&id=<?php echo $discount['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                    <a href="?status=delete&&id=<?php echo $discount['id'] ?>" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>