<?php
ini_set("display_erros", "Off");
$bookObj = new Book();

$cata_info = $cataObj->getCategory();
if (isset($_GET['prostatus'])) {
    $id = $_GET['id'];
    if ($_GET['prostatus'] == 'edit') {
        $pdt = $bookObj->getBookById($id);
    }
}
if (isset($_POST['update_pdt'])) {
    $update_msg = $bookObj->updateBook($_POST);
}
?>

<h4>Update Book</h4>

<?php
if (isset($update_msg)) {
    echo $update_msg;
}
?>

<form action="" method="post" enctype="multipart/form-data" class="form">
    <div class="form-group">
        <label for="pdt_name">Book Name</label>
        <input type="text" name="u_pdt_name" class="form-control" value="<?php echo $pdt['pdt_name'] ?>">
    </div>

    <input type="hidden" name="pdt_id" value="<?php echo $pdt['pdt_id'] ?>">
    <div class="form-group">
        <label for="pdt_price">Book Price</label>
        <input type="text" name="u_pdt_price" class="form-control" value="<?php echo $pdt['pdt_price'] ?>">
    </div>

    <div class="form-group">
        <label for="pdt_des">Book Description</label>
        <textarea name="u_pdt_des" cols="30" rows="10" class="form-control"><?php echo $pdt['pdt_des'] ?> </textarea>
    </div>

    <div class="form-group">
        <label for="pdt_stock">Book Stock</label>
        <input type="number" name="pdt_stock" class="form-control" max='30' min='1' value="<?php echo $pdt['Book_stock'] ?>">
    </div>

    <div class="form-group">
        <label for="pdt_ctg">Book Catagories</label>
        <select name="u_pdt_ctg" class="form-control">
            <option value="">Select a Catagory</option>
            <?php while ($cata_info) { ?>
                <option value="<?php echo $cata['ctg_id'] ?>"><?php echo $cata['ctg_name'] ?></option>

            <?php } ?>
        </select>
    </div>

    <div class="form-group">
        <label for="pdt_img">Book Image</label>
        <div class="mb-3">
            <img src="uploads/<?php echo $pdt['pdt_img'] ?>" style="width: 80px;">
        </div>
        <input type="file" name="u_pdt_img" class="form-control">
    </div>

    <div class="form-group">
        <label for="pdt_status">Status</label>
        <select name="u_pdt_status" class="form-control">
            <option value="1" <?php if ($pdt['pdt_status'] == 1) {
                                    echo "selected";
                                } ?>>Published</option>
            <option value="0" <?php if ($pdt['pdt_status'] == 0) {
                                    echo "selected";
                                } ?>>Unpublished</option>
        </select>
    </div>

    <input type="submit" value="Update Book" name="update_pdt" class="btn btn-block btn-primary">
</form>