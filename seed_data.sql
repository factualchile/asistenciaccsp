-- Inserción masiva de datos

-- 1. Inserción de Profesores (Usando un bloque anónimo para manejar IDs)
do $$
declare
  prof_id uuid;
  cur_id uuid;
begin
  INSERT INTO profesores (nombre, asignatura) VALUES ('Ana Godoy', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Christian Barrera V', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Gloria Villen', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Carlos Mora', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Martinez Yeve', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Cecilia Orellana', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Claudia Toledo B', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Cecilia Velásquez M', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Dominique Escalup', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Daniel Gutierrez', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Edgardo Mendez', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Francisco Cofre', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Fredy Marchant', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Fabiola Martinez', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Fabiola Mardones', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Melo Valen', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Francisco Olave', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Guillermo Gonzalez', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Georg Waghorn', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Lagos Lagos', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Ingrit Bejar', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Ingrid Bofi', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Javier Dosque', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Herrera Chandia', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Karen Palma', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Leonardo Cifuentes', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Lorena Martinez', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Leonardo Salazar', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Jose Cabezas', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Paz Medina', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Nicolas Contreras', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Ortiz Matama', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Pamela Palma', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Paulo Villablanca', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Roxana Viel', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Sandra Matamala', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO profesores (nombre, asignatura) VALUES ('Wilfredo Urrutia N', 'Docente') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('EDFI') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('*5-C / OYCC') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('*5-C / EYM') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('*4EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('EC S2') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-B / 7-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EMD-') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EMD-') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('3EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('3EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('3EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-B / 4EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('EINS') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('HIST') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-A EYM') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('LYC') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-B / 5-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B / 5-A / 5-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-E / 1EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-B / 1EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('+3/MUSIC') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('+3') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B / 6-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('EMAT') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-C / 6-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-C / 5-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C / 2EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C / 8-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('GEO') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-A / 1EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C / 8-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-C / 8-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-E / 8-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C / 1EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-C / 2EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-A / 4EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-B / 1EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('ING') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-C / 7-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-C / 1EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-A / 1EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-D / 2EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B / 5-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-C / 2EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-E / 1EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-B / 2EM-E') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-B / 1EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-A / 2EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('3EM-B / 2EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-A / 8-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-B / 2EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-E / 2EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-A / 4EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-B / 2EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-B / 2EM-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-A / 3EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('EYM') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-E / 2EM-D / 8-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-C / 1EM-D / 1EM-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-B / 3EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-A / 8-D / 4EM-D') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('TEC') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-0/CN') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('GEO/6-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B/TEC') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-C/TEC/GEO') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('6-C/5-A/GEO') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-A / 5-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-D / 6-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('3EM-B / 6-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('5-B / 6-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-D / 7-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-B / 8-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-B / 7-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-D / 7-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('7-B / 8-B') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('8-D / 8-C') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('2EM-C / 4EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('CN 302') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('4EM-A / 1EM-A') ON CONFLICT DO NOTHING;
  INSERT INTO cursos (nombre_curso) VALUES ('1EM-E / 2EM-B') ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EDFI';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '*5-C / OYCC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '*5-C / EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '*4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ana Godoy';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EC S2';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Christian Barrera V';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Gloria Villen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Carlos Mora';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Martinez Yeve';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Orellana';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Claudia Toledo B';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EINS';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Cecilia Velásquez M';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EINS';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'LYC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'LYC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-A / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-A / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-A / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Dominique Escalup';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'LYC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B / 1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B / 1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Daniel Gutierrez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Edgardo Mendez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3/MUSIC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '+3';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Cofre';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fredy Marchant';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C / 6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C / 6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C / 5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C / 5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Fabiola Mardones';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EMAT';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Melo Valen';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'ING';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'ING';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Francisco Olave';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Guillermo Gonzalez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Georg Waghorn';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'HIST';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lagos Lagos';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrit Bejar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A / 2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A / 2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ingrid Bofi';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Javier Dosque';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Herrera Chandia';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B / 2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Karen Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B / 2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Cifuentes';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EMD-';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Lorena Martinez';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C / 2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Leonardo Salazar';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 2EM-D / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 2EM-D / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A / 4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 1EM-D / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C / 1EM-D / 1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B / 3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 8-D / 4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 8-D / 4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'TEC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-0/CN';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-0/CN';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-0/CN';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'GEO/6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B/TEC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B/TEC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B/TEC';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'EYM';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C/TEC/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C/TEC/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C/TEC/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C/5-A/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C/5-A/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C/5-A/GEO';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Jose Cabezas';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paz Medina';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A / 5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D / 6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D / 6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B / 6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B / 6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B / 6-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Nicolas Contreras';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Ortiz Matama';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 7-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-B / 8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D / 8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Pamela Palma';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '7-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C / 4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Paulo Villablanca';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'CN 302';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'CN 302';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'CN 302';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = 'CN 302';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Roxana Viel';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '5-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '4EM-A / 1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Sandra Matamala';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '3EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-C';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 1) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 2) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 3) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '8-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '6-A';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 4) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 1, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 2, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 3, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-D';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 4, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 5, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 6, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 7, 5) ON CONFLICT DO NOTHING;
  SELECT id INTO prof_id FROM profesores WHERE nombre = 'Wilfredo Urrutia N';
  SELECT id INTO cur_id FROM cursos WHERE nombre_curso = '1EM-E / 2EM-B';
  INSERT INTO horarios (profesor_id, curso_id, bloque_id, dia_semana) 
  VALUES (prof_id, cur_id, 8, 5) ON CONFLICT DO NOTHING;
end $$;