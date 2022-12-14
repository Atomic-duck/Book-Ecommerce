<?php
$cateObj = new Category();
$bookObj = new Book();
$discObj = new Discount();

$categories = $cateObj->getCategory();
$discList = $discObj->getAllDiscount();
if (isset($_POST['add_book'])) {
    $rtn_msg = $bookObj->addBook($_POST);
}
?>

<h2>Add Book</h2>

<h6 class="text-success">
    <?php
    if (isset($rtn_msg)) {
        echo $rtn_msg;
    }
    ?>
</h6>

<form action="" method="post" enctype="multipart/form-data" class="form">
    <div class="form-group">
        <label for="title">Book Title</label>
        <input type="text" name="title" class="form-control">
    </div>

    <div class="form-group">
        <label for="author">Book Author</label>
        <input type="text" name="author" class="form-control">
    </div>

    <div class="form-group">
        <label for="price">Book Price</label>
        <input type="number" name="price" class="form-control" min='0'>
    </div>

    <div class="form-group">
        <label for="description">Book Description</label>
        <textarea name="description" cols="30" rows="10" class="form-control"></textarea>
    </div>

    <div class="form-group">
        <label for="stock">Book Stock</label>
        <input type="number" name="stock" class="form-control" max='100000' min='1'>
    </div>

    <div class="form-group">
        <label for="category">Book Categories</label>
        <select name="category" class="form-control">
            <option value="">Select a Category</option>
            <?php foreach ($categories as $cate) { ?>
                <option value="<?php echo $cate['name'] ?>"><?php echo $cate['name'] ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="form-group">
        <label for="book_img">Book Image</label>
        <input type="file" name="book_img" class="form-control">
    </div>

    <div class="form-group">
        <label for="discount_id">Discount</label>
        <select name="discount_id" class="form-control">
            <option value="">No discount</option>
            <?php foreach ($discList as $disc) { ?>
                    <option value="<?php echo $disc['id'] ?>"><?php echo $disc['name'] ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="form-group">
        <label for="display">Status</label>
        <select name="display" class="form-control">
            <option value="1">Published</option>
            <option value="0">Unpublished</option>
        </select>
    </div>

    <input type="submit" value="Add Book" name="add_book" class="btn btn-block btn-primary">
</form>