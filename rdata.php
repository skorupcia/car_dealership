<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
$conn = mysqli_connect("localhost", "root", "", "user_database");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    if (!empty($username) && !empty($password)) {
        $sql = "INSERT INTO users (username, password) VALUES (?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $username, $password);

        if ($stmt->execute()) {
            echo "<div class='success'>Zarejestrowano pomyślnie!</div>";
        } else {
            echo "<div class='error'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }

        $stmt->close();
    } else {
        echo "<div class='error'>Pole nie mogą być puste</div>";
    }
} else {
    echo "<div class='error'>Wypelnij brakujące pola</div>";
}
$conn->close();
?>
