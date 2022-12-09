<?php
include_once('DB.php');

class Discount extends DB{
   function addDiscountToBook($book_id, $discount_id){
       $query = "UPDATE book SET discount_id=$discount_id WHERE id=$book_id";
       if(mysqli_query($this->conn, $query)){
           return "Successfully";
       }

       return "Failed";
   }

   function updateDiscount($data){
       $id = $data['discount_id'];
       $name = $data['name'];
       $description = $data['description'];
       $percent = $data['percent'];
       $active = $data['active'];

       $query = "UPDATE discount SET name='$name', description='$description', percent=$percent, active=$active WHERE id=$id";
       if(mysqli_query($this->conn, $query)){            
           $msg = "Successfully";
           return $msg;
       }

       return "Failed";
   }

   function addDiscount($data){
       $name = $data['name'];
       $description = $data['description'];
       $percent = $data['percent'];
       $active = $data['active'];

       $query = "INSERT INTO discount(name, description, discount_percent, active) VALUES ('$name','$description',$percent,$active)";

       if(mysqli_query($this->conn, $query)){            
           $add_msg = "Successfully";
           return $add_msg;
       }

       return "Failed";
   }

   function deleteDiscount($discount_id){
       $query = "DELETE FROM discount WHERE id = $discount_id";
       if(mysqli_query($this->conn, $query)){
           $msg = "Successfully";
           return $msg;
       }

       return "Failed";
   }

   function getAllDiscount(){
       $query = "SELECT * FROM discount";
       $result = mysqli_query($this->conn, $query);
       if(mysqli_num_rows($result) > 0){
           $row = mysqli_fetch_assoc($result);
           return $row;
       }
   }

}

?>