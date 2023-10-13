# tabla jugadores
ALTER TABLE jugadores MODIFY COLUMN id_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla alquiler_canchas
ALTER TABLE alquiler_canchas MODIFY COLUMN id_alquiler INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla asistencias_jugador
ALTER TABLE asistencias_jugador MODIFY COLUMN id_asistencias INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla canchas
ALTER TABLE canchas MODIFY COLUMN id_cancha INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla ciudades
ALTER TABLE ciudades MODIFY COLUMN id_ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla departamentos
ALTER TABLE departamentos MODIFY COLUMN id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla disponibilidad_canchas
ALTER TABLE disponibilidad_canchas MODIFY COLUMN id_disponibilidad INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla encuentros
ALTER TABLE encuentros MODIFY COLUMN id_encuentro INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla equipos
ALTER TABLE equipos MODIFY COLUMN id_equipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla estadistica_encuentro
ALTER TABLE estadistica_encuentro MODIFY COLUMN id_estadistica_encuentro INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla estadistica_jugador
ALTER TABLE estadistica_jugador MODIFY COLUMN id_estadistica_jug INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla fecha
ALTER TABLE fecha MODIFY COLUMN idfecha INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla historial_tarjetas
ALTER TABLE historial_tarjetas MODIFY COLUMN id_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla login
ALTER TABLE login MODIFY COLUMN id_login INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla multa_sancion
ALTER TABLE multa_sancion MODIFY COLUMN id_multa_sancion INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla pais
ALTER TABLE pais MODIFY COLUMN id_pais INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla posicion_jugador
ALTER TABLE posicion_jugador MODIFY COLUMN id_posicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla roles
ALTER TABLE roles MODIFY COLUMN id_rol INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla sancion
ALTER TABLE sancion MODIFY COLUMN id_sancion INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla tarjetas
ALTER TABLE tarjetas MODIFY COLUMN id_tarjeta INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

#tabla torneos
ALTER TABLE torneos MODIFY COLUMN id_torneo INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
