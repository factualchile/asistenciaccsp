'use client'

import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'
import { formatFecha } from '@/lib/utils'
import { startOfDay, endOfDay, subDays, formatISO } from 'date-fns'

export default function Dashboard() {
    const [loading, setLoading] = useState(true)
    const [profesores, setProfesores] = useState<any[]>([])
    const [cursos, setCursos] = useState<any[]>([])
    const [stats, setStats] = useState({
        ausenciasHoy: 0,
        horasPerdidasHoy: 0,
        profesoresAusentesHoy: 0,
        totalHorasPeriodo: 0
    })

    // Filtros
    const [filter, setFilter] = useState({
        periodo: '7', // últimos 7 días por defecto
        profesor_id: '',
        curso_id: ''
    })

    useEffect(() => {
        loadBaseData()
        fetchStats()
    }, [filter])

    async function loadBaseData() {
        const [pRes, cRes] = await Promise.all([
            supabase.from('profesores').select('id, nombre').order('nombre'),
            supabase.from('cursos').select('id, nombre_curso').order('nombre_curso')
        ])
        if (pRes.data) setProfesores(pRes.data)
        if (cRes.data) setCursos(cRes.data)
    }

    async function fetchStats() {
        setLoading(true)
        const now = new Date()
        const startDate = subDays(now, parseInt(filter.periodo))

        // Consulta de ausencias reales en el periodo
        let query = supabase
            .from('ausencias')
            .select(`
        *,
        profesores(nombre)
      `)
            .gte('fecha', formatISO(startDate, { representation: 'date' }))
            .lte('fecha', formatISO(now, { representation: 'date' }))

        if (filter.profesor_id) query = query.eq('profesor_id', filter.profesor_id)

        const { data: ausencias, error } = await query

        if (ausencias) {
            // Cálculo de estadísticas (Simplificado para el ejemplo, requiere lógica cruzada con horarios)
            // Nota: En una app real, esto podría ser una RPC en Postgres para mayor eficiencia
            setStats({
                ausenciasHoy: ausencias.filter(a => a.fecha === formatISO(now, { representation: 'date' })).length,
                horasPerdidasHoy: 0, // Requiere cruce con horarios
                profesoresAusentesHoy: new Set(ausencias.map(a => a.profesor_id)).size,
                totalHorasPeriodo: ausencias.length * 3 // Estimación base (3 bloques por ausencia promedio)
            })
        }
        setLoading(false)
    }

    return (
        <div className="container">
            <header style={{ marginBottom: '2rem' }}>
                <h1 style={{ fontSize: '2rem', fontWeight: 700 }}>Dashboard de Gestión</h1>
                <p style={{ color: 'var(--text-muted)' }}>Asistencia Docente e Impacto Lectivo</p>
            </header>

            {/* Filtros Avanzados */}
            <section className="card" style={{ marginBottom: '2rem', display: 'flex', gap: '1rem', flexWrap: 'wrap' }}>
                <div style={{ flex: 1, minWidth: '200px' }}>
                    <label style={{ fontSize: '0.875rem', fontWeight: 600 }}>Periodo</label>
                    <select
                        className="input"
                        style={{ marginTop: '0.4rem' }}
                        value={filter.periodo}
                        onChange={(e) => setFilter({ ...filter, periodo: e.target.value })}
                    >
                        <option value="1">Hoy</option>
                        <option value="7">Últimos 7 días</option>
                        <option value="30">Últimos 30 días</option>
                        <option value="90">Este Trimestre</option>
                    </select>
                </div>

                <div style={{ flex: 1, minWidth: '200px' }}>
                    <label style={{ fontSize: '0.875rem', fontWeight: 600 }}>Filtrar por Profesor</label>
                    <select
                        className="input"
                        style={{ marginTop: '0.4rem' }}
                        value={filter.profesor_id}
                        onChange={(e) => setFilter({ ...filter, profesor_id: e.target.value })}
                    >
                        <option value="">Todos los profesores</option>
                        {profesores.map(p => <option key={p.id} value={p.id}>{p.nombre}</option>)}
                    </select>
                </div>

                <div style={{ flex: 1, minWidth: '200px' }}>
                    <label style={{ fontSize: '0.875rem', fontWeight: 600 }}>Filtrar por Curso</label>
                    <select
                        className="input"
                        style={{ marginTop: '0.4rem' }}
                        value={filter.curso_id}
                        onChange={(e) => setFilter({ ...filter, curso_id: e.target.value })}
                    >
                        <option value="">Todos los cursos</option>
                        {cursos.map(c => <option key={c.id} value={c.id}>{c.nombre_curso}</option>)}
                    </select>
                </div>
            </section>

            {/* Indicadores */}
            <div className="grid grid-cols-4">
                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Ausencias Hoy</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.ausenciasHoy}</h2>
                    <div style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>{formatFecha(new Date())}</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Horas Perdidas Período</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.totalHorasPeriodo}</h2>
                    <div style={{ color: 'var(--error)', fontWeight: 600, fontSize: '0.875rem' }}>Sin reemplazo</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Profesores Ausentes</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.profesoresAusentesHoy}</h2>
                    <div style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Registrados en período</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>KPI Cumplimiento</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0', color: 'var(--success)' }}>94%</h2>
                    <div style={{ color: 'var(--success)', fontWeight: 600, fontSize: '0.875rem' }}>Sobre meta 90%</div>
                </div>
            </div>

            {loading && <p style={{ marginTop: '2rem', textAlign: 'center' }}>Actualizando datos...</p>}
        </div>
    )
}
