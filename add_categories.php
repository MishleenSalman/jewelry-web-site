
<?php
include('../includes/connect.php');
if(isset($_POST['insert_cat'])){
    $cat_title=$_POST['cat_title'];
    //select data from db
    $select_query="Select * from `categories` where category_title='$cat_title'";
    $res_select=mysqli_query($con,$select_query);
    $number=mysqli_num_rows($res_select);
    if($number>0){
        echo "<script>alert('this category is already inside the database')</script>";
    }else{
        $insert_query="INSERT INTO `categories` (`category_title`) VALUES ('$cat_title')";
        $res=mysqli_query($con,$insert_query);
        if($res){
            echo "<script>alert('category has been inserted successfully')</script>";
        }
    }
}
?>

<h2 class="text-center">Add Categories</h2>

<form action="" method="post" class="mb-2">
<div class="input-group mb-2 w-90">
    <span class="input-group-text " id="basic-addon1"><i class="fa-solid fa-receipt"></i></span>
    <input type="text" class="form-control" name="cat_title" placeholder="Add Category" aria-label="Categories" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-2 w-10 m-auto">
    <input type="submit" class=" border-0 p-2 my" name="insert_cat" value="Add Category">
</div>

</form>