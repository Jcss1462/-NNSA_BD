--CREATE DATABASE NnsaBd;

/*
Drop table  ServiciosSolicitados;
Drop table  Solicitudes;
Drop table  Servicios;
Drop table  EstadosSolicitud;
Drop table  Solicitantes;
*/

-- Tabla para los Solicitantes
CREATE TABLE Solicitantes (
    IdSolicitante INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Telefono NVARCHAR(20) NULL
);

-- Tabla para los Estados de las Solicitudes
CREATE TABLE EstadosSolicitud (
    IdEstado INT PRIMARY KEY IDENTITY(1,1),
    Descripcion NVARCHAR(50) NOT NULL
);

-- Tabla para los Servicios
CREATE TABLE Servicios (
    IdServicio INT PRIMARY KEY IDENTITY(1,1),
    NombreServicio NVARCHAR(100) NOT NULL,
    DescripcionServicio NVARCHAR(255) NULL
);

-- Tabla para las Solicitudes
CREATE TABLE Solicitudes (
    IdSolicitud INT PRIMARY KEY IDENTITY(1,1),
    IdSolicitante INT NOT NULL FOREIGN KEY REFERENCES Solicitantes(IdSolicitante),
    FechaSolicitud DATE NOT NULL,
    NroSolicitud NVARCHAR(20) NOT NULL UNIQUE,
    IdEstado INT NOT NULL FOREIGN KEY REFERENCES EstadosSolicitud(IdEstado)
);

-- Tabla para relacionar las Solicitudes con los Servicios solicitados
CREATE TABLE ServiciosSolicitados (
    IdServicioSolicitado INT PRIMARY KEY IDENTITY(1,1),
    IdSolicitud INT NOT NULL FOREIGN KEY REFERENCES Solicitudes(IdSolicitud),
    IdServicio INT NOT NULL FOREIGN KEY REFERENCES Servicios(IdServicio)
);