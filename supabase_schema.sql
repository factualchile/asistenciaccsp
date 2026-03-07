-- Esquema SQL para Asistencia CCSP

-- 1. Tabla de Profesores
CREATE TABLE IF NOT EXISTS profesores (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre TEXT NOT NULL,
    asignatura TEXT NOT NULL,
    contrato_horas SMALLINT DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Tabla de Cursos
CREATE TABLE IF NOT EXISTS cursos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre_curso TEXT NOT NULL UNIQUE, -- Ej: 7°A, 8°B
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Tabla de Bloques
CREATE TABLE IF NOT EXISTS bloques (
    id SMALLINT PRIMARY KEY, -- 1, 2, 3...
    numero SMALLINT NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);

-- 4. Tabla de Horarios Docentes
CREATE TABLE IF NOT EXISTS horarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    profesor_id UUID REFERENCES profesores(id) ON DELETE CASCADE,
    curso_id UUID REFERENCES cursos(id) ON DELETE CASCADE,
    bloque_id SMALLINT REFERENCES bloques(id) ON DELETE CASCADE,
    dia_semana SMALLINT NOT NULL CHECK (dia_semana >= 1 AND dia_semana <= 5), -- 1=Lunes, 5=Viernes
    UNIQUE(profesor_id, bloque_id, dia_semana)
);

-- 5. Tabla de Ausencias
DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'tipo_ausencia_enum') THEN
        CREATE TYPE tipo_ausencia_enum AS ENUM ('DIA_COMPLETO', 'BLOQUES_ESPECIFICOS');
    END IF;
END $$;

CREATE TABLE IF NOT EXISTS ausencias (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    fecha DATE NOT NULL,
    profesor_id UUID REFERENCES profesores(id) ON DELETE CASCADE,
    tipo_ausencia tipo_ausencia_enum NOT NULL,
    bloques_afectados SMALLINT[] DEFAULT '{}', -- Array de IDs de bloques
    reemplazo BOOLEAN DEFAULT FALSE,
    profesor_reemplazo TEXT,
    motivo TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Insertar Bloques Base (Ejemplos típicos)
INSERT INTO bloques (id, numero, hora_inicio, hora_fin) VALUES
(1, 1, '08:00', '08:45'),
(2, 2, '08:45', '09:30'),
(3, 3, '09:45', '10:30'),
(4, 4, '10:30', '11:15'),
(5, 5, '11:30', '12:15'),
(6, 6, '12:15', '13:00'),
(7, 7, '13:15', '14:00'),
(8, 8, '14:00', '14:45');
