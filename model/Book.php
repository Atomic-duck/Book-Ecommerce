<?php
include_once('DB.php');

class Book extends DB {
   function addBook($data){
       $book_title = $data['title'];
       $book_price = $data['price'];
       $book_des = $data['description'];
       $book_display = $data['display'];
       $book_stock = $data['stock'];
       $book_author = $data['author'];
       $book_category = $data['category'];
       $discount_id = $data['discount_id'];
       //
       if(!$book_title || !$book_price || !$book_stock || !$book_category || !isset($_FILES['book_img'])) return;
       $book_img_name = $_FILES['book_img']['name'];
       $book_img_size = $_FILES['book_img']['size'];
       $book_img_tmp = $_FILES['book_img']['tmp_name'];
       $img_ext = pathinfo($book_img_name, PATHINFO_EXTENSION);

       list($width, $height) = getimagesize("$book_img_tmp");

       if ($img_ext == "jpg" ||  $img_ext == 'jpeg' || $img_ext == "png") {
           if ($book_img_size <= 2e+6) {
               if($width<=600 && $height<=600){
                   $query = "INSERT INTO book(title, price, description, image, display, stock, author, discount_id) VALUES('$book_title', '$book_price', '$book_des', '$book_img_name', $book_display, $book_stock, '$book_author', $discount_id)";

                   if (mysqli_query($this->conn, $query)) {
                    echo $book_img_tmp;
                       move_uploaded_file($book_img_tmp, "uploads/".$book_img_name);
                       $book_id = mysqli_insert_id($this->conn);
                       echo $book_id;
                       echo $book_category;
                       $query = "INSERT INTO book_category(book_id, category) VALUES($book_id, '$book_category')";
                       mysqli_query($this->conn, $query);

                       $msg = "Successfully";
                       return $msg;
                   }

                   return "Failed";
               }else{
                   $msg = "Sorry !! book image max height: 600 px and width: 600 px, but you are trying {$width} px and {$height} px";
                   return $msg;
               }


           } else {
               $msg = "File size should not be large 2MB";
               return $msg;
           }
       } else {
           $msg = "File shoul be jpg or png formate";
           return $msg;
       }
   }
   
   function updateBook($data){
       $book_id = $data['id'];
       $book_title = $data['title'];
       $book_price = $data['price'];
       $book_des = $data['description'];
       $book_display = $data['display'];
       $book_stock = $data['stock'];
       $book_author = $data['author'];
       $book_category = $data['category'];
       $discount_id = $data['discount_id'];
       //
       if(!$book_title || !$book_price || !$book_stock || !$book_category) return;
       if(isset($_FILES['book_img'])){
            $book_img_name = $_FILES['book_img']['name'];
            $book_img_size = $_FILES['book_img']['size'];
            $book_img_tmp = $_FILES['book_img']['tmp_name'];
            $img_ext = pathinfo($book_img_name, PATHINFO_EXTENSION);
    
            list($width, $height) = getimagesize("$book_img_tmp");
    
            if ($img_ext == "jpg" ||  $img_ext == 'jpeg' || $img_ext == "png") {
                if ($pdt_img_size <= 2e+6) {
                
                    if($width<271 && $height<271){
    
                        $select_query = "SELECT * FROM book WHERE id=$book_id";
                        $result = mysqli_query($this->conn, $select_query);
                        $book = mysqli_fetch_assoc($result);
                        $pre_img = $book['pdt_img'];
                        unlink("uploads/".$pre_img);
    
                        $query = "UPDATE book SET title='$book_title', price= $book_price, description='$book_des',`image`='$book_img_name', display=$book_display, stock=$book_stock, author='$book_author', discount_id=$discount_id WHERE id=$book_id";
    
                        if (mysqli_query($this->conn, $query)) {
                            move_uploaded_file($book_img_tmp, "uploads/".$book_img_name);
                            $query = "UPDATE book_category SET category='$book_category' WHERE book_id='$book_id' AND category='$book_category'";
                            mysqli_query($this->conn, $query);
    
                            $msg = "Successfully";
                            return $msg;
                        }
    
                        return "Failed";
                    }else{
                        $msg = "Sorry !! book image max height: 271 px and width: 271 px, but you are trying {$width} px and {$height} px";
                        return $msg;
                    }
    
    
                } else {
                    $msg = "File size should not be large 2MB";
                    return $msg;
                }
            } else {
                $msg = "File shoul be jpg or png formate";
                return $msg;
            }
       }
       else{
            $query = "UPDATE book SET title='$book_title', price= $book_price, description='$book_des', display=$book_display, stock=$book_stock, author='$book_author', discount_id=$discount_id WHERE id=$book_id";
        
            if (mysqli_query($this->conn, $query)) {
                $query = "UPDATE book_category SET category='$book_category' WHERE book_id='$book_id' AND category='$book_category'";
                mysqli_query($this->conn, $query);

                $msg = "Successfully";
                return $msg;
            }
       }
   }

   function searchBook($keyword){
       $query = "SELECT * FROM book WHERE title LIKE '%$keyword%'";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $book_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $book_datas[] = $row;
           }

           return $book_datas;
       }
   }

   function deleteBook($id){
       $sel_query = "SELECT image FROM book WHERE id=$id";
       $result = mysqli_query($this->conn, $sel_query);
       if(mysqli_num_rows($result) > 0){
           $book = mysqli_fetch_assoc($result);
           $img_name = $book['image'];
   
           $del_query = "DELETE FROM book WHERE id=$id";
           if (mysqli_query($this->conn, $del_query)) {
               unlink('uploads/' . $img_name);
               return "Successfully";
           }
           return "Failed";
       }
   }

   function publishedBook($id){
       $query = "UPDATE book SET display=true WHERE id=$id";
       if (mysqli_query($this->conn, $query)) {
           return "Successfully";
       }

       return "Failed";
   }

   function unpublishedBook($id){
       $query = "UPDATE book SET display=false WHERE id=$id";
       if (mysqli_query($this->conn, $query)) {
           return "Successfully";
       }

       return "Failed";
   }

   function getBookById($id){
       $query = "SELECT * FROM book WHERE id=$id";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $row = mysqli_fetch_assoc($result);
           return $row;
       }
   }

   function getAllBook(){
       $query = "SELECT * FROM book";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $book_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $book_datas[] = $row;
           }

           return $book_datas;
       }
   }

   function getAllBookCategory(){
       $query = "SELECT * FROM book_category";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $book_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $book_datas[] = $row;
           }

           return $book_datas;
       }
   }

   function getPublishedBook(){
       $query = "SELECT * FROM book WHERE display = true";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $book_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $book_datas[] = $row;
           }

           return $book_datas;
       }
   }

   function getBookByCategory($category){
       $query = "SELECT book_id FROM book_category WHERE category=$category";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $book_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $book_id = $row["book_id"];
               $book_datas[] = $this->getBookById($book_id);
           }

           return $book_datas;
       }
   }

   function getCategory($book_id){
        $query = "SELECT category FROM book_category WHERE book_id=$book_id";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result) > 0) {
            return mysqli_fetch_assoc($result);
        }
    }
}
?>