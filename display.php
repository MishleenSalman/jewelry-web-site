<?php
include('includes/connect.php');
include('functions/common_function.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mishleen WEB-SITE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <!-- CSS only -->
    <link rel="stylesheet" href="css/style.css">
    <style>
          .nav-link{
            color: black !important; /* Make sure the text color is black */

        }
        .nav-link:hover {
            color: rgb(106, 57, 81) !important;}
            .btn:hover{
            background-color: rgb(106, 57, 81);
            color: white;
        }
        .btn-danger {
            background-color: white; 
            color: black; 
            border: 2px solid ;
        }
    </style>
</head>
<body>
    <!--NAVIGATION BAR-->
    <nav class="navbar sticky-top navbar-light navbar-expand-lg">
        <div class="container max-width">
        <a href="#" class="navbar-brand">
        <i class='fas fa-chess-queen' style='font-size:24px'></i>
        <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-label="navbar">
        <span class="navbar-toggler-icon bg-light">
        </span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="index.php" class="nav-link active text-black">Home</a></li>
            <li class="nav-item"><a href="contact.php" class="nav-link active text-black">Contact</a></li>  
            <li class="nav-item"><a href="display.php" class="nav-link active text-black">Collection</a></li>
            <li class="nav-item"><a href="./users_area/user_registeration.php" class="nav-link active text-black ">Register</a></li>  
            <li class="nav-item"><a href="cart.php" class="nav-link active text-black"><i class="fa-solid fa-cart-shopping"></i><sup>1</sup></a></li>
            <li class="nav-item"><a href="#story" class="nav-link active text-black ">$<?php total_cart_price(); ?></a></li></ul>
        <form class="d-flex" action="search_product.php" method="get">
            <input class="form-control me-2" type="search" placeholder="search" aria-label="Search" name="search_data">
            <input type="submit" value="Search" class="btn btn-outline-success" name="search_data_product">
        </form>
        </div>
        </div>
    </nav>
    
    
    <!-- second child-->
    <nav class="navbar navbar-expand-lg "style="text-align: center;left:40%;">
        <ul class="navbar-nav me-auto">
            
            <?php
            if(!isset($_SESSION['username'])){
                echo "<li class='nav-item'>
                <a class='nav-link' href='#'>welcome guest</a>
            </li>";
            }else{
                echo "<li class='nav-item'>
                <a class='nav-link' href='#'>Welcome ".$_SESSION['username']."</a>
            </li>";
            }
            if(!isset($_SESSION['username'])){
                echo "<li class='nav-item'>
                <a class='nav-link' href='./users_area/user_login.php'>login</a>
            </li>";
            }else{
                echo "<li class='nav-item'>
                <a class='nav-link' href='./users_area/logout.php'>logout</a>
            </li>";
            }
                
            ?>
        </ul>
    </nav>

    <!-- fourth child -->

    <div class="row px-1 mt-3">
        <div class="col-md-10">
            <!-- collections -->
            <div class="row">
                <!---fetching products-->
                <?php
                    get_all_products();
                    get_unique_categories();
                    get_unique_brands();
                ?>

            </div>
            
        </div>
        <div class="col-md-2 p-0" style="background: white; ">
            <!-- brands -->
            <ul class="navbar-nav me-auto text-center">
                <li class="nav-item">
                    <a href="" class="nav-link text-light"><h4 style="color: white; background-color:rgb(106, 57, 81);">Brands</h4></a>
                </li>
                <?php
                    getbrands();
                ?>
            </ul>

            <!-- categories -->
            <ul class="navbar-nav me-auto text-center">
                <li class="nav-item ">
                    <a href="" class="nav-link text-light"><h4 style="color: white; background-color:rgb(106, 57, 81);">categories</h4></a>
                </li>
                <?php
                    getcategories();
                ?>
                
            </ul>
        </div>
    </div>






    <!-- footer section start -->
    <footer style="background: rgb(106, 57, 81);
        padding: 15px 23px;
        color: #fff;
         text-align: center;">
      <div class="footer col-md-12 text-center">
        <span>Copyright@ 2024 Mishleen WEB-SITE | ALL Rights Reserved.</span>
      </div>
    </footer>
    <script src="script.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
