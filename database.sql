CREATE DATABASE buscador;

USE buscador;

CREATE TABLE contenido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion TEXT NOT NULL,
    paso_a_paso TEXT NOT NULL,
    novedad TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO contenido (descripcion, paso_a_paso) VALUES
('Cortesías de parqueadero', 'Diligenciamiento del Formato FO-ES-OP-01: Completa todos los campos del formato FO-ES-OP-01 de solicitud de cortesías de estacionamiento. 

 Entrega al Gerente: Presenta el formato FO-ES-OP-01 al Gerente correspondiente para su revisión y aprobación. 

 Notificación a Operadores de Medios de Estacionamiento: El formato firmado se debe entregar a los Anfitriones de medios de estacionamiento para aplicar la cortesía en el sistema. 

 Recepción y Validación de la Tarjeta: Se recibe la tarjeta y se valida la información de la persona con los datos suministrados en formato, asegurándose de tener la aprobación por parte de gerencia. Se realiza la aplicación de la cortesía. 

 Retiro del autorizado: La persona implicada se retira de la copropiedad sin pasar por el punto de pago. 

 Verificación mensual: El coordinador de automatización genera mensualmente un reporte desde el sistema para verificar que las cortesías ejecutadas se ajusten al presente procedimiento. 

 No Conforme al Procedimiento: Se genera un reporte a la gerencia de operaciones para iniciar la validación de la desviación, ajustado a las políticas de la copropiedad y reglamento interno del trabajo. '),
('Novedades de servicios públicos:', 'Paso a paso 2'),
('Novedades de servicios de estacionamiento', 'Paso a paso 3'),
('No pago de estacionamiento, perdidas de tarjetas', 'Paso a paso 4'),
('Fallos técnicos de sonido en zonas comunes:', 'Reportar a la central de operaciones.

Contactar al coordinar encargado, para que brinde soporte 

Si la novedad continua, se debe contactar con el proveedor para brindar el respectivo soporte y dar cierre a la novedad.'),
('Fallos técnicos en líneas telefónicas o red de internet', 'Paso a paso 6'),
('Golpes, daños o afectaciones en talanqueras de ingreso y salida vehicular', 'Paso a paso 7'),
('Daños o bloqueos en puntos de pago ', 'Paso a paso 8'),
('Bloqueo o daño en mapas de información ', 'Paso a paso 9'),
('Presencia de roedores o insectos', 'Paso a paso 10'),
('Presencia de animales o fauna silvestre', 'Paso a paso 11'),
('Mordida de perros o animales a visitantes', 'Paso a paso 12'),
('Definición de ingreso y presencia de mascotas', 'Paso a paso 13'),
('Abandono o extravió de mascotas en mall ', 'Paso a paso 14'),
('Montajes y eventos en mall', 'Paso a paso 15'),
('Ingreso de vehículos para exhibición en ferias comerciales', 'Paso a paso 16'),
('Visitas para aperturas de marcas', 'Paso a paso 17'),
('Uso adecuado de ascensor de carga de centro empresarial', 'Paso a paso 18'),
('Trabajos en altura o en cubierta ', 'Paso a paso 19'),
('Reportes de retiro de marca en stand o local ', 'Paso a paso 20'),
('Derrame de líquidos en mall o estacionamiento', 'Paso a paso 21'),
('Presencia de sustancias químicas o gases en el ambiente', 'Paso a paso 22'),
('PTAR para estacionamiento y sótanos', 'Paso a paso 23'),
('Uso de productos químicos para desinfección o limpieza de pisos', 'Paso a paso 24'),
('Ejecución de actividades o trabajos que generen perturbaciones o cualquier tipo de alteración ', 'Paso a paso 25'),
('Personas con problemas de salud (Fuera y dentro de mall)', 'Paso a paso 26'),
('Daños a marcas, vehículos o personas por filtraciones u otra novedad', 'Paso a paso 27'),
('Proceso para despresurización de tubería RCI', 'Paso a paso 28'),
('Contingencia en red de agua', 'Paso a paso 29'),
('Contingencia en red eléctrica', 'Paso a paso 30'),
('Contingencia en red de gas', 'Paso a paso 31'),
('Filtraciones en zonas comunes y marcas', 'Paso a paso 32'),
('Taponamiento de tuberías, desagües o alcantarillas que generen inundaciones o mal olor', 'Paso a paso 33'),
('Programación de encendido y apagado de iluminación en sótanos, zonas comunes de mall', 'Paso a paso 34'),
('Filtraciones, fugas de gas, tuberías en mal estado ', 'Paso a paso 35'),
('Presencia de humo, olores fuertes ', 'Paso a paso 36'),
('Accidentes de tránsito, golpes o daños a la infraestructura en estacionamiento', 'Paso a paso 37'),
('Flujo vehicular en autopista o calles aledañas al centro comercial', 'Paso a paso 38'),
('Bloqueo de taxistas en zonas perimetrales', 'Paso a paso 39'),
('Zonas de parqueo y horarios nocturnos para contratistas', 'Paso a paso 40'),
('Daños a vehículos por mal funcionamiento de talanqueras', 'Paso a paso 41'),
('Colapso y manejo crítico de estacionamiento', 'Paso a paso 42'),
('Accidentes en ascensores o escaleras eléctricas', 'Paso a paso 43'),
('Reacción del personal por hurtos en zonas comunes o marcas', 'Paso a paso 44'),
('Violencia basada en género', 'Paso a paso 45'),
('Pelea o alteración del orden público en zonas comunes', 'Paso a paso 46'),
('Fleteo en banco', 'Paso a paso 47'),
('Retención de persona sospechosa en zonas comunes y marcas', 'Paso a paso 48'),
('Novedades en baños', 'Paso a paso 49'),
('Novedades con menores de edad', 'Paso a paso 50'),
('Presencia de habitantes de calle en zona perimetral de centro comercial', 'Paso a paso 51'),
('Presencia de vendedores ambulantes dentro de mall', 'Paso a paso 52'),
('Solicitud de trazabilidad de videos (Habeas    data)', 'Paso a paso 53'),
('Actos obscenos en zonas comunes y baños ', 'Paso a paso 54'),
('Suplantación de identidad ', 'Paso a paso 55'),
('Consumo de sustancias Psicoactivas en baños o zonas comunes ', 'Paso a paso 56'),
('Instalación e granes superficies en fachadas (Vallas)', 'Paso a paso 57'),
('Acceso a zonas administrativas o restringidas ', 'Paso a paso 58'),
('Activación de protocolo Coomeva ', 'Paso a paso 59');



