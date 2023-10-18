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


