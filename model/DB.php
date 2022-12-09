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

// test
// $book_obj = new Book();
// $books = $book_obj->getAllBook();

// $title = $books[0]["title"];
// echo $title;
?>