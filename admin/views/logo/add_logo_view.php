<?php
$customObj = new Customization();
$logoList = $customObj->display_logo();
?>

<h2>Add logo</h2>

<table class="table">
    <thead>
        <tr>
            <th>Logo ID</th>
            <th>Logo</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        <?php
        if (isset($del_msg)) {
            echo "{$del_msg}";
        }
        ?>
        <?php foreach ($logoList as $logo) {
        ?>
            <tr>
                <td> <?php echo $logo['id']; ?></td>
                <td> <img style="height:60px" src="uploads/<?php echo $logo['img']; ?>" alt=""> </td>
                <td> <a href="edit_logo.php?status=edit&&id=<?php echo $logo['id']; ?>" class="btn btn-sm btn-warning">Edit</a></td>
            </tr>
        <?php } ?>
    </tbody>
</table>