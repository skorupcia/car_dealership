<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $firstname = isset($_POST['firstname']) ? $_POST['firstname'] : '';
  $lastname = isset($_POST['lastname']) ? $_POST['lastname'] : '';
  $tel = isset($_POST['tel']) ? $_POST['tel'] : '';
  $reason = isset($_POST['reason']) ? $_POST['reason'] : '';
  $message = isset($_POST['mes']) ? $_POST['mes'] : '';

  echo "<h2>Wysłane wartości:</h2>";
  echo "<p><strong>Imię:</strong> $firstname</p>";
  echo "<p><strong>Nazwisko:</strong> $lastname</p>";
  echo "<p><strong>Numer Telefonu:</strong> $tel</p>";
  echo "<p><strong>Powód:</strong> $reason</p>";
  echo "<p><strong>Wiadomość:</strong> $message</p>";
}
?>
