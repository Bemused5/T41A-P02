-- Faltas por grupo (periodo, sección, curso)
SELECT
  p.codigo_periodo    AS periodo,
  g.clave_seccion     AS seccion,
  c.nombre_curso      AS nombre_grupo,
  COUNT(*) FILTER (WHERE ea.estatus = 'ausente') AS total_faltas
FROM escaneo_asistencia ea
JOIN sesion_clase   s  ON s.id_sesion  = ea.id_sesion
JOIN grupo          g  ON g.id_grupo   = s.id_grupo
JOIN oferta_curso   oc ON oc.id_oferta = g.id_oferta
JOIN curso          c  ON c.id_curso   = oc.id_curso
JOIN periodo        p  ON p.id_periodo = oc.id_periodo
GROUP BY p.codigo_periodo, g.clave_seccion, c.nombre_curso
ORDER BY g.clave_seccion;
