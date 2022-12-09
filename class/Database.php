<?php
// CRUD function return message or null
// Get data function return array or null
class DB{
    protected $conn;
    function __construct(){
        $servername = "localhost";
        $username = "root";
        $password = "12341234";
        $dbname = "book_ecommerce";

        $this->conn = mysqli_connect($servername, $username, $password, $dbname);
        if (!$this->conn) {
            die("conn failed: " . $this->conn->connect_error);
        }
    }
}

class Book extends DB {
    function addBook($data){
        $book_title = $data['title'];
        $book_price = $data['price'];
        $book_des = $data['des'];
        $book_img = $data['image'];
        $book_display = $data['display'];
        $book_stock = $data['stock'];
        $book_author = $data['author'];
        $book_category = $data['category'];
        //
        $book_img_name = $_FILES['book_img']['name'];
        $book_img_size = $_FILES['book_img']['size'];
        $book_img_tmp = $_FILES['book_img']['tmp_name'];
        $img_ext = pathinfo($book_img_name, PATHINFO_EXTENSION);

        list($width, $height) = getimagesize("$book_img_tmp");

        if ($img_ext == "jpg" ||  $img_ext == 'jpeg' || $img_ext == "png") {
            if ($book_img_size <= 2e+6) {
                if($width<600 && $height<600){
                    $query = "INSERT INTO book(title, price, description, image, display, stock, author) VALUES('$book_title', '$book_price', '$book_des', '$book_img_name', $book_display, $book_stock, '$book_author')";

                    if (mysqli_query($this->conn, $query)) {
                        move_uploaded_file($book_img_tmp, "uploads/".$book_img_name);
                        $query = "INSERT INTO book_category VALUES($book_id, '$book_category')";
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
        $book_des = $data['des'];
        $book_img = $data['image'];
        $book_display = $data['display'];
        $book_stock = $data['stock'];
        $book_author = $data['author'];
        $book_category = $data['category'];
        //
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

                    $query = "UPDATE book SET title='$book_title', price= $book_price, description='$book_des',`image`='$book_img_name', display=$book_display, stock=$book_stock, author='$book_author' WHERE id=$book_id";

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
}

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

class Admin extends DB{
    function adminLogin($data){
        $username = $data["username"];
        $password = md5($data['password']);

        $query = "SELECT * FROM admin WHERE username = '$username' AND password = '$password'";

        if ($result = mysqli_query($this->conn, $query)) {
            $admin_info = mysqli_fetch_assoc($result);
            if ($admin_info) {
                header("location:dashborad.php");
                session_start();
                $_SESSION['admin_id'] = $admin_info['id'];
                $_SESSION['username'] = $admin_info['username'];
                $_SESSION['role'] = $admin_info['role'];
            } else {
                $log_msg = "Email or password wrong";
                return $log_msg;
            }
        }
    }

    function adminLogout(){
        unset($_SESSION['admin_id']);
        unset($_SESSION['username']);
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
            $row = mysqli_fetch_assoc($pdt_info);
            return $row;
        }
    }

    function updateAdmin($data){
        $admin_id = $data['admin_id'];
        $email = $data['email'];
        $role = $data['role'];

        $query = "UPDATE `admin` SET `email`='$email',`role`= $role WHERE `id`= $admin_id ";
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

class Customization extends DB{
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

                if ($width < 110 && $height < 110) {

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
                    $msg = "Sorry !! Logo max height: 110px and width:110px, but you are trying {$width} px and {$height} px";
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

// test
// $book_obj = new Book();
// $admin_obj = new Admin();

// $admins = $admin_obj->getAllAdmin();
// $books = $book_obj->getAllBook();

// $title = $books[0]["title"];
// echo $title;
// echo $admins[0]["email"];
?>