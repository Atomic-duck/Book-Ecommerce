<?php
// CRUD function return message or null
// Get data function return array or null
class DB{
    protected $conn;
    function __construct(){
        $servername = "localhost";
        $username = "root";
        $password = "";
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
        //
        $book_img_name = $_FILES['book_img']['name'];
        $book_img_size = $_FILES['book_img']['size'];
        $book_img_tmp = $_FILES['book_img']['tmp_name'];
        $img_ext = pathinfo($book_img_name, PATHINFO_EXTENSION);

        list($width, $height) = getimagesize("$book_img_tmp");

        if ($img_ext == "jpg" ||  $img_ext == 'jpeg' || $img_ext == "png") {
            if ($book_img_size <= 2e+6) {
                if($width<271 && $height<271){
                    $query = "INSERT INTO book(title, price, description, image, display, stock, author) VALUES('$book_title', '$book_price', '$book_des', '$book_img_name', $book_display, $book_stock, '$book_author')";

                    if (mysqli_query($this->conn, $query)) {
                        move_uploaded_file($book_img_tmp, "uploads/".$book_img_name);
                        $msg = "Book uploaded successfully";
                        return $msg;
                    }
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

    function updateBook($data){
        $book_id = $data['id'];
        $book_title = $data['title'];
        $book_price = $data['price'];
        $book_des = $data['des'];
        $book_img = $data['image'];
        $book_display = $data['display'];
        $book_stock = $data['stock'];
        $book_author = $data['author'];
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

                    $query = "UPDATE book SET title='$book_title', price= $book_price, description='$book_des',`image`='$book_img_name', display=$book_display, stock=$book_stock, author='book_author' WHERE id=$book_id";

                    if (mysqli_query($this->conn, $query)) {
                        move_uploaded_file($book_img_tmp, "uploads/".$book_img_name);
                        $msg = "Updated successfully";
                        return $msg;
                    }
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

        if ($result = mysqli_query($this->conn, $query)) {
            $book_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $book_datas[] = $row;
            }

            return $book_datas;
        }
    }

    function getBookById($id){
        $query = "SELECT * FROM book WHERE id=$id";
        $result = mysqli_query($this->conn, $query);

        if ($result = mysqli_query($this->conn, $query)) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        }
    }

    function getAllBook(){
        $query = "SELECT * FROM book";
        
        if ($result = mysqli_query($this->conn, $query)) {
            $book_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $book_datas[] = $row;
            }

            return $book_datas;
        }
    }

    function getPublishedBook(){
        $query = "SELECT * FROM book WHERE display = true";
        
        if ($result = mysqli_query($this->conn, $query)) {
            $book_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $book_datas[] = $row;
            }

            return $book_datas;
        }
    }

    function getBookByCategory($category){
        $query = "SELECT book_id FROM book_category WHERE category=$category";

        if ($result = mysqli_query($this->conn, $query)) {
            $book_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $book_id = $row["book_id"];
                $book_datas[] = $this->getBookById($book_id);
            }

            return $book_datas;
        }
    }

    function deleteBook($id){
        $sel_query = "SELECT * FROM book WHERE id=$id";
        $result = mysqli_query($this->conn, $sel_query);
        $book = mysqli_fetch_assoc($result);
        $book_title = $book['title'];
        $img_name = $book['image'];

        $del_query = "DELETE FROM book WHERE id=$id";
        if (mysqli_query($this->conn, $del_query)) {
            unlink('uploads/' . $img_name);
            return "{$book_title} delete successfully";
        }
    }

    function publishedBook($id){
        $query = "UPDATE book SET display=true WHERE id=$id";
        if (mysqli_query($this->conn, $query)) {
            return "Published successfully";
        }
    }

    function unpublishedBook($id){
        $query = "UPDATE book SET display=false WHERE id=$id";
        if (mysqli_query($this->conn, $query)) {
            return "Unpublished successfully";
        }
    }

    //
    function addBookStock($book_id, $quantity){
        $query = "UPDATE book SET stock=stock+$quantity WHERE id=$book_id";
        if (mysqli_query($this->conn, $query)) {
            return "Added Successfully";
        }
    }

    function minusBookStock($book_id, $quantity){
        $query = "UPDATE book SET stock=stock-$quantity WHERE id=$book_id";
        if (mysqli_query($this->conn, $query)) {
            return "Successfully";
        }
    }

    ///
    function addDiscountToBook($book_id, $discount_id){
        $query = "UPDATE book SET discount_id=$discount_id WHERE id=$book_id";
        if(mysqli_query($this->conn, $query)){
            return "Added successfully";
        }
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
        if ($result = mysqli_query($this->conn, $query)) {
            $row =  mysqli_fetch_assoc($result);
            return $row;
        }
    }

    function updatePassword($data){
        $admin_id = $data['admin_id'];
        $update_password = md5($data['update_password']);

        $query = "UPDATE admin SET password='$update_password' WHERE id= $admin_id";

        if (mysqli_query($this->conn, $query)) {
            $update_mag = "You password updated successfull";
            return $update_mag;
        } else {
            return "Failed";
        }
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
        else{
            return "Failed";
        }
    }

    function getAllAdmin(){
        $query = "SELECT * FROM admin";
        if($result = mysqli_query($this->conn, $query)){
            $admin_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $admin_datas[] = $row;
            }

            return $admin_datas;
        }
    }

    function getAdminById($admin_id){
        $query = "SELECT * FROM `admin` WHERE `id`=$admin_id";
        if($result = mysqli_query($this->conn, $query)){
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
            $up_msg = "Updated successfully";
            return $up_msg;
        }
    }

    function deleteAdmin($admin_id){
        $query = "DELETE FROM `admin` WHERE `id`=$admin_id";
        if(mysqli_query($this->conn, $query)){
            $del_msg = "Deleted successfully";
            return $del_msg;
        }
    }
}

