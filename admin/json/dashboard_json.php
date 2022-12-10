<?php
include_once("../../model/Order.php");
$orderObj = new Order();

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_allorder') {
        $date = $_POST['did'];
        $num = $orderObj->countOrderSince($date);
        
        echo $num;
    }
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_allsell') {
        $date = $_POST['did'];
        $num = $orderObj->countOrderItemSince($date);
        
        echo $num;
    }
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_allcustomer') {
        $date = $_POST['did'];
        $num = $orderObj->countCustomerSince($date);
        
        echo $num;
    }
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_delivered_order') {
        $date = $_POST['did'];
        $num = $orderObj->countDoneOrderSince($date);
        
        echo $num;
    }
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_processing_order') {
        $date = $_POST['did'];
        $num = $orderObj->countProcessingOrderSince($date);
        
        echo $num;
    }
}

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'load_pending_order') {
        $date = $_POST['did'];
        $num = $orderObj->countPendingOrderSince($date);
        
        echo $num;
    }
}
