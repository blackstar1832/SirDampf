<?php
$servername = "localhost";
$username = "admin";
$password = "admin";
$dbName= "sirdampf";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName) or die("Connection failed: " . $conn->connect_error);
mysqli_set_charset($conn, 'utf8');

?>