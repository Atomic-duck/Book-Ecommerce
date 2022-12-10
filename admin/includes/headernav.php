<?php
include("../model/Customization.php");
?>
<nav class="navbar header-navbar pcoded-header">
    <div class="navbar-wrapper">
        <div class="navbar-logo">
            <a class="mobile-menu" id="mobile-collapse" href="#!">
                <i class="ti-menu"></i>
            </a>
            <a href="index.php">
                <?php
                $customObj = new Customization();
                $logo_info = $customObj->display_logo();
                $logo = $logo_info[0];
                ?>
                <img class="img-fluid" src="uploads/<?php echo $logo['img']; ?>" alt="Theme-Logo" />
                <a class="mobile-options">
                    <i class="ti-more"></i>
                </a>
        </div>

        <div class="navbar-container container-fluid">
            <ul class="nav-right">
                <li class="user-profile header-notification">
                    <a href="#!">
                        <img src="assets/images/admin-avatar.png" class="img-radius" alt="User-Profile-Image">
                        <span> <?php echo $admin_email ?> </span>
                        <i class="ti-angle-down"></i>
                    </a>
                    <ul class="show-notification profile-notification">
                        <li>
                            <a href="?adminLogout=logout">
                                <i class="ti-layout-sidebar-left"></i> Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>