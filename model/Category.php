<?php
include_once('DB.php');

class Category extends DB{
   function getCategory(){
       $query = "SELECT * FROM category";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $category_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $category_datas[] = $row;
           }

           return $category_datas;
       }
   }

   function addCategory($data){
       $name = $data["category"];
       $description = $data["description"];
       $display = $data["display"];

       $query = "INSERT INTO category(name, description, display) VALUES('$name', '$description', $display)";

       if (mysqli_query($this->conn, $query)) {
           return "Successfully";
       }

       return "Failed";
   }

   function updateCategory($data){
       $name = $data["category"];
       $description = $data["description"];
       $display = $data["display"];

       $query = "UPDATE category SET name='$name', description='$description', display=$display WHERE name='$name'";
       if (mysqli_query($this->conn, $query)) {
           return "Successfully";
       }

       return "Failed";
   }

   function deleteCategory($category){
       $query = "DELETE FROM category WHERE name='$category'";
       if (mysqli_query($this->conn, $query)) {
           return "Successfully";
       }

       return "Failed";
   }
}

?>