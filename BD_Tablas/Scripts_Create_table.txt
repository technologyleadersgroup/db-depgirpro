#Tabla sancion
CREATE TABLE sancion(
id_sancion INT NOT NULL,
sancion VARCHAR(15),
id_multa_sancion INT
);

#Tabla alquiler canchas
CREATE TABLE Alquiler_Canchas(
id_alquiler INT NOT NULL,
id_cancha INT,
cantidad_horas INT,
id_fecha_ini INT,
id_fecha_fin INT
);

#Tabla asistencias_jugador
CREATE TABLE ASISTENCIAS_JUGADOR(
id_asistencias INT NOT NULL,
id_jugador INT,
id_encuentros INT
);

#Tabla canchas
CREATE TABLE Canchas(
id_cancha INT NOT NULL,
nombre VARCHAR(45),
direccion VARCHAR(45),
horarios VARCHAR(100),
valor INT,
id_ciudad INT
);

#Tabla ciudades
CREATE TABLE Ciudades(
id_ciudad INT NOT NULL,
ciudad VARCHAR(45),
id_departamento INT
);

#Tabla departamentos
CREATE TABLE departamentos(
id_departamento INT NOT NULL, 
departamento VARCHAR(35),
id_pais INT
);

#Tabla disponibilidad canchas
CREATE TABLE Disponibilidad_Canchas(
id_disponibilidad INT NOT NULL,
id_alquiler INT,
id_cancha INT,
id_fecha_ini INT,
id_fecha_fin INT,
estado VARCHAR(20)
);

#Tabla encuentros
CREATE TABLE Encuentros(
id_encuentro INT NOT NULL,
id_equipo_local INT,
id_equipo_visitante INT,
id_fecha INT,
jornada VARCHAR(45)
);

#Tabla equipos
CREATE TABLE Equipos(
id_equipo INT NOT NULL,
nombre VARCHAR(30),
cantidad_jugadores INT,
id_director_tec INT
);

#Tabla estadistica encuentro
CREATE TABLE Estadistica_Encuentro(
id_estadistica_encuentro INT NOT NULL,
id_encuentro INT,
tiempo_extra VARCHAR(9),
resultado_equipo_local INT,
resultado_equipo_visitante INT,
cant_tarjetas_equipo_local INT,
cant_tarjetas_equipo_visitante INT
);

#Tabla estadistica jugador
CREATE TABLE estadistica_jugador(
id_estadistica_jug INT NOT NULL,
id_jugador INT,
id_estadistica_encuentro INT,
cant_asistencias INT,
cant_goles INT
);

#Tabla fecha
CREATE TABLE Fecha(
idfecha INT NOT NULL,
fecha DATE,
año INT,
mes INT,
dia INT
); 

#Tabla historial tarjetas
CREATE TABLE Historial_Tarjetas(
id_historial INT NOT NULL,
id_tarjeta INT,
id_sancion INT,
id_jugador INT,
cumple_sancion VARCHAR(10)
);

#Tabla jugadores
CREATE TABLE Jugadores(
id_jugador INT NOT NULL,
id_posicion INT,
id_equipo INT,
nombre VARCHAR(50),
identificacion VARCHAR(12),
edad VARCHAR(2),
peso TINYINT(4),
altura DECIMAL(2,0),
foto VARCHAR(100),
correo VARCHAR(60),
dorsal VARCHAR(2)
);

#Tabla login
CREATE TABLE login(
id_login INT NOT NULL,
usuario VARCHAR(45),
contrasena VARCHAR(20),
id_rol INT,
id_jugador INT
);

#Tabla multa sancion 
CREATE TABLE multa_sancion(
id_multa_sancion INT NOT NULL,
multa FLOAT
);

#Tabla pais
CREATE TABLE pais(
id_pais INT NOT NULL, 
pais VARCHAR(45),
nom VARCHAR(25),
name VARCHAR(25),
iso2 VARCHAR(25),
iso3 VARCHAR(25),
phone_code VARCHAR(25),
predeterminado VARCHAR(2)
);

#Tabla posicion jugador
CREATE TABLE Posicion_Jugador(
id_posicion INT NOT NULL,
nombre VARCHAR(15),
abreviatura VARCHAR(3)
);

#Tabla roles
CREATE TABLE roles(
id_rol INT NOT NULL,
rol VARCHAR(20)
); 

#Tabla tarjetas
CREATE TABLE Tarjetas(
id_tarjeta INT NOT NULL,
id_sancion INT,
id_jugador INT,
tarjeta VARCHAR(20)

);

#Tabla torneos
CREATE TABLE Torneos(
id_torneo INT NOT NULL,
id_encuentro INT,
id_fecha_inicial INT,
id_fecha_final INT,
jornada VARCHAR(20),
premio VARCHAR(45)
);

