-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Nombre del archivo: V2__CrearTablaPermisos.sql
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Crea la tabla de permisos
CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
