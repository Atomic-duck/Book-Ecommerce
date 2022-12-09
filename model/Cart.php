<?php
include_once('DB.php');

class Cart extends DB{
   function createSession($customer_id){
       $query="INSERT INTO shopping_session(customer_id) VALUES($customer_id)";
       if (mysqli_query($this->conn, $query)){
           $session_id = mysqli_insert_id($this->conn);
           session_start();
           $_SESSION['session_id'] = $session_id;
           return "Successfully";
       }

       return "Failed";
   }

   function updateTotal($session_id){
       $cartitems = $this->getCartItems($session_id);
       $total = 0;
       foreach($cartitems as $cartitem){
           $total += $cartitem["price"] * $cartitem["quantity"];
       }

       $query="UPDATE shopping_session SET total=$total WHERE session_id=$session_id";
       if (mysqli_query($this->conn, $query)){
           return "Successfully";
       }

       return "Failed";
   }

   function deleteSession($session_id){
       $query="DELETE FROM shopping_session WHERE session_id=$session_id";
       if (mysqli_query($this->conn, $query)){
           return "Successfully";
       }

       return "Failed";
   }

   function getCurSession($customer_id){
       $query = "SELECT * FROM shopping_session WHERE customer_id=$customer_id";
       if ($result = mysqli_query($this->conn, $query)) {
           $row = mysqli_fetch_assoc($result);

           return $row;
       }
   }
   
   function getCartItems($session_id){
       $query = "SELECT * FROM cart_item WHERE session_id=$session_id";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $cartitem_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $cartitem_datas[] = $row;
           }

           return $cartitem_datas;
       }
   }

   function addCartItem($data){
       $session_id = $data["session_id"];
       $book_id = $data["book_id"];
       $quantity = $data["quantity"];
       $price = $data["price"];

       $query="INSERT INTO cart_item(session_id, book_id, quantity, price) VALUES($customer_id, $book_id, $quantity, $price)";
       if (mysqli_query($this->conn, $query)){
           $this->updateTotal($session_id);
           return "Successfully";
       }

       return "Failed";
   }

   function updateBookQuantity($data){
       $session_id = $data["session_id"];
       $book_id = $data["book_id"];
       $quantity = $data["quantity"];

       $query="UPDATE cart_item SET quantity=$quantity WHERE session_id=$session_id AND book_id=$book_id";
       if (mysqli_query($this->conn, $query)){
           $this->updateTotal($session_id);
           return "Successfully";
       }

       return "Failed";
   }

   function removeBook($data){
       $session_id = $data["session_id"];
       $book_id = $data["book_id"];

       $query="DELETE FROM cart_item WHERE session_id=$session_id AND book_id=$book_id";
       if (mysqli_query($this->conn, $query)){
           $this->updateTotal($session_id);
           return "Successfully";
       }

       return "Failed";
   }

   function placeOrder($data){
       $session_id = $data["session_id"];
       $provider = $data["payment_provider"];
       $address = $data["address"];

       $query = $query = "SELECT * FROM shopping_session WHERE session_id=$session_id";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
           $session = mysqli_fetch_assoc($result);
           $customer_id = $session["customer_id"];
           $total = $session["total"];

           $query = "INSERT INTO order_details(customer_id, total, delivery_address) VALUES($customer_id, $total, '$address')";
           if(mysqli_query($this->conn, $query)){
               $order_id = mysqli_insert_id($this->conn);
               $query = "INSERT INTO payment_details(order_id, provider) VALUES($order_id, '$provider')";
               mysqli_query($this->conn, $query);
           
               // move cartitem to orderitem
               $cartitems = $this->getCartItems($session_id);
               foreach($cartitems as $cartitem){
                   $book_id = $cartitem['book_id'];
                   $price= $cartitem['price'];
                   $quantity=$cartitem['quantity'];
   
                   $query = "SELECT * FROM book WHERE id= $book_id";
                   $result2 = mysqli_query($this->conn, $query);
                   $book = mysqli_fetch_assoc($result2);

                   if($book["stock"] >= $quantity){
                       $query = "INSERT INTO order_items(order_id, book_id, quantity, price) VALUES($order_id, $book_id, $quantity, $price)";
                       if(mysqli_query($this->conn, $query)){
                           $query = "UPDATE book SET stock=stock-$quantity WHERE id= $book_id";
                           mysqli_query($this->conn, $query);
                       }
                   }
               }

               $this->deleteSession($session_id);
               $this->createSession($customer_id);
           }
       }
   }
}

?>