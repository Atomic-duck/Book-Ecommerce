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

if (isset($_POST['action'])) {
    if ($_POST['action'] == 'sell_by_product') {
        $date = $_POST['did'];
        $datas = $orderObj->getSellByBookSince($date);

        $html = "";
        if($datas){
            foreach ($datas as $book) {
                $html .= "<tr> <td>" . $book['id'] . "</td> <td>" . $book['title'] . "</td><td>" . $book['sumq'] . "</td> <td>";
            }
        }
        echo $html;
    }
}


if (isset($_POST['action'])) {
    if ($_POST['action'] == 'sell_by_customer') {
        $date = $_POST['did'];

        $datas = $orderObj->getSellByCustomerSince($date);

        $html = "";
        if($datas){
            foreach ($datas as $customer) {
                $html .= "<tr> <td>" . $customer['username'] . "</td> <td>" . $customer['sumo'] . "</td><td>";
            }
        }
        echo $html;
    }
}
