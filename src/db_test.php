<?php
$servername = "db";  // nombre del servicio definido en docker-compose.yml
$username = "user";
$password = "userpassword";
$dbname = "mi_database";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conexión exitosa a la base de datos";
?>
