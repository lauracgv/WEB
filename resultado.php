<?php
include 'database.php';

$query = $_GET['query'];
$query = htmlspecialchars($query); // Evitar inyección de código
$query = "%{$query}%";

$sql = "SELECT * FROM contenido WHERE descripcion LIKE ? ORDER BY novedad DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param('s', $query);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de la Búsqueda</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Resultados para "<?php echo htmlspecialchars($_GET['query']); ?>"</h1>

        <?php if ($result->num_rows > 0) : ?>
            <ul class="result-list">
                <?php while ($row = $result->fetch_assoc()) : ?>
                    <li>
                        <a href="detalle.php?id=<?php echo $row['id']; ?>" class="result-link">
                            <?php echo htmlspecialchars($row['descripcion']); ?>
                        </a>
                    </li>
                <?php endwhile; ?>
            </ul>
        <?php else : ?>
            <p>No se encontraron resultados para tu búsqueda.</p>
        <?php endif; ?>

        <!-- Botón para regresar al buscador -->
        <a href="index.php" class="button">Volver al Buscador</a>
    </div>
</body>
</html>
