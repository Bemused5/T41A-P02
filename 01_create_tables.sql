CREATE TABLE alumno (
  id_alumno        BIGINT NOT NULL,
  matricula        VARCHAR(40)  NOT NULL,
  nombre_completo  VARCHAR(160) NOT NULL,
  fecha_nacimiento DATE,
  activo           BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE asignacion_profesor (
  id_asignacion BIGINT NOT NULL,
  id_grupo      BIGINT NOT NULL,
  id_profesor   BIGINT NOT NULL,
  rol           VARCHAR(30) NOT NULL DEFAULT 'titular',
  fecha_inicio  DATE NOT NULL,
  fecha_fin     DATE
);

CREATE TABLE curso (
  id_curso      BIGINT NOT NULL,
  clave_curso   VARCHAR(40)  NOT NULL,
  nombre_curso  VARCHAR(120) NOT NULL,
  creditos      INTEGER NOT NULL
);

CREATE TABLE escaneo_asistencia (
  id_escaneo    BIGINT NOT NULL,
  id_sesion     BIGINT NOT NULL,
  id_alumno     BIGINT NOT NULL,
  escaneado_en  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  origen        VARCHAR(40)  DEFAULT 'codigo_barras',
  estatus       VARCHAR(20)  DEFAULT 'presente'
);

CREATE TABLE grupo (
  id_grupo       BIGINT NOT NULL,
  id_oferta      BIGINT NOT NULL,
  clave_seccion  VARCHAR(40) NOT NULL,
  capacidad      INTEGER,
  aula           VARCHAR(80)
);

CREATE TABLE horario_grupo (
  id_horario   BIGINT NOT NULL,
  id_grupo     BIGINT NOT NULL,
  dia_semana   SMALLINT NOT NULL CHECK (dia_semana BETWEEN 1 AND 7),
  hora_inicio  TIME NOT NULL,
  hora_fin     TIME NOT NULL,
  aula         VARCHAR(80)
);

CREATE TABLE inscripcion (
  id_inscripcion     BIGINT NOT NULL,
  id_grupo           BIGINT NOT NULL,
  id_alumno          BIGINT NOT NULL,
  fecha_inscripcion  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  estado             VARCHAR(20) NOT NULL DEFAULT 'inscrito'
);

CREATE TABLE oferta_curso (
  id_oferta   BIGINT NOT NULL,
  id_periodo  BIGINT NOT NULL,
  id_curso    BIGINT NOT NULL
);

CREATE TABLE periodo (
  id_periodo     BIGINT NOT NULL,
  codigo_periodo VARCHAR(80) NOT NULL,
  anio           INTEGER NOT NULL,
  nombre_corto   VARCHAR(40) NOT NULL,
  fecha_inicio   DATE NOT NULL,
  fecha_fin      DATE NOT NULL,
  activo         BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE profesor (
  id_profesor      BIGINT NOT NULL,
  clave_empleado   VARCHAR(40),
  nombre_completo  VARCHAR(160) NOT NULL,
  departamento     VARCHAR(120)
);

CREATE TABLE sesion_clase (
  id_sesion       BIGINT NOT NULL,
  id_grupo        BIGINT NOT NULL,
  inicio          TIMESTAMP NOT NULL,
  fin             TIMESTAMP,
  generado_desde  BIGINT
);
