<?php
include_once('DB.php');

class Customer extends DB{
   function userRegister($data){
       $username = $data['username'];
       $user_email = $data['email'];
       $user_firstname = $data['firstname'];
       $user_lastname = $data['lastname'];
       $user_password = md5($data['password']);
       $user_phone = $data['phone'];

       $check_query = "SELECT * FROM customer WHERE username='$username'";

       $check_result = mysqli_query($this->conn, $check_query);

       $row = mysqli_num_rows($mysqli_result);

       if ($row == 1) {
           $msg = "Username or email already exist";
           return $msg;
       } else {
           $query = "INSERT INTO customer( username, email, firstname, lastname, password, phone) VALUES ('$username','$user_email',' $user_firstname',' $user_lastname','$user_password','$user_phone')";

           if (mysqli_query($this->conn, $query)) {
               $msg = "Your registration done";
               return $msg;
           }
       }
   }

   function userLogin($data){
       $username = $data['username'];
       $password = md5($data['password']);

       $query = "SELECT * FROM customer WHERE username='$username' AND password='$password'";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $user_info = mysqli_fetch_array($result);
           if ($user_info) {
               $customer_id = $user_info["id"];
               $query = "SELECT session_id FROM shopping_session WHERE customer_id=$customer_id";
               $result = mysqli_query($this->conn, $query);
               $session_id = null;
               if (mysqli_num_rows($result) == 0) {
                   $query="INSERT INTO shopping_session(customer_id) VALUES($customer_id)";
                   mysqli_query($this->conn, $query);
                   $session_id = mysqli_insert_id($this->conn);
               }
               else{
                   $row = mysqli_fetch_assoc($result);
                   $session_id = $row["id"];
               }

               session_start();
               $_SESSION['customer_id'] = $user_info['id'];
               $_SESSION['username'] = $user_info['username'];
               $_SESSION['phone'] = $user_info['phone'];
               $_SESSION['session_id'] = $session_id;
           } else {
               $logmsg = "Your username or password is incorrect";
               return $logmsg;
           }
       }
   }

   function userLogout(){
       unset($_SESSION['customer_id']);
       unset($_SESSION['username']);
       unset($_SESSION['password']);
       unset($_SESSION['session_id']);

       header("location:user_login.php");
       session_destroy();
   }

   function getUser($email){
       $query = "SELECT * FROM customer WHERE email='$email'";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
           $row = mysqli_fetch_assoc($result);
           return $row;
       }
   }

   function getAllUser($email){
       $query = "SELECT * FROM customer";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
           $user_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $user_datas[] = $row;
           }

           return $user_datas;
       }
   }

   function updateUserInfo($data){
       $user_firstname = $data['firstname'];
       $user_lastname = $data['lastname'];
       $user_phone = $data['phone'];

       $query = "UPDATE customer SET firstname='$user_firstname', lastname='$user_lastname', phone='$user_phone'";
       if(mysqli_query($this->conn, $query)){
           return "Successfully";
       }

       return "Failed";
   }

   function updateUserPassword($data){
       $customer_id = $data['customer_id'];
       $update_password = md5($data['update_password']);

       // echo $update_id.$update_password;

       $query = "UPDATE customer SET password='$update_password' WHERE id=$customer_id";

       if (mysqli_query($this->conn, $query)) {
           $update_mag = "You password updated successfull";
           return $update_mag;
       } else {
           return "Please enter a correct email";
       }
   }
}

?>