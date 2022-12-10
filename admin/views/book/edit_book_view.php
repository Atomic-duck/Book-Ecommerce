<?php
ini_set("display_erros", "Off");
$bookObj = new Book();
$cateObj = new Category();
$discObj = new Discount();

$cateList = $cateObj->getCategory();
$discList = $discObj->getAllDiscount();
if (isset($_GET['prostatus'])) {
    $id = $_GET['id'];
    if ($_GET['prostatus'] == 'edit') {
        $book = $bookObj->getBookById($id);
        $bcte = $bookObj->getCategory($id);
    }
}
if (isset($_POST['update_pdt'])) {
    $update_msg = $bookObj->updateBook($_POST);
    $book = $bookObj->getBookById($id);
    $bcte = $bookObj->getCategory($id);
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
        <label for="title">Book Name</label>
        <input type="text" name="title" class="form-control" value="<?php echo $book['title'] ?>">
    </div>

    <div class="form-group">
        <label for="author">Book Author</label>
        <input type="text" name="author" class="form-control" value="<?php echo $book['author'] ?>">
    </div>

    <input type="hidden" name="id" value="<?php echo $book['id'] ?>">
    <div class="form-group">
        <label for="price">Book Price</label>
        <input type="text" name="price" class="form-control" value="<?php echo $book['price'] ?>">
    </div>

    <div class="form-group">
        <label for="description">Book Description</label>
        <textarea name="description" cols="30" rows="10" class="form-control"><?php echo $book['description'] ?> </textarea>
    </div>

    <div class="form-group">
        <label for="stock">Book Stock</label>
        <input type="number" name="stock" class="form-control" max='100000' min='1' value="<?php echo $book['stock'] ?>">
    </div>

    <div class="form-group">
        <label for="category">Book Catagories</label>
        <select name="category" class="form-control">
            <option value="">Select a Catagory</option>
            <?php foreach ($cateList as $cate) { ?>
                <option value="<?php echo $cate['name'] ?>" <?php if($bcte['category'] == $cate['name']){echo "selected";}?>><?php echo $cate['name'] ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="form-group">
        <label for="image">Book Image</label>
        <div class="mb-3">
            <img src="./uploads/<?php echo $book['image'] ?>" style="width: 80px;">
        </div>
        <input type="file" name="image" class="form-control">
    </div>

    <div class="form-group">
        <label for="discount_id">Discount</label>
        <select name="discount_id" class="form-control">
            <option value="">No discount</option>
            <?php foreach ($discList as $disc) { ?>
                    <option value="<?php echo $disc['id'] ?>" <?php if($book['discount_id'] == $disc['id']) {echo "selected";}?>><?php echo $disc['name'] ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="form-group">
        <label for="dislpay">Status</label>
        <select name="display" class="form-control">
            <option value="1" <?php if ($book['display'] == 1) {
                                    echo "selected";
                                } ?>>Published</option>
            <option value="0" <?php if ($book['display'] == 0) {
                                    echo "selected";
                                } ?>>Unpublished</option>
        </select>
    </div>

    <input type="submit" value="Update Book" name="update_pdt" class="btn btn-block btn-primary">
</form>