<?php
if (isset($_GET['status'])) {
    $admin_id = $_GET['id'];
    if ($_GET['status'] == "userEdit") {
        $admin_info = $adminObj->getAdminById($admin_id);
        $admin = mysqli_fetch_assoc($admin_info);
    }
}

if (isset($_POST['update_admin'])) {
    $update_msg =  $adminObj->updateAdmin($_POST);
}
?>

<div class="container">
    <h4>Edit Admin/Modarator Information</h4>

    <h6>
        <?php
        if (isset($update_msg)) {
            echo  $update_msg;
        }
        ?>
    </h6>
    <form action="" method="POST">
        <div class="form-group">
            <h4>User Email</h4>
            <input type="email" name="email" class="form-control" value="<?php echo $admin['email'] ?>" required>
        </div>

        <div class="form-group">
            <h4>Password</h4>
            <input type="password" name="password" class="form-control" required>
        </div>

        <input type="hidden" name="id" value="<?php echo $admin['id'] ?>">

        <div class="form-group">
            <h4>Role</h4>
            <select name="u_user_role" class="form-control">
                <!-- <option disabled selected>--Select--</option> -->
                <option value="1" <?php if ($admin['role'] == 1) {
                                        echo "Selected";
                                    } ?>>Admin</option>
                <option value="2" <?php if ($admin['role'] == 2) {
                                        echo "Selected";
                                    } ?>>Moderator</option>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" name="update_admin" class="btn btn-primary">
        </div>
    </form>
</div>