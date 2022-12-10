<?php
$discObj = new Discount();

if (isset($_GET['status'])) {
    if ($_GET['status'] == 'edit') {
        $id = $_GET['id'];
        $disc = $discObj->getDiscountById($id);
    }
}

if (isset($_POST['disc_update'])) {
    $up_msg = $discObj->updateDiscount($_POST);
    $disc = $discObj->getDiscountById($id);
}
?>

<h2>Edit Discount</h2>

<h4>
    <?php
    if (isset($up_msg)) {
        echo $up_msg;
    }
    ?>
</h4>

<div>
    <form action="" method="POST">
         <input type="hidden" name="id" value="<?php echo $disc['id'] ?>">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" value="<?php echo $disc['name'] ?>" class="form-control">
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <input type="text" name="description" value="<?php echo $disc['description'] ?>" class="form-control">
        </div>

        <div class="form-group">
            <label for="percent">Percent</label>
            <input type="number" step="0.01" name="percent" value="<?php echo $disc['discount_percent'] ?>" class="form-control" max='1' min='0'>
        </div>

        <div class="form-group">
            <label for="active">Coupon Discount</label>
            <select name="active" class="form-control">
                <option disabled>--Select--</option>
                <option value="1" <?php if ($disc['active'] == 1) {
                                    echo "selected";
                                } ?>>Active</option>
                <option value="0" <?php if ($disc['active'] == 0) {
                                    echo "selected";
                                } ?>>Unactive</option>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" name="disc_update" class="btn btn-primary">
        </div>
    </form>
</div>