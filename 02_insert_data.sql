INSERT INTO periodo (id_periodo, codigo_periodo, anio, nombre_corto, fecha_inicio, fecha_fin, activo) VALUES
(100, '20253S', 2025, 'Ago-Dic', DATE '2025-08-01', DATE '2025-12-15', TRUE),
(101, '20251S', 2025, 'Ene-Jun', DATE '2025-01-13', DATE '2025-06-20', FALSE),
(102, '20242S', 2024, 'Ago-Dic', DATE '2024-08-01', DATE '2024-12-15', FALSE),
(103, '20241S', 2024, 'Ene-Jun', DATE '2024-01-15', DATE '2024-06-20', FALSE),
(104, '20233S', 2023, 'Ago-Dic', DATE '2023-08-01', DATE '2023-12-15', FALSE),
(105, '20231S', 2023, 'Ene-Jun', DATE '2023-01-16', DATE '2023-06-20', FALSE),
(106, '20222S', 2022, 'Ago-Dic', DATE '2022-08-01', DATE '2022-12-15', FALSE),
(107, '20221S', 2022, 'Ene-Jun', DATE '2022-01-17', DATE '2022-06-20', FALSE),
(108, '20212S', 2021, 'Ago-Dic', DATE '2021-08-02', DATE '2021-12-10', FALSE),
(109, '20211S', 2021, 'Ene-Jun', DATE '2021-01-18', DATE '2021-06-18', FALSE);

INSERT INTO curso (id_curso, clave_curso, nombre_curso, creditos) VALUES
(201, 'S38A',  'Bases de Datos I',             6),
(202, 'S38E',  'Bases de Datos II',            6),
(203, 'T41A',  'Diseño de BD',                 6),
(204, 'T41E', 'SQL Avanzado',                 6),
(205, 'T48E',  'PostgreSQL',                   6),
(206, 'DM501',  'Minería de Datos',             6),
(207, 'NSQL401','NoSQL',                        6),
(208, 'DBA401', 'Administración de BD',         6),
(209, 'ETL401', 'ETL y Data Warehousing',       6),
(210, 'DV401',  'Visualización de Datos',       6);

-- Mantengo 301..305 en el periodo 20253S (id_periodo=100) para que cuadren con los grupos definidos.
INSERT INTO oferta_curso (id_oferta, id_periodo, id_curso) VALUES
(301, 100, 201),
(302, 100, 202),
(303, 100, 203),
(304, 100, 204),
(305, 100, 205),
(306, 101, 206),
(307, 101, 207),
(308, 102, 208),
(309, 102, 209),
(310, 103, 210);

INSERT INTO profesor (id_profesor, clave_empleado, nombre_completo, departamento) VALUES
(501, 'EMP501', 'Mtro. Juan Pérez',     'Computación'),
(502, 'EMP502', 'Mtra. Carmen Silva',   'Computación'),
(503, 'EMP503', 'Mtro. Diego Luna',     'Computación'),
(504, 'EMP504', 'Mtra. Rosa Márquez',   'Computación'),
(505, 'EMP505', 'Mtro. Andrés Bello',   'Computación'),
(506, 'EMP506', 'Mtra. Julia Ríos',     'Computación'),
(507, 'EMP507', 'Mtro. Sergio Peña',    'Computación'),
(508, 'EMP508', 'Mtra. Alicia Torres',  'Computación'),
(509, 'EMP509', 'Mtro. Iván Cordero',   'Computación'),
(510, 'EMP510', 'Mtra. Teresa León',    'Computación');

INSERT INTO alumno (id_alumno, matricula, nombre_completo, fecha_nacimiento, activo) VALUES
(1001, 'A001', 'Ana Torres',     DATE '2004-03-12', TRUE),
(1002, 'A002', 'Luis Gómez',     DATE '2003-11-25', TRUE),
(1003, 'A003', 'María López',    DATE '2004-07-08', TRUE),
(1004, 'A004', 'Carlos Ruiz',    DATE '2003-05-16', TRUE),
(1005, 'A005', 'Laura Méndez',   DATE '2004-01-29', TRUE),
(1006, 'A006', 'Pedro Sánchez',  DATE '2003-09-03', TRUE),
(1007, 'A007', 'Sofía Díaz',     DATE '2004-06-21', TRUE),
(1008, 'A008', 'Jorge Ramírez',  DATE '2003-12-02', TRUE),
(1009, 'A009', 'Elena Castro',   DATE '2004-02-14', TRUE),
(1010, 'A010', 'Tomás Ortega',   DATE '2003-08-10', TRUE);

INSERT INTO grupo (id_grupo, id_oferta, clave_seccion, capacidad, aula) VALUES
(401, 301, 'T41A', 30, 'A-101'),
(402, 301, 'T41B', 30, 'A-102'),
(403, 302, 'T42A', 30, 'B-201'),
(404, 302, 'T42B', 30, 'B-202'),
(405, 303, 'T43A', 30, 'C-301'),
(406, 303, 'T43B', 30, 'C-302'),
(407, 304, 'T44A', 30, 'D-401'),
(408, 304, 'T44B', 30, 'D-402'),
(409, 305, 'T45A', 30, 'E-501'),
(410, 305, 'T45B', 30, 'E-502');

