<?php

include_once('DB.php');

class Admin extends DB{
   function adminLogin($data){
       $email = $data["email"];
       $password = md5($data['password']);

       $query = "SELECT * FROM admin WHERE email = '$email' AND password = '$password'";

       if ($result = mysqli_query($this->conn, $query)) {
           $admin_info = mysqli_fetch_assoc($result);
           if ($admin_info) {
               header("location:dashborad.php");
               session_start();
               $_SESSION['admin_id'] = $admin_info['id'];
               $_SESSION['email'] = $admin_info['email'];
               $_SESSION['role'] = $admin_info['role'];
           } else {
               $log_msg = "Email or password wrong";
               return $log_msg;
           }
       }
   }

   function adminLogout(){
       unset($_SESSION['admin_id']);
       unset($_SESSION['email']);
       unset($_SESSION['role']);
       header("location:index.php");
       session_destroy();
   }

   function getAdmin($email){
       $query = "SELECT * FROM admin WHERE email='$email'";
       $result = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($result) > 0) {
           $row =  mysqli_fetch_assoc($result);
           return $row;
       }
   }

   function updatePassword($data){
       $admin_id = $data['admin_id'];
       $update_password = md5($data['update_password']);

       $query = "UPDATE admin SET password='$update_password' WHERE id= $admin_id";

       if (mysqli_query($this->conn, $query)) {
           $update_mag = "Successfullly";
           return $update_mag;
       }

       return "Failed";
   }

   function addAdmin($data){
       $user_email = $data['email'];
       $user_pass = md5($data['password']);
       $user_role = $data['role'];

       if(!$user_email || !$data['password'] || !$user_role || $user_role < 1 || $user_role > 2) return;    

       $query = "INSERT INTO admin( `email`, `password`, `role`) VALUES ('$user_email','$user_pass',$user_role)";

       if(mysqli_query($this->conn, $query)){
           $msg="{$user_email} add as a admin successfully";
           return $msg;
       }
       
       return "Failed";
   }

   function getAllAdmin(){
       $query = "SELECT * FROM admin";
       $result = mysqli_query($this->conn, $query);
       if(mysqli_num_rows($result) > 0){
           $admin_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $admin_datas[] = $row;
           }

           return $admin_datas;
       }
   }

   function getAdminById($admin_id){
       $query = "SELECT * FROM `admin` WHERE `id`=$admin_id";
       $result = mysqli_query($this->conn, $query);
       if(mysqli_num_rows($result) > 0){
           $row = mysqli_fetch_assoc($result);
           return $row;
       }
   }

   function updateAdmin($data){
       $admin_id = $data['id'];
       $email = $data['email'];
       $pass = md5($data['password']);
       $role = $data['role'];

       if(!$email || !$data['password'] || !$role || $role < 1 || $role > 2) return;  

       $query = "UPDATE `admin` SET `email`='$email',`role`= $role, password='$pass' WHERE `id`= $admin_id ";
       if(mysqli_query($this->conn, $query)){
           $up_msg = "Successfully";
           return $up_msg;
       }

       return "Failed";
   }

   function deleteAdmin($admin_id){
       $query = "DELETE FROM `admin` WHERE `id`=$admin_id";
       if(mysqli_query($this->conn, $query)){
           $del_msg = "Successfully";
           return $del_msg;
       }

       return "Failed";
   }
}

?>