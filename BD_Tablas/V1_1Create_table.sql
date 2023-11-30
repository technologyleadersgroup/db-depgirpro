#Tabla sancion
CREATE TABLE sancion(
id_sancion INT NOT NULL DEFAULT -999,
sancion VARCHAR(15) DEFAULT "NO DISPONIBLE",
id_multa_sancion INT DEFAULT 0
);

#Tabla alquiler canchas
CREATE TABLE alquiler_canchas(
id_alquiler INT NOT NULL DEFAULT -999,
id_cancha INT DEFAULT 0,
cantidad_horas INT DEFAULT 0,
id_fecha_ini INT DEFAULT 0,
id_fecha_fin INT DEFAULT 0
);

#Tabla asistencias_jugador
CREATE TABLE asistencias_jugador(
id_asistencias INT NOT NULL DEFAULT -999,
id_persona INT DEFAULT 0,
id_encuentros INT DEFAULT 0
);

#Tabla canchas
CREATE TABLE canchas(
id_cancha INT NOT NULL DEFAULT -999,
nombre VARCHAR(45) DEFAULT "NO DISPONIBLE",
direccion VARCHAR(45) DEFAULT "NO DISPONIBLE",
horarios VARCHAR(100) DEFAULT "NO DISPONIBLE",
valor INT DEFAULT 0,
id_ciudad INT DEFAULT 0
);

#Tabla ciudades
CREATE TABLE ciudades(
id_ciudad INT NOT NULL DEFAULT -999,
ciudad VARCHAR(45) DEFAULT "NO DISPONIBLE",
id_departamento INT DEFAULT 0
);

#Tabla departamentos
CREATE TABLE departamentos(
id_departamento INT NOT NULL DEFAULT -999, 
departamento VARCHAR(35) DEFAULT "NO DISPONIBLE",
id_pais INT DEFAULT 0
);

#Tabla disponibilidad canchas
CREATE TABLE disponibilidad_canchas(
id_disponibilidad INT NOT NULL DEFAULT -999,
id_alquiler INT DEFAULT 0,
id_cancha INT DEFAULT 0,
id_fecha_ini INT DEFAULT 0,
id_fecha_fin INT DEFAULT 0,
estado VARCHAR(20) DEFAULT "NO DISPONIBLE"
);

#Tabla encuentros
CREATE TABLE encuentros(
id_encuentro INT NOT NULL DEFAULT -999,
id_equipo_local INT DEFAULT 0,
id_equipo_visitante INT DEFAULT 0,
id_fecha INT DEFAULT 0,
jornada VARCHAR(45) DEFAULT "NO DISPONIBLE"
);

#Tabla equipos
CREATE TABLE equipos(
id_equipo INT NOT NULL DEFAULT -999,
nombre VARCHAR(30) DEFAULT "NO DISPONIBLE",
cantidad_jugadores INT DEFAULT 0,
id_director_tec INT  DEFAULT 0
);

#Tabla estadistica encuentro
CREATE TABLE estadistica_encuentro(
id_estadistica_encuentro INT NOT NULL DEFAULT -999,
id_encuentro INT DEFAULT 0,
tiempo_extra VARCHAR(15) DEFAULT "NO DISPONIBLE",
resultado_equipo_local INT DEFAULT 0,
resultado_equipo_visitante INT DEFAULT 0,
cant_tarjetas_equipo_local INT DEFAULT 0,
cant_tarjetas_equipo_visitante INT DEFAULT 0
);

#Tabla estadistica jugador
CREATE TABLE estadistica_jugador(
id_estadistica_jug INT NOT NULL DEFAULT -999,
id_persona INT DEFAULT 0,
id_estadistica_encuentro INT DEFAULT 0,
cant_asistencias INT DEFAULT 0,
cant_goles INT DEFAULT 0
);

#Tabla fecha
CREATE TABLE fecha(
idfecha INT NOT NULL DEFAULT -999,
fecha DATE DEFAULT '1900-01-01',
año INT DEFAULT 0,
mes INT DEFAULT 0,
dia INT DEFAULT 0
); 

#Tabla historial tarjetas
CREATE TABLE historial_tarjetas(
id_historial INT NOT NULL DEFAULT -999,
id_tarjeta INT DEFAULT 0,
id_sancion INT DEFAULT 0,
id_persona INT DEFAULT 0,
cumple_sancion VARCHAR(15) DEFAULT "NO DISPONIBLE"
);

