<h3 class="text-center text-success">All Orders</h3>
<table class="table table-bordered mt-5">
    <thead class="table">
        <?php
        $get_orders="SELECT * FROM `user_orders`";
        $result=mysqli_query($con,$get_orders);
        $row_count=mysqli_num_rows($result);

        if ($row_count==0){
            echo "<tr>
                    <td colspan='7'><h2 class='text-danger text-center mt-5'>No Orders yet</h2></td>
                </tr>";
        }else{
            echo "<tr>
                <th>sl no</th>
                <th>Due Amount</th>
                <th>Invoice number</th>
                <th>Total products</th>
                <th>Order Date</th>
                <th>Status</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody class='bg-secondary text-light'>";
            $number=0;
            while($row_data=mysqli_fetch_assoc($result)){
                $order_id=$row_data['order_id'];
                $user_id=$row_data['user_id'];
                $amount_due=$row_data['amount_due'];
                $invoice_number=$row_data['invoice_number'];
                $total_products=$row_data['total_products'];
                $order_date=$row_data['order_date'];
                $order_status=$row_data['order_status'];
                $number++;
                echo "<tr>
                    <th>$number</th>
                    <th>$amount_due</th>
                    <th>$invoice_number</th>
                    <th>$total_products</th>
                    <th>$order_date</th>
                    <th>$order_status</th>
                    <td><a href='index.php?delete_orders=<?php echo $order_id ?>' class='text-light'><i class='fa-solid fa-trash'></i></a></td>
                    </tr>";
            }
        }

        ?>
    </tbody>
</table>
