CREATE TABLE MEDICOS (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    tipo_medico ENUM ('titular','interino','sustituto') NOT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE EMPLEADOS (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cargo ENUM ('ATS','AUXILIAR','CELADOR','ADMINISTRATIVO')NOT NULL,
    activo BOOLEAN NOT NULL  DEFAULT TRUE
);


CREATE TABLE PACIENTE(
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR (20)
);

CREATE TABLE HORARIO_MEDICO(
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT NOT NULL,
    dia_semana ENUM('lunes','martes','miercoles','jueves','viernes') NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES MEDICOS(id_medico)
);


CREATE TABLE VACACIONES(
    id_vacacion INT AUTO_INCREMENT PRIMARY KEY,
    tipo_persona ENUM ('medico','empleado') NOT NULL,
    id_persona INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE not NULL,
    estado ENUM ('planificada','disfrutada')NOT NULL
);



CREATE TABLE SUSTITUCIONES(
    id_sustitucion INT AUTO_INCREMENT PRIMARY KEY,
    id_medico_titular INT NOT NULL,
    id_medico_sustituto INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    FOREIGN KEY (id_medico_titular) REFERENCES MEDICOS(id_medico),
    FOREIGN KEY (id_medico_sustituto) REFERENCES MEDICOS(id_medico)
);


CREATE TABLE ASIGANCION_PACIENTES(
    id_asignacion INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    fecha_asignacion DATE NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES MEDICOS(id_medico)
); 


