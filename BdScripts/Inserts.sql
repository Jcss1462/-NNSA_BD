INSERT INTO Solicitantes (Nombre, Email, Telefono)
VALUES 
('Juan P�rez', 'juan.perez@example.com', '123-456-7890'),
('Mar�a G�mez', 'maria.gomez@example.com', '098-765-4321'),
('Carlos Rodr�guez', 'carlos.rodriguez@example.com', '555-123-4567');


INSERT INTO EstadosSolicitud (Descripcion)
VALUES 
('Pendiente'),
('Aprobada'),
('Rechazada'),
('En Proceso'),
('Completada');


INSERT INTO Servicios (NombreServicio, DescripcionServicio)
VALUES 
('Desarrollo de Software', 'Creaci�n de aplicaciones a medida seg�n las necesidades del cliente.'),
('Consultor�a en TI', 'Asesoramiento y planificaci�n de infraestructura tecnol�gica.'),
('Soporte T�cnico', 'Resoluci�n de problemas t�cnicos y mantenimiento de sistemas.'),
('Integraci�n de Sistemas', 'Conexi�n de diferentes sistemas para que trabajen juntos.'),
('Ciberseguridad', 'Protecci�n de la informaci�n y los sistemas contra ataques.');


INSERT INTO Solicitudes (IdSolicitante, FechaSolicitud, NroSolicitud, IdEstado)
VALUES 
(1, '2024-08-28', 'SOL-20240828-001', 1),
(2, '2024-08-28', 'SOL-20240828-002', 1),
(3, '2024-08-28', 'SOL-20240828-003', 1);


INSERT INTO ServiciosSolicitados (IdSolicitud, IdServicio)
VALUES 
(1, 1),  -- Solicitud 1 pide Desarrollo de Software
(1, 5),  -- Solicitud 1 pide Ciberseguridad
(2, 2),  -- Solicitud 2 pide Consultor�a en TI
(3, 3),  -- Solicitud 3 pide Soporte T�cnico
(3, 4);  -- Solicitud 3 pide Integraci�n de Sistemas
