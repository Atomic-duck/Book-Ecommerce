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
       $query = "SELECT * FROM order_details ORDER BY created_at DESC";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
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
}

?>