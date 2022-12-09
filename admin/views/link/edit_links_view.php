<?php
if (isset($_GET['status'])) {
    if ($_GET['status'] == 'edit') {
        $id = $_GET['id'];
        $link = $linkObj->displayLinkById($id);
    }
}
if (isset($_POST['update_link'])) {
    $up_msg = $linkObj->updateLinks($_POST);
}
?>

<h2>Update Links</h2>

<h6 class="">
    <?php if (isset($up_msg)) {
        echo $up_msg;
    } ?>
</h6>

<form action="" method="post">
    <div class="form-group">
        <label for="u_ctg_name">Email</label>
        <input type="text" name="email" class="form-control" value="<?php echo $link['email'] ?>">
    </div>

    <div class="form-group">
        <label for="u_ctg_des">Twitter</label>
        <input type="text" name="twitter" class="form-control" value="<?php echo $link['twitter'] ?>">
    </div>
    <div class="form-group">
        <label for="u_ctg_des">Facebook</label>
        <input type="text" name="fb" class="form-control" value="<?php echo $link['fb'] ?>">
    </div>
    <div class="form-group">
        <label for="u_ctg_des">Pinterest</label>
        <input type="text" name="pin" class="form-control" value="<?php echo $link['pinterest'] ?>">
    </div>
    <div class="form-group">
        <label for="phone">Phone Number</label>
        <input type="tel" name="phone" class="form-control" value="<?php echo $link['phone'] ?>">
    </div>

    <input type="hidden" name="id" value="<?php echo $link['id'] ?>">

    <input type="submit" value="Update Links" name="update_link" class="btn btn-primary">
</form>