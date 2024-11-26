<?php
include 'database.php';

// Obtener las últimas novedades
$sql = "SELECT * FROM contenido ORDER BY novedad DESC LIMIT 5";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscador</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Buscar Palabra Clave</h1>
        <form action="resultado.php" method="GET">
            <input type="text" name="query" placeholder="Introduce una palabra clave" required>
            <button type="submit">Buscar</button>
        </form>

        <h2>Últimas Novedades</h2>
        <ul>
        <?php while ($row = $result->fetch_assoc()) : ?>
            <li>
                <a href="detalle.php?id=<?php echo $row['id']; ?>">
                    <?php echo htmlspecialchars($row['descripcion']); ?>
                </a> - <?php echo $row['novedad']; ?>
            </li>
        <?php endwhile; ?>
        </ul>
    </div>
</body>
</html>
