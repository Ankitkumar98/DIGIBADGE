<?php
    $server="localhost";
    $username="root";
    $databasepassword="";
    $database="digibadge";

    $dbc=mysqli_connect($server,$username,$databasepassword,$database) or die("Error connecting to database");
   // echo 'database connected';
?>