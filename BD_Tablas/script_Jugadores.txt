CREATE DATABASE GIRARPRO;

SHOW DATABASES;

USE GIRARPRO;


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



