import { supabase } from './supabase'

/**
 * Calcula el impacto de una ausencia en los cursos y horas lectivas.
 */
export async function calcularImpactoAusencia(
    profesorId: string,
    fecha: string,
    tipo: 'DIA_COMPLETO' | 'BLOQUES_ESPECIFICOS',
    bloquesIds: number[],
    tieneReemplazo: boolean
) {
    // 1. Obtener día de la semana (1-5)
    const fechaObj = new Date(fecha)
    const diaSemana = fechaObj.getDay() // 0=Domingo, 1=Lunes...

    if (diaSemana === 0 || diaSemana === 6) {
        return { error: 'La fecha seleccionada es un fin de semana.' }
    }

    // 2. Consultar el horario del profesor para ese día
    let query = supabase
        .from('horarios')
        .select('*, bloques(numero, hora_inicio), cursos(nombre_curso)')
        .eq('profesor_id', profesorId)
        .eq('dia_semana', diaSemana)

    if (tipo === 'BLOQUES_ESPECIFICOS' && bloquesIds.length > 0) {
        query = query.in('bloque_id', bloquesIds)
    }

    const { data: horarioAfectado, error } = await query

    if (error) return { error: error.message }
    if (!horarioAfectado || horarioAfectado.length === 0) {
        return {
            mensaje: 'El profesor no tiene clases programadas en los bloques seleccionados.',
            cursosAfectados: [],
            horasPerdidas: 0
        }
    }

    // 3. Procesar resultados
    const cursosAfectados = horarioAfectado.map(h => ({
        curso: h.cursos.nombre_curso,
        bloque: h.bloque_id,
        perdioHora: !tieneReemplazo
    }))

    const horasPerdidas = tieneReemplazo ? 0 : horarioAfectado.length
    const horasPermiso = horarioAfectado.length

    return {
        cursosAfectados,
        horasPerdidas,
        horasPermiso,
        totalBloques: horarioAfectado.length
    }
}
