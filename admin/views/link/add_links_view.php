<?php
$customObj = new Customization();
$linkList = $customObj->display_links();
?>

<div>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <th>twitter</th>
                <th>Facebook</th>
                <th>Pinterest</th>
                <th>Phone</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($linkList as $link) { ?>
                <tr>
                    <td><?php echo $link['id'] ?></td>
                    <td><?php echo $link['email'] ?></td>
                    <td><?php echo $link['tweeter'] ?></td>
                    <td><?php echo $link['fb_link'] ?></td>
                    <td><?php echo $link['pinterest'] ?></td>
                    <td><?php echo $link['phone'] ?></td>
                    <td>
                        <a href="edit_links.php?status=edit&&id=<?php echo $link['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>