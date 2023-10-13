#Tabla jugadores
ALTER TABLE jugadores ADD FOREIGN KEY(id_posicion) REFERENCES posicion_jugador (id_posicion);

#Tabla jugadores
ALTER TABLE jugadores ADD FOREIGN KEY(id_equipo) REFERENCES equipos (id_equipo);

#Tabla equipos
ALTER TABLE equipos ADD FOREIGN KEY(id_director_tec) REFERENCES jugadores (id_jugador);

#Tabla tarjetas
ALTER TABLE tarjetas ADD FOREIGN KEY(id_jugador) REFERENCES jugadores (id_jugador);

ALTER TABLE tarjetas ADD FOREIGN KEY(id_sancion) REFERENCES sancion(id_sancion);

ALTER TABLE historial_tarjetas ADD FOREIGN KEY(id_jugador) REFERENCES jugadores (id_jugador);

#Tabla Torneo
ALTER TABLE torneos ADD FOREIGN KEY(id_encuentro) REFERENCES encuentros (id_encuentro);

ALTER TABLE torneos ADD FOREIGN KEY(id_fecha_inicial) REFERENCES fecha (idfecha);

ALTER TABLE torneos ADD FOREIGN KEY(id_fecha_final) REFERENCES fecha (idfecha);


#Tabla historial_tarjetas
ALTER TABLE historial_tarjetas ADD FOREIGN KEY(id_tarjeta) REFERENCES tarjetas (id_tarjeta);

ALTER TABLE historial_tarjetas ADD FOREIGN KEY(id_sancion) REFERENCES sancion (id_sancion);


#Tabla estadistica_jugador
ALTER TABLE estadistica_jugador ADD FOREIGN KEY(id_jugador) REFERENCES jugadores (id_jugador);

ALTER TABLE estadistica_jugador ADD FOREIGN KEY(id_estadistica_encuentro) REFERENCES estadistica_encuentro (id_estadistica_encuentro);


#Tabla estadistica_encuentro
ALTER TABLE estadistica_encuentro ADD FOREIGN KEY(id_encuentro) REFERENCES encuentros (id_encuentro);


#Tabla encuentros
ALTER TABLE encuentros ADD FOREIGN KEY(id_equipo_local) REFERENCES equipos (id_equipo);

ALTER TABLE encuentros ADD FOREIGN KEY(id_equipo_visitante) REFERENCES equipos (id_equipo);

ALTER TABLE encuentros ADD FOREIGN KEY(id_fecha) REFERENCES fecha (idfecha);
.


#Tabla disponibilidad_canchas
ALTER TABLE disponibilidad_canchas ADD FOREIGN KEY(id_alquiler) REFERENCES alquiler_canchas (id_alquiler);

ALTER TABLE disponibilidad_canchas ADD FOREIGN KEY(id_cancha) REFERENCES canchas (id_cancha);


ALTER TABLE disponibilidad_canchas ADD FOREIGN KEY(id_fecha_ini) REFERENCES fecha (idfecha);

ALTER TABLE disponibilidad_canchas ADD FOREIGN KEY(id_fecha_fin) REFERENCES fecha (idfecha);


#Tabla canchas
ALTER TABLE canchas ADD FOREIGN KEY(id_ciudad) REFERENCES ciudades (id_ciudad);


#Tabla asistencias_jugador
ALTER TABLE asistencias_jugador ADD FOREIGN KEY(id_jugador) REFERENCES jugadores (id_jugador);

ALTER TABLE asistencias_jugador ADD FOREIGN KEY(id_encuentros) REFERENCES encuentros (id_encuentro);


#Tabla alquiler_canchas
ALTER TABLE alquiler_canchas ADD FOREIGN KEY(id_cancha) REFERENCES canchas (id_cancha);

ALTER TABLE alquiler_canchas ADD FOREIGN KEY(id_fecha_ini) REFERENCES fecha (idfecha);

ALTER TABLE alquiler_canchas ADD FOREIGN KEY(id_fecha_fin) REFERENCES fecha (idfecha);


#Tabla login
ALTER TABLE login ADD FOREIGN KEY(id_rol) REFERENCES roles (id_rol);

ALTER TABLE login ADD FOREIGN KEY(id_jugador) REFERENCES jugadores (id_jugador);

#Tabla sancion
ALTER TABLE sancion ADD FOREIGN KEY(id_multa_sancion) REFERENCES multa_sancion (id_multa_sancion);

#Tabla ciudades
ALTER TABLE ciudades ADD FOREIGN KEY(id_departamento) REFERENCES departamentos (id_departamento);

#Tabla departamentos

ALTER TABLE departamentos ADD FOREIGN KEY(id_pais) REFERENCES pais (id_pais);


