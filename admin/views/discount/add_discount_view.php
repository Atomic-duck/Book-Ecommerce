<?php
$discObj = new Discount();
if (isset($_POST['cuopon_add'])) {
    $coupon_msg =  $discObj->addDiscount($_POST);
}
?>

<h2>Add Discount</h2>

<h4>
    <?php
    if (isset($coupon_msg)) {
        echo $coupon_msg;
    }
    ?>
</h4>

<div>
    <form action="" method="POST">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" class="form-control">
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <input type="text" name="description" class="form-control">
        </div>

        <div class="form-group">
            <label for="percent">Percent</label>
            <input type="number" step="0.01" name="percent" class="form-control" max='1' min='0'>
        </div>

        <div class="form-group">
            <label for="active">Coupon Discount</label>
            <select name="active" class="form-control">
                <option disabled>--Select--</option>
                <option value="1">Active</option>
                <option value="0">Unactive</option>
            </select>
        </div>

        <div class="form-group">

            <input type="submit" name="cuopon_add" class="btn btn-primary">
        </div>
    </form>
</div>