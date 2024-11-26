<link rel="stylesheet" href="style.css">
<?php
include 'database.php';

$id = $_GET['id'];

$sql = "SELECT * FROM contenido WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $id);
$stmt->execute();
$result = $stmt->get_result();
$contenido = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Detalle de la Novedad</h1>

        <!-- Sección de Objetivo -->
        <section class="detalle-section">
            <h2>Objetivo</h2>
            <p><?php echo nl2br(htmlspecialchars($contenido['objetivo'])); ?></p>
        </section>

        <!-- Sección de Descripción -->
        <section class="detalle-section">
            <h2>Descripción</h2>
            <p><?php echo nl2br(htmlspecialchars($contenido['descripcion'])); ?></p>
        </section>

        <!-- Sección de Paso a Paso -->
        <section class="detalle-section">
            <h2>Paso a Paso</h2>
            <p><?php echo nl2br(htmlspecialchars($contenido['paso_a_paso'])); ?></p>
        </section>

        <!-- Sección de Links adicionales -->
        <section class="detalle-section">
            <h2>Recursos adicionales</h2>
            <ul class="link-list">
                <li><a href="https://centrocomercialsantafe-my.sharepoint.com/:w:/r/personal/laura_garcia_centrocomercialsantafe_com/_layouts/15/Doc.aspx?sourcedoc=%7BA3A02D7C-68AE-460D-964B-879BD96C4D47%7D&file=PR-OP-IIT-09%20PROCEDIMIENTO%20SOLICITUD%20DE%20CORTESIA%20DE%20ESTACIONAMIENTO.docx&action=default&mobileredirect=true" target="_blank">Guía Completa sobre el Tema</a></li>
                <li><a href="" target="_blank">Tutorial Paso a Paso</a></li>
                <li><a href="" target="_blank">Documentación Oficial</a></li>
            </ul>
        </section>

        <!-- Botón para regresar al buscador -->
        <a href="index.php" class="button">Volver al Buscador</a>
    </div>
</body>
</html>
