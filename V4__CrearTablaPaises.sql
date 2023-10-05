-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Nombre del archivo: V4__CrearTablaPaises.sql
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Crea la tabla de paises
CREATE TABLE paises (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    sigla VARCHAR(255) UNIQUE NOT NULL
);
