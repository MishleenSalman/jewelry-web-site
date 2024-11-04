
<?php
$con = mysqli_connect('localhost', 'root', '', 'myStore');

if (!$con) {
    die('Error: ' . mysqli_connect_error());
}

echo 'Connection successful!';
?>