INSERT INTO asignacion_profesor (id_asignacion, id_grupo, id_profesor, rol, fecha_inicio, fecha_fin) VALUES
(601, 401, 501, 'titular', DATE '2025-08-01', NULL),
(602, 402, 502, 'titular', DATE '2025-08-01', NULL),
(603, 403, 503, 'titular', DATE '2025-08-01', NULL),
(604, 404, 504, 'titular', DATE '2025-08-01', NULL),
(605, 405, 505, 'titular', DATE '2025-08-01', NULL),
(606, 406, 506, 'titular', DATE '2025-08-01', NULL),
(607, 407, 507, 'titular', DATE '2025-08-01', NULL),
(608, 408, 508, 'titular', DATE '2025-08-01', NULL),
(609, 409, 509, 'titular', DATE '2025-08-01', NULL),
(610, 410, 510, 'titular', DATE '2025-08-01', NULL);

INSERT INTO horario_grupo (id_horario, id_grupo, dia_semana, hora_inicio, hora_fin, aula) VALUES
(701, 401, 1, TIME '08:00', TIME '09:50', 'A-101'),
(702, 402, 1, TIME '10:00', TIME '11:50', 'A-102'),
(703, 403, 1, TIME '12:00', TIME '13:50', 'B-201'),
(704, 404, 1, TIME '14:00', TIME '15:50', 'B-202'),
(705, 405, 1, TIME '16:00', TIME '17:50', 'C-301'),
(706, 406, 2, TIME '08:00', TIME '09:50', 'C-302'),
(707, 407, 2, TIME '10:00', TIME '11:50', 'D-401'),
(708, 408, 2, TIME '12:00', TIME '13:50', 'D-402'),
(709, 409, 2, TIME '14:00', TIME '15:50', 'E-501'),
(710, 410, 2, TIME '16:00', TIME '17:50', 'E-502');

INSERT INTO inscripcion (id_inscripcion, id_grupo, id_alumno, fecha_inscripcion, estado) VALUES
(801, 401, 1001, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(802, 401, 1002, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(803, 402, 1003, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(804, 402, 1004, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(805, 403, 1005, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(806, 403, 1006, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(807, 404, 1007, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(808, 404, 1008, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(809, 405, 1009, TIMESTAMP '2025-08-01 00:00:00', 'inscrito'),
(810, 405, 1010, TIMESTAMP '2025-08-01 00:00:00', 'inscrito');


INSERT INTO sesion_clase (id_sesion, id_grupo, inicio, fin, generado_desde) VALUES
(901, 401, TIMESTAMP '2025-09-01 08:00:00', TIMESTAMP '2025-09-01 10:00:00', NULL),
(902, 402, TIMESTAMP '2025-09-01 10:00:00', TIMESTAMP '2025-09-01 12:00:00', NULL),
(903, 403, TIMESTAMP '2025-09-01 12:00:00', TIMESTAMP '2025-09-01 14:00:00', NULL),
(904, 404, TIMESTAMP '2025-09-01 14:00:00', TIMESTAMP '2025-09-01 16:00:00', NULL),
(905, 405, TIMESTAMP '2025-09-01 16:00:00', TIMESTAMP '2025-09-01 18:00:00', NULL),
(906, 406, TIMESTAMP '2025-09-02 08:00:00', TIMESTAMP '2025-09-02 10:00:00', NULL),
(907, 407, TIMESTAMP '2025-09-02 10:00:00', TIMESTAMP '2025-09-02 12:00:00', NULL),
(908, 408, TIMESTAMP '2025-09-02 12:00:00', TIMESTAMP '2025-09-02 14:00:00', NULL),
(909, 409, TIMESTAMP '2025-09-02 14:00:00', TIMESTAMP '2025-09-02 16:00:00', NULL),
(910, 410, TIMESTAMP '2025-09-02 16:00:00', TIMESTAMP '2025-09-02 18:00:00', NULL);

INSERT INTO escaneo_asistencia (id_escaneo, id_sesion, id_alumno, escaneado_en, origen, estatus) VALUES
(1001, 901, 1001, TIMESTAMP '2025-09-01 08:00:00', 'codigo_barras', 'presente'),
(1002, 901, 1002, TIMESTAMP '2025-09-01 08:00:00', 'codigo_barras', 'ausente'),
(1003, 902, 1003, TIMESTAMP '2025-09-01 10:00:00', 'codigo_barras', 'presente'),
(1004, 902, 1004, TIMESTAMP '2025-09-01 10:00:00', 'codigo_barras', 'ausente'),
(1005, 903, 1005, TIMESTAMP '2025-09-01 12:00:00', 'codigo_barras', 'presente'),
(1006, 903, 1006, TIMESTAMP '2025-09-01 12:00:00', 'codigo_barras', 'ausente'),
(1007, 904, 1007, TIMESTAMP '2025-09-01 14:00:00', 'codigo_barras', 'presente'),
(1008, 904, 1008, TIMESTAMP '2025-09-01 14:00:00', 'codigo_barras', 'ausente'),
(1009, 905, 1009, TIMESTAMP '2025-09-01 16:00:00', 'codigo_barras', 'presente'),
(1010, 905, 1010, TIMESTAMP '2025-09-01 16:00:00', 'codigo_barras', 'ausente');