class Category extends DB{
    function getCategory(){
        $query = "SELECT * FROM category";

        if ($result = mysqli_query($this->conn, $query)) {
            $category_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $category_datas[] = $row;
            }

            return $category_datas;
        }
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

    // why use $_POST
    function userLogin($data){
        $username = $data['username'];
        $password = md5($data['password']);

        $query = "SELECT * FROM customer WHERE username='$username' AND password='$password'";
        $result = mysqli_query($this->conn, $query);

        if (mysqli_num_rows($result) > 0) {
            $user_info = mysqli_fetch_array($result);
            if ($user_info) {
                header("location:userprofile.php");
                session_start();
                $_SESSION['customer_id'] = $user_info['id'];
                $_SESSION['username'] = $user_info['username'];
                $_SESSION['phone'] = $user_info['phone'];
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

        header("location:user_login.php");
        session_destroy();
    }

    // ????
    function getUser($username){
        $query = "SELECT * FROM customer WHERE username='$username'";
        if (mysqli_query($this->conn, $query)) {
            $row =  mysqli_query($this->conn, $query);
            return $row;
        }
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
        
        if ($result = mysqli_query($this->conn, $query)) {
            $comment_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $comment_datas[] = $row;
            }

            return $comment_datas;
        }
    }

    function getCommentById($cmt_id){
        $query = "SELECT * FROM comments WHERE id=$cmt_id";
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
    }

    function updateComment($data){
        $cmt_id = $data['cmt_id'];
        $comment = $data['comment'];
        $query = "UPDATE comments SET comment='$comment' WHERE id=$cmt_id";
        if(mysqli_query($this->conn, $query)){
            $updata_msg = "Comment updated successfully";
            return $updata_msg;
        }
    }

    function delete_comment($cmt_id){
        $query = "DELETE FROM comments WHERE id=$cmt_id";

        if(mysqli_query($this->conn, $query)){
            $del_msg = "Comment deleted successfully";
            return $del_msg;
        }
    }
}

class Discount extends DB{
    function addDiscount($data){
        $name = $data['name'];
        $description = $data['description'];
        $percent = $data['percent'];
        $active = $data['active'];

        $query = "INSERT INTO discount(name, description, discount_percent, active) VALUES ('$name','$description',$percent,$active)";

        if(mysqli_query($this->conn, $query)){            
            $add_msg = "Added successfully";
            return $add_msg;
        }
    }

    function getDiscount(){
        $query = "SELECT * FROM discount";
        if($result = mysqli_query($this->conn, $query)){
            $row = mysqli_fetch_assoc($result);
            return $row;
        }
    }

    function updateDiscount($data){
        $id = $data['discount_id']
        $name = $data['name'];
        $description = $data['description'];
        $percent = $data['percent'];
        $active = $data['active'];

        $query = "UPDATE discount SET name='$name', description='$description', percent=$percent, active=$active WHERE id=$id";
        if(mysqli_query($this->conn, $query)){            
            $add_msg = "Updated successfully";
            return $add_msg;
        }
    }

    function deleteDiscount($discount_id){
        $query = "DELETE FROM discount WHERE id = $discount_id";
        if(mysqli_query($this->conn, $query)){
            $add_msg = "Coupon deleted successfully";
            return $add_msg;
        }
    }
}

class Order extends DB{
    //order
    // ko tru book stock
    function place_order($data, $books)
    {
        $customer_id = $data['customer_id'];
        $total = $data['total'];
        $delivery_address = $data['delivery_address'];

        $query = "INSERT INTO customer(customer_id, total, delivery_address) VALUES ( $customer_id, $total, '$delivery_address')";

        if (mysqli_query($this->conn, $query)) {
            $order_id = mysqli_insert_id($this->conn);
            foreach($books as $book){
                $book_id = $book['book_id'];
                $price= $book['price'];
                $quantity=$book['quantity'];

                $query = "INSERT INTO order_items(order_id, book_id, quantity, price) VALUES($order_id, $book_id, $quantity, $price)";
                // no catch error
                mysqli_query($this->conn, $query);
            }
            header("location:exist_order.php");
        }
    }

    function getOrderList($customer_id){
        $query = "SELECT * FROM order_details WHERE customer_id=$customer_id ORDER BY created_at DESC";
        if ($result = mysqli_query($this->conn, $query)) {
            $order_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $order_datas[] = $row;
            }

            return $order_datas;
        }
    }

    function getOrderItems($order_id)
    {
        $query = "SELECT * FROM order_items WHERE order_id=$order_id";

        if ($result = mysqli_query($this->conn, $query)) {
            $orderitem_datas = array();
            while($row = mysqli_fetch_assoc($result)){
                $orderitem_datas[] = $row;
            }

            return $orderitem_datas;
        }
    }

    // order r k xoa dc update deleete trong cart
    // // ko cap nhat book stock
    // function updateOrderItem($item_id, $quantity){
    //     $query = "UPDATE order_items SET quantity=$quantity WHERE id=$item_id";

    //     if (mysqli_query($this->conn, $query)) {
    //         return true
    //     }
    // }

    // // ko cap nhat book stock
    // function deleteOrderItem($item_id){
    //     $query = "DELETE FROM order_items WHERE id=$item_id";

    //     if (mysqli_query($this->conn, $query)) {
    //         return true
    //     }
    // }
}

class Cart extends DB{

}

class 

// test
// $book_obj = new Book();
// $admin_obj = new Admin();

// $admins = $admin_obj->getAllAdmin();
// $books = $book_obj->getAllBook();

// $title = $books[0]["title"];
// echo $title;
// echo $admins[0]["email"];
?>