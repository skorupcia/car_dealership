<?php
$conn = mysqli_connect("localhost", "root", "", "car_database");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_GET['search'])) {
    $search = mysqli_real_escape_string($conn, $_GET['search']);
    $sql = "SELECT * FROM cars WHERE make LIKE '%$search%' OR model LIKE '%$search%' OR year LIKE '%$search%'";
    $result = mysqli_query($conn, $sql);
    $cars = array();
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $cars[] = $row;
        }
    }
    echo json_encode($cars);
}
mysqli_close($conn);
?>
