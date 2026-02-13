SELECT
    m.nombre AS medico,
    COUNT(ap.id_paciente) AS total_pacientes
FROM MEDICOS m 
LEFT JOIN ASIGANCION_PACIENTES ap ON m.id_medico = ap.id_medico
GROUP BY m.id_medico;


SELECT 
    e.nombre AS empleado,
    v.estado,
    SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS total_dias
FROM EMPLEADOS e 
JOIN VACACIONES v ON v.id_persona = e.id_empleado
WHERE v.tipo_persona = 'empleado'
GROUP BY e.id_empleado, v.estado;


SELECT 
    m.nombre AS medico,
    SUM (TIMESTAMDIFF(HOUR, h.hora_inicio, h.hora_fin)) AS horas_semanales
FROM MEDICOS m 
JOIN horarios_medicos h ON m.id_medico = h.id_medico
GROUP BY m.id_medico
GROUP BY horas_semanales DESC;



SELECT 
    m.nombre as medico_sustituto,
    COUNT (s.id_sustitucion) AS total_sustituciones
FROM SUSTITUCIONES s
join MEDICOS m ON s.id_medico_sustituto = m.id_medico
GROUP BY s.id_medico_sustituto;


SELECT
    COUNT (DISTINCT id_medico_sustituto) AS medicos_en sustitucion
FROM SUSTITUCION
WHERE CURDATE() BETWEEN fecha_inicio AND fecha_fin;