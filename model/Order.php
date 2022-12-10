<?php
include_once('DB.php');

class Order extends DB{
   function getCustomerOrder($customer_id){
       $query = "SELECT * FROM order_details WHERE customer_id=$customer_id ORDER BY created_at DESC";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
           $order_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $order_datas[] = $row;
           }

           return $order_datas;
       }
   }

   function getOrderItems($order_id){
       $query = "SELECT * FROM order_items WHERE order_id=$order_id";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $orderitem_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $orderitem_datas[] = $row;
           }

           return $orderitem_datas;
       }
   }

   function getAllOrder(){
       $query = "SELECT username, id, total, order_status, created_at, payment_id, customer_id, delivery_address FROM order_details LEFT JOIN customer ON customer_id=customer.id ORDER BY created_at DESC";
       $result = mysqli_query($this->conn, $query);
       if ($result && mysqli_num_rows($result) > 0) {
           $order_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $order_datas[] = $row;
           }

           return $order_datas;
       }
   }

   function updateOrderStatus($data){
       $order_id=$data["order_id"];
       $order_status = $data["order_status"];

       $query = "UPDATE order_details SET order_status='$order_status' WHERE id=$order_id";
       if(mysqli_query($this->conn, $query)){
           return "Successfully";
       }

       return "Failed";
   }

    function countOrderSince($date){
        $query = "SELECT 1 FROM order_details WHERE created_at BETWEEN '$date' and CURDATE()";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result) > 0) {
            $order_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $order_datas[] = $row;
            }

            return count($order_datas);
        }
        return 0;
    }

    function countDoneOrderSince($date){
        $query = "SELECT 1 FROM order_details WHERE created_at BETWEEN '$date' and CURDATE() AND order_status=2";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result) > 0) {
            $order_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $order_datas[] = $row;
            }

            return count($order_datas);
        }
        return 0;
    }

    function countProcessingOrderSince($date){
        $query = "SELECT 1 FROM order_details WHERE created_at BETWEEN '$date' and CURDATE() AND order_status=1";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result) > 0) {
            $order_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $order_datas[] = $row;
            }

            return count($order_datas);
        }
        return 0;
    }

    function countPendingOrderSince($date){
        $query = "SELECT 1 FROM order_details WHERE created_at BETWEEN '$date' and CURDATE() AND order_status=0";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result) > 0) {
            $order_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $order_datas[] = $row;
            }

            return count($order_datas);
        }
        return 0;
    }

    function countOrderItemSince($date){
        $query = "SELECT id FROM order_details WHERE created_at BETWEEN '$date' and CURDATE()";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result) > 0) {
            $total = 0;
            while($order = mysqli_fetch_assoc($result)){
                $order_id = $order['id'];
                $query = "SELECT SUM(quantity) as sumq FROM order_items WHERE order_id=$order_id";
                $sum_row = mysqli_query($this->conn, $query);
                $asos = mysqli_fetch_assoc($sum_row);

                $total += $asos['sumq'];
            }

            return $total;
        }

        return 0;
    }

    function countCustomerSince($date){
        $query = "SELECT 1 FROM order_details WHERE created_at BETWEEN '$date' and CURDATE() GROUP BY customer_id";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result) > 0) {
            $datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $datas[] = $row;
            }

            return count($datas);
        }
        return 0;
    }

    function getSellByBookSince($date){
        $query = "SELECT id FROM order_details WHERE created_at BETWEEN '$date' and CURDATE()";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result) > 0) {
            $total = 0;
            while($order = mysqli_fetch_assoc($result)){
                $order_id = $order['id'];
                $query = "SELECT book_id, title, SUM(quantity) as sumq FROM order_items LEFT JOIN book ON book_id=book.id WHERE order_id=$order_id GROUP BY `book_id` ORDER BY SUM(quantity) DESC";
                $result = mysqli_query($this->conn, $query);
                if (mysqli_num_rows($result) > 0) {
                    $datas = array();
                    while($row = mysqli_fetch_assoc($result)){
                        $datas[] = $row;
                    }
         
                    return $datas;
                }
            }
        }
    }

    function getSellByCustomerSince($date){
        $query = "SELECT username, COUNT(order_details.id) as sumo FROM order_details LEFT JOIN customer on customer_id=customer.id WHERE order_details.created_at BETWEEN '$date' and CURDATE() GROUP BY customer_id";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result) > 0) {
            $customer_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $customer_datas[] = $row;
            }
 
            return $customer_datas;           
        }
    }
}

?>