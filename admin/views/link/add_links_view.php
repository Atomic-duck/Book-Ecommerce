<?php
$link = $linkObj->displayLinks();
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
            <?php while ($ctg = mysqli_fetch_assoc($link)) { ?>
                <tr>
                    <td><?php echo $ctg['id'] ?></td>
                    <td><?php echo $ctg['email'] ?></td>
                    <td><?php echo $ctg['twitter'] ?></td>
                    <td><?php echo $ctg['fb'] ?></td>
                    <td><?php echo $ctg['pinterest'] ?></td>
                    <td><?php echo $ctg['phone'] ?></td>
                    <td>
                        <a href="edit_links.php?status=edit&&id=<?php echo $ctg['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>