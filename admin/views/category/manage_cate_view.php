<?php
$cateObj = new Category();
$catagories = $cateObj->getCategory();

if (isset($_GET['status'])) {
    $name = $_GET['name'];
    
    if ($_GET['status'] == "published") {
        $cateObj->categoryPublished($name);
    } elseif ($_GET['status'] == "unpublished") {
        $cateObj->categoryUnpublished($name);
    } elseif ($_GET['status'] == "delete") {
        $cateObj->deleteCategory($name);
    }
    $catagories = $cateObj->getCategory();
}
?>

<div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Catagory</th>
                <th>Description</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($catagories as $cate) { ?>
                <tr>
                    <td><?php echo $cate['name'] ?></td>
                    <td><?php echo $cate['description'] ?></td>
                    <td>
                        <?php
                        if ($cate['display'] == 0) {
                            echo "Unpublished";
                        ?>
                            <a href="?status=published&&name=<?php echo $cate['name'] ?>" class="btn btn-sm btn-success">Make Published</a>
                        <?php
                        } else {
                            echo "Published";
                        ?>
                            <a href="?status=unpublished&&name=<?php echo $cate['name'] ?>" class="btn btn-sm btn-warning">Make Unpublished</a>
                        <?php } ?>
                    </td>
                    <td>
                        <a href="edit_cata.php?status=edit&&name=<?php echo $cate['name'] ?>" class="btn btn-sm btn-warning">Edit</a>
                        <a href="?status=delete&&name=<?php echo $cate['name'] ?>" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>