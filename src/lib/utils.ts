import { format, parseISO } from 'date-fns'
import { es } from 'date-fns/locale'

export const formatFecha = (fecha: string | Date) => {
    if (!fecha) return ''
    const dateObj = typeof fecha === 'string' ? parseISO(fecha) : fecha
    return format(dateObj, 'dd/MM/yyyy', { locale: es })
}

export const getDiaSemana = (fecha: string | Date) => {
    const dateObj = typeof fecha === 'string' ? parseISO(fecha) : fecha
    return format(dateObj, 'EEEE', { locale: es })
}
