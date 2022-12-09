<?php
$arry = $adminObj->getAllAdmin();
if (isset($_GET['status'])) {
    $admin_id = $_GET['id'];
    if ($_GET['status'] == 'delete') {
        $del_msg = $adminObj->getAllAdmin($admin_id);
    }
}
?>

<div class="container">
    <h2>Manage user</h2>
    <h4 class="text-success">
        <?php
        if (isset($del_msg)) {
            echo $del_msg;
        }
        ?>
    </h4>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>User Id</th>
                <th>User Email</th>
                <th>User Role</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <?php
            while ($admin = mysqli_fetch_assoc($arry)) {
            ?>
                <tr>
                    <td> <?php echo $admin['id'] ?> </td>
                    <td> <?php echo $admin['email'] ?> </td>
                    <td> <?php if ($admin['role'] == 1) {
                                echo "Admin";
                            } else {
                                echo "Moderator";
                            } ?> </td>
                    <td>
                        <a href="edit_admin.php?status=userEdit&&id=<?php echo $admin['id'] ?>" class="btn btn-sm btn-warning">Edit </a>
                        <a href="?status=delete&&id=<?php echo $admin['id'] ?>" class="btn btn-sm btn-danger">Delete</a>

                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>