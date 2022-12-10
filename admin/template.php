<?php
include_once("../model/Admin.php");
include_once("../model/Category.php");
include_once("../model/Book.php");
include_once("../model/Discount.php");
include_once("../model/Comment.php");
include_once("../model/Order.php");

$adminObj = new Admin();

session_start();
$admin_id = $_SESSION['admin_id'];
$admin_email = $_SESSION['email'];
if ($admin_id == null) {
    header("location:index.php");
}

if (isset($_GET['adminLogout'])) {
    if ($_GET['adminLogout'] == "logout") {
        $adminObj->adminLogout();
    }
}
?>

<?php
include("includes/head.php")
?>

<body>

    <body>
        <div class="fixed-button">

        </div>
        <!-- Pre-loader start -->
        <div class="theme-loader">
            <div class="loader-track">
                <div class="loader-bar"></div>
            </div>
        </div>
        <!-- Pre-loader end -->
        <div id="pcoded" class="pcoded">
            <div class="pcoded-overlay-box"></div>
            <div class="pcoded-container navbar-wrapper">

                <?php include_once("includes/headernav.php") ?>

                <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">

                        <?php include_once("includes/sidenav.php") ?>

                        <div class="pcoded-content">
                            <div class="pcoded-inner-content">
                                <div class="main-body">
                                    <div class="page-wrapper">
                                        <div class="page-body">
                                            <?php
                                            if ($views) {
                                                    // Dashboard
                                                if ($views == "dashboard") {
                                                    include('views/dashboard/dashboard_view.php');
                                                    // Order
                                                } elseif ($views == "manage_order") {
                                                    include("views/order/manage_order_view.php");
                                                } elseif ($views == "manage-cata") {
                                                    include("views/category/manage_cate_view.php");
                                                } elseif ($views == "add-cata") {
                                                    include("views/category/add_cate_view.php");
                                                } elseif ($views == "edit_cata") {
                                                    include("views/category/edit_cate_view.php");
                                                    // Book
                                                } elseif ($views == "manage-product") {
                                                    include("views/book/manage_book_view.php");
                                                } elseif ($views == "edit_product") {
                                                    include("views/book/edit_book_view.php");
                                                } elseif ($views == "add-product") {
                                                    include("views/book/add_book_view.php");
                                                    // Logo
                                                } elseif ($views == "edit_logo") {
                                                    include("views/logo/edit_logo_view.php");
                                                } elseif ($views == "add_logo") {
                                                    include("views/logo/add_logo_view.php");
                                                    // Link
                                                } elseif ($views == "edit_links") {
                                                    include("views/link/edit_links_view.php");
                                                } elseif ($views == "add_link") {
                                                    include("views/link/add_links_view.php");
                                                    // Discount
                                                } elseif ($views == "add_discount") {
                                                    include("views/discount/add_discount_view.php");
                                                } elseif ($views == "manage_discount") {
                                                    include("views/discount/manage_discount_view.php");
                                                } elseif ($views == "edit_discount") {
                                                    include("views/discount/edit_discount_view.php");
                                                    // Admin
                                                } elseif ($views == "add-user") {
                                                    include("views/admin/add_user_view.php");
                                                } elseif ($views == "manage-admin") {
                                                    include("views/admin/manage_admin_view.php");
                                                } elseif ($views == "add-admin") {
                                                    include("views/admin/add_admin_view.php");
                                                } elseif ($views == "edit_admin") {
                                                    include("views/admin/edit_admin_view.php");
                                                    // Report
                                                } elseif ($views == "make_report") {
                                                    include("views/report/make_report_view.php");
                                                }
                                            }
                                            ?>

                                            <div id="styleSelector">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <?php
                include("includes/script.php")
                ?>