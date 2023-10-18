
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


