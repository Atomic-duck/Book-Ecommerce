<?php
include_once('DB.php');

class Customization extends DB{
    function display_links(){
        $query = "SELECT * FROM header_info";
        $result = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($result)>0) {
            $link_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $link_datas[] = $row;
            }

            return $link_datas;
        }
    }

    function display_link_ID($id){
        $query = "SELECT * FROM header_info WHERE id = $id";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result)>0) {
            return mysqli_fetch_assoc($result);
        }
    }

   function updataLinks($data){
       $link_id = $data['id'];
       $link_email = $data['email'];
       $link_tweeter = $data['tweeter'];
       $link_fb = $data['fb'];
       $link_pin = $data['pin'];
       $link_phone = $data['phone'];

       $query = "UPDATE header_info SET email='$link_email',tweeter='$link_tweeter',fb_link= '$link_fb', pinterest='$link_pin', phone='$link_phone' WHERE id = $link_id";
       if (mysqli_query($this->conn, $query)) {
           return "Link Update successfully";
       }
   }

   function display_logo(){
       $query = "SELECT * FROM add_logo";
       $result = mysqli_query($this->conn, $query);
       
       if (mysqli_num_rows($result) > 0) {
           $logo_datas = array();
           while($row = mysqli_fetch_assoc($result)){
               $logo_datas[] = $row;
           }

           return $logo_datas;
       }
   }

   function display_logo_ID($id){
       $query = "SELECT * FROM add_logo WHERE id = $id";
       $result = mysqli_query($this->conn, $query);

       if (mysqli_num_rows($result) > 0) {
           $row = mysqli_fetch_assoc($result);
           return $row;
       }
   }

   function update_logo($data){
       $lg_id = $data['id'];

       $lg_name = $_FILES['img']['name'];
       $lg_size = $_FILES['img']['size'];
       $lg_tmp = $_FILES['img']['tmp_name'];
       $lg_ext = pathinfo($lg_name, PATHINFO_EXTENSION);

       list($width, $height) = getimagesize("$lg_tmp");


       if ($lg_ext == "jpg" ||   $lg_ext == 'jpeg' ||  $lg_ext == "png") {
           if ($lg_size <= 2e+6) {

               if ($width < 136 && $height < 37) {

                   $select_query = "SELECT * FROM `add_logo` WHERE id=$lg_id";
                   $result = mysqli_query($this->conn, $select_query);
                   $row = mysqli_fetch_assoc($result);
                   $pre_img = $row['img'];
                   unlink("uploads/".$pre_img);


                   $query = "UPDATE add_logo SET img='$lg_name' WHERE id=$lg_id";

                   if (mysqli_query($this->conn, $query)) {
                       move_uploaded_file($lg_tmp, "uploads/" . $lg_name);
                       $msg = "Logo updated successfully";
                       return $msg;
                   }
               }else{
                   $msg = "Sorry !! Logo max height: 135 and width:36px, but you are trying {$width} px and {$height} px";
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
}

?>