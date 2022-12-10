<?php
$cateObj = new Category();

if (isset($_GET['status'])) {
    if ($_GET['status'] == 'edit') {
        $name = $_GET['name'];
        $cate = $cateObj->getCategoryByName($name);
    }
}

if (isset($_POST['update_ctg'])) {
    $up_msg = $cateObj->updateCategory($_POST);
    $cate = $cateObj->getCategoryByName($name);
}
?>


<h2>Update Catagory</h2>

<h6 class="">
    <?php if (isset($up_msg)) {
        echo $up_msg;
    } ?>
</h6>

</h4>
<form action="" method="post">
    <div class="form-group">
        <label for="name">Catagory Name</label>
        <input type="text" name="name" class="form-control" value="<?php echo $cate['name'] ?>">
    </div>

    <div class="form-group">
        <label for="description">Description</label><br>
        <textarea name="description" class="form-control" id="description"><?php echo $cate['description'] ?></textarea>
    </div>

    <div class="form-group">
        <label for="display">Catagory Name</label>
        <select name="display" class="form-control">
            <option value="1">Published</option>
            <option value="0">Unpublished</option>
        </select>
    </div>

    <input type="submit" value="Update Catagory" name="update_ctg" class="btn btn-primary">

</form>