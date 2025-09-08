import psycopg2
import pytest

@pytest.fixture(scope="module")
def db_connection():
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    yield conn
    conn.close()

def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumno;")
        count = cur.fetchone()[0]
        assert count == 10

def test_maestros_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM profesor;")
        count = cur.fetchone()[0]
        assert count == 10
        
def test_periodo_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM periodo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_curso_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM curso;")
        count = cur.fetchone()[0]
        assert count == 10

def test_oferta_curso_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM oferta_curso;")
        count = cur.fetchone()[0]
        assert count == 10
       

def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_horario_grupo_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM horario_grupo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_asignacion_profesor_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asignacion_profesor;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10  

def test_sesion_clase_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM sesion_clase;")
        count = cur.fetchone()[0]
        assert count == 10

def test_escaneo_asistencia_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM escaneo_asistencia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_structure(db_connection):
    sql = ''' 
            SELECT tablename FROM pg_tables 
            WHERE tablename IN (
                'alumno',
                'profesor',
                'periodo',
                'curso',
                'oferta_curso',
                'grupo',
                'horario_grupo',
                'asignacion_profesor',
                'inscripcion',
                'sesion_clase',
                'escaneo_asistencia'
            );
          '''
    expected_tables = {
        'alumno',
        'profesor',
        'periodo',
        'curso',
        'oferta_curso',
        'grupo',
        'horario_grupo',
        'asignacion_profesor',
        'inscripcion',
        'sesion_clase',
        'escaneo_asistencia'
    }
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables},
              but found {result_tables}'''
        assert result_tables == expected_tables, msg