#Tabla jugadores
#CREATE TABLE jugadores(
#id_jugador INT NOT NULL DEFAULT -999,
#id_posicion INT DEFAULT 0,
#id_equipo INT DEFAULT 0,
#nombre VARCHAR(50) DEFAULT "NO DISPONIBLE",
#identificacion VARCHAR(15) DEFAULT "NO DISPONIBLE",
#edad VARCHAR(2) DEFAULT 00,
#peso TINYINT(4) DEFAULT 0,
#altura DECIMAL(2,0) DEFAULT 0,
#foto VARCHAR(100) DEFAULT "NO DISPONIBLE",
#correo VARCHAR(60) DEFAULT "NO DISPONIBLE",
#dorsal VARCHAR(2) DEFAULT 00
#);

#Tabla personas
CREATE TABLE personas(
id_persona INT NOT NULL DEFAULT -999,
id_posicion INT DEFAULT 0,
id_equipo INT DEFAULT 0,
id_rol INT DEFAULT 0,
nombre VARCHAR(50) DEFAULT "NO DISPONIBLE",
identificacion VARCHAR(15) DEFAULT "NO DISPONIBLE",
edad VARCHAR(2) DEFAULT 00,
peso TINYINT(4) DEFAULT 0,
altura DECIMAL(2,0) DEFAULT 0,
foto VARCHAR(100) DEFAULT "NO DISPONIBLE",
correo VARCHAR(60) DEFAULT "NO DISPONIBLE",
contrasena VARCHAR(200) DEFAULT "NO DISPONIBLE",
dorsal VARCHAR(2) DEFAULT 00,
fecha_creacion DATE DEFAULT '1900-01-01',
fecha_modificacion DATE DEFAULT '1900-01-01'
);

#Tabla login
#CREATE TABLE login(
#id_login INT NOT NULL DEFAULT -999,
#usuario VARCHAR(45) DEFAULT "NO DISPONIBLE",
#contrasena VARCHAR(20) DEFAULT "NO DISPONIBLE",
#id_rol INT DEFAULT 0,
#id_persona INT DEFAULT 0
#);

#Tabla multa sancion 
CREATE TABLE multa_sancion(
id_multa_sancion INT NOT NULL DEFAULT -999,
multa FLOAT DEFAULT 0
);

#Tabla pais
CREATE TABLE pais(
id_pais INT NOT NULL DEFAULT -999, 
pais VARCHAR(45) DEFAULT "NO DISPONIBLE",
nom VARCHAR(25) DEFAULT "NO DISPONIBLE",
name VARCHAR(25) DEFAULT "NO DISPONIBLE",
iso2 VARCHAR(25) DEFAULT "NO DISPONIBLE",
iso3 VARCHAR(25) DEFAULT "NO DISPONIBLE",
phone_code VARCHAR(25) DEFAULT "NO DISPONIBLE",
predeterminado VARCHAR(2) DEFAULT 00
);

#Tabla posicion jugador
CREATE TABLE posicion_jugador(
id_posicion INT NOT NULL DEFAULT -999,
nombre VARCHAR(15) DEFAULT "NO DISPONIBLE",
abreviatura VARCHAR(3) DEFAULT 000
);

#Tabla roles
CREATE TABLE roles(
id_rol INT NOT NULL DEFAULT -999,
rol VARCHAR(20) DEFAULT "NO DISPONIBLE"
); 

#Tabla tarjetas
CREATE TABLE tarjetas(
id_tarjeta INT NOT NULL DEFAULT -999,
id_sancion INT DEFAULT 0,
id_persona INT DEFAULT 0,
tarjeta VARCHAR(20) DEFAULT "NO DISPONIBLE"
);

#Tabla torneos
CREATE TABLE torneos(
id_torneo INT NOT NULL DEFAULT -999,
id_encuentro INT DEFAULT 0,
id_fecha_inicial INT DEFAULT 0,
id_fecha_final INT DEFAULT 0,
jornada VARCHAR(20) DEFAULT "NO DISPONIBLE",
premio VARCHAR(45) DEFAULT "NO DISPONIBLE"
);

