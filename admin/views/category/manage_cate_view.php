<?php
$cateObj = new Category();
$catagories = $cateObj->getCategory();
if (isset($_GET['status'])) {
    $get_id = $_GET['id'];
    if ($_GET['status'] == "published") {
        $cateObj->categoryPublished($get_id);
    } elseif ($_GET['status'] == "unpublished") {
        $cateObj->categoryUnpublished($get_id);
    } elseif ($_GET['status'] == "delete") {
        $cateObj->deleteCategory($get_id);
    }
}
?>

<div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Catagory Name</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($catagories as $cate) { ?>
                <tr>
                    <td><?php echo $cate['id'] ?></td>
                    <td><?php echo $cate['name'] ?></td>
                    <td>
                        <?php
                        if ($cate['display'] == 0) {
                            echo "Unpublished";
                        ?>
                            <a href="?status=published&&id=<?php echo $cate['display'] ?>" class="btn btn-sm btn-success">Make Published</a>
                        <?php
                        } else {
                            echo "Published";
                        ?>
                            <a href="?status=unpublished&&id=<?php echo $cate['display'] ?>" class="btn btn-sm btn-warning">Make Unpublished</a>
                        <?php } ?>
                    </td>
                    <td>
                        <a href="edit_cata.php?status=edit&&id=<?php echo $cate['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                        <a href="?status=delete&&id=<?php echo $cate['id'] ?>" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>