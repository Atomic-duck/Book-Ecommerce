<?php
include_once('DB.php');

class Comment extends DB{
   function getBookComment($book_id){
       $query = "SELECT * FROM comments WHERE book_id=$book_id";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $comment_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $comment_datas[] = $row;
           }

           return $comment_datas;
       }
   }

   function getAllComment(){
       $query = "SELECT * FROM comments";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $comment_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $comment_datas[] = $row;
           }

           return $comment_datas;
       }
   }

   function getCommentById($com_id){
        $query = "SELECT * FROM comments WHERE id=$com_id";
        $result = mysqli_query($this->conn, $query);
        
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);

            return $row;
        }
   }

   function postComment($data){
       $customer_id = $data['customer_id'];
       $username = $data['username'];
       $book_id = $data['book_id'];
       $comment =  $data['comment'];

       $query = "INSERT INTO comments(customer_id, book_id , username, comment) VALUES ($customer_id, $book_id,'$username','$comment')";
       
       if(mysqli_query($this->conn, $query)){
           $msg = "Thanks for your valuable feedback";
           return $msg;
       }

       return "Failed";
   }

   function updateComment($data){
       $cmt_id = $data['cmt_id'];
       $comment = $data['comment'];
       $query = "UPDATE comments SET comment='$comment' WHERE id=$cmt_id";
       if(mysqli_query($this->conn, $query)){
           $updata_msg = "Comment updated successfully";
           return $updata_msg;
       }

       return "Failed";
   }

   function delete_comment($cmt_id){
       $query = "DELETE FROM comments WHERE id=$cmt_id";

       if(mysqli_query($this->conn, $query)){
           $del_msg = "Comment deleted successfully";
           return $del_msg;
       }

       return "Failed";
   }
}

?>