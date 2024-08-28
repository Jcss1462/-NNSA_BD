SELECT 
    s.NroSolicitud AS [Nro Solicitud],
    sol.Nombre AS [Nombre Solicitante],
    es.IdEstado AS [Nro Estado Solicitud],
    es.Descripcion AS [Nombre Estado de la solicitud],
    srv.IdServicio AS [Nro Servicio],
    srv.NombreServicio AS [Nombre Servicio]
FROM 
    Solicitudes s
INNER JOIN 
    Solicitantes sol ON s.IdSolicitante = sol.IdSolicitante
INNER JOIN 
    EstadosSolicitud es ON s.IdEstado = es.IdEstado
INNER JOIN 
    ServiciosSolicitados ss ON s.IdSolicitud = ss.IdSolicitud
INNER JOIN 
    Servicios srv ON ss.IdServicio = srv.IdServicio;
