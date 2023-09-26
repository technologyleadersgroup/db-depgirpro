-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Nombre del archivo: V1__CrearTablaUsuarios.sql
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Crea la tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
