<?php
$bookObj = new Book();
$books =  $bookObj->getAllBook();

if (isset($_GET['prostatus'])) {
    $id = $_GET['id'];
    if ($_GET['prostatus'] == 'published') {
        $bookObj->publishedBook($id);
    } elseif ($_GET['prostatus'] == 'unpublished') {
        $bookObj->unpublishedBook($id);
    } elseif ($_GET['prostatus'] == "delete") {
        $del_msg = $bookObj->deleteBook($id);
    }
}
?>

<h2>Manage Book</h2>
<br>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Book Name</th>
            <th>Book Price</th>
            <th>Book Image</th>
            <th>Book Status</th>
            <th>Book Catagory</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        <?php
        if (isset($del_msg)) {
            echo "{$del_msg}";
        }
        ?>
        <?php
        foreach ($books as $book) { ?>
            <tr>
                <td style="width: 200px; white-space:normal" >
                    <?php echo $book['title'] ?>
                </td>
                <td> <?php echo $book['price'] ?></td>
                <td> <img style="height:60px" src="../../uploads/<?php echo $book['image'] ?>" alt="book"> </td>
                <td>
                    <?php
                    if ($book['display'] == 0) {
                        echo "Unpublished";
                    ?>
                        <a href="?prostatus=published&&id=<?php echo $book['id'] ?>" class="btn btn-sm btn-primary">Published</a>
                    <?php
                    } else {
                        echo "Published";
                    ?>
                        <a href="?prostatus=unpublished&&id=<?php echo $book['id'] ?>" class="btn btn-sm btn-warning">unpublished</a>
                    <?php
                    }
                    ?>
                </td>
                <td> <?php echo $book['category'] ?></td>
                <td> <a href="edit_Book.php?prostatus=edit&&id=<?php echo $book['id'] ?>">Edit</a> <br>
                    <a href="?prostatus=delete&&id=<?php echo $book['id'] ?>">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>