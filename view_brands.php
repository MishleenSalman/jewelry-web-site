<h3 class="text-center text-success">All Brands</h3>

<table class="table table-bordered mt-5">
    <thead class="table">
        <tr class="text-center">
            <th>S1 no</th>
            <th>Brand Title</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody class="bg-secondary text-light">
        <?php
        $select_brand="Select * from `brands`";
        $result=mysqli_query($con,$select_brand);
        $number=0;
        while($row=mysqli_fetch_assoc($result)){
            $brand_id=$row['brand_id'];
            $brand_title=$row['brand_title'];
            $number++;
        ?>
        <tr class="text-center">
            <th><?php echo $number ?></th>
            <th><?php echo $brand_title ?></th>
            <td><a href='index.php?edit_brands=<?php echo $brand_id ?>' class='text-light'><i class='fa-solid fa-pen-to-square'></i></a></td>
            <td><a href='index.php?delete_brands=<?php echo $brand_id ?>' class='text-light'><i class='fa-solid fa-trash'></i></a></td>
        </tr>
    <?php } ?>
    </tbody>
</table>