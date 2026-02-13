INSERT INTO MEDICOS (id_medico, nombre, especialidad, tipo_medico, activo) VALUES
(1,'carlos perez','pediatra','titular', TRUE),
(2,'ana gomez','general','interino', TRUE),
(3,'luis rodriguez','cardiologia','sustituto', TRUE),
(4,'maria lopez',' ginecologia','titular', TRUE);

INSERT INTO PACIENTE(id_paciente, nombre, fecha_nacimiento, telefono) VALUES
(1,'luis martinez','2001-05-10','3168888888'),
(2,'juan morales','1995-09-08','3101234567'),
(3,'camilo niño','1985-03-05','3101234567'),
(4,'henry duran ','2006-11-02','3101234567');

INSERT INTO EMPLEADOS(id_empleado, nombre, cargo, activo) VALUES
(1,'pedro sanchez','AUXILIAR', TRUE),
(2,'maria gomez','ATS', TRUE),
(3,'santiago centeno','CELADOR', TRUE),
(4,'juan pablo martinez','ADMINISTRATIVO', TRUE);

INSERT INTO HORARIO_MEDICO(id_horario, id_medico, dia_semana, hora_inicio, hora_fin) VALUES
(1, 1, 'lunes','08:00:00','12:00:00'),
(2, 1, 'miercoles','08:00:00','12:00:00'),
(3, 2, 'martes','09:00:00','13:00:00'),
(4, 3, 'jueves','14:00:00','18:00:00'),
(5, 4, 'viernes','07:00:00','11:00:00');

INSERT INTO VACACIONES(id_vacacion, tipo_persona, id_persona, fecha_inicio, fecha_fin, estado) VALUES
(1,'medico',1,'2025-09-22','2025-10-28','planificada'),
(2,'medico',2,'2025-08-22','2025-03-15','disfrutada'),
(3,'empleado',2,'2025-07-24','2025-08-12','planificada'),
(4,'empleado',4,'2025-02-23','2025-03-16','disfrutada');


INSERT INTO SUSTITUCIONES ( id_sustitucion,id_medico_titular,id_medico_sustituto,fecha_inicio,fecha_fin) VALUES
(1, 1, 3, '2026-03-01','2026-03-10'),
(2, 4, 2, '2026-02-01','2026-02-15'); 

INSERT INTO ASIGANCION_PACIENTES (id_asignacion ,id_paciente ,id_medico ,fecha_asignacion)VALUES
(1, 1, 1, '2026-01-05'),
(2, 2, 2, '2026-01-10'),
(3, 3, 3, '2026-01-12'),
(4, 4, 4, '2026-01-20');