INSERT INTO Solicitantes (Nombre, Email, Telefono)
VALUES 
('Juan Pérez', 'juan.perez@example.com', '123-456-7890'),
('María Gómez', 'maria.gomez@example.com', '098-765-4321'),
('Carlos Rodríguez', 'carlos.rodriguez@example.com', '555-123-4567');


INSERT INTO EstadosSolicitud (Descripcion)
VALUES 
('Pendiente'),
('Aprobada'),
('Rechazada'),
('En Proceso'),
('Completada');


INSERT INTO Servicios (NombreServicio, DescripcionServicio)
VALUES 
('Desarrollo de Software', 'Creación de aplicaciones a medida según las necesidades del cliente.'),
('Consultoría en TI', 'Asesoramiento y planificación de infraestructura tecnológica.'),
('Soporte Técnico', 'Resolución de problemas técnicos y mantenimiento de sistemas.'),
('Integración de Sistemas', 'Conexión de diferentes sistemas para que trabajen juntos.'),
('Ciberseguridad', 'Protección de la información y los sistemas contra ataques.');


INSERT INTO Solicitudes (IdSolicitante, FechaSolicitud, NroSolicitud, IdEstado)
VALUES 
(1, '2024-08-28', 'SOL-20240828-001', 1),
(2, '2024-08-28', 'SOL-20240828-002', 1),
(3, '2024-08-28', 'SOL-20240828-003', 1);


INSERT INTO ServiciosSolicitados (IdSolicitud, IdServicio)
VALUES 
(1, 1),  -- Solicitud 1 pide Desarrollo de Software
(1, 5),  -- Solicitud 1 pide Ciberseguridad
(2, 2),  -- Solicitud 2 pide Consultoría en TI
(3, 3),  -- Solicitud 3 pide Soporte Técnico
(3, 4);  -- Solicitud 3 pide Integración de Sistemas
