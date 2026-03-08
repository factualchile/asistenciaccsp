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

        const { data, error } = await supabase.rpc('calcular_horas_perdidas', {
            p_fecha_inicio: formatISO(startDate, { representation: 'date' }),
            p_fecha_fin: formatISO(now, { representation: 'date' }),
            p_profesor_id: filter.profesor_id || null,
            p_curso_id: filter.curso_id || null
        })

        if (data && data.length > 0) {
            const result = data[0]
            setStats({
                ausenciasHoy: Number(result.total_ausencias),
                horasPerdidasHoy: 0,
                profesoresAusentesHoy: Number(result.profesores_unicos),
                totalHorasPeriodo: Number(result.total_horas_perdidas)
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

                <div className={`card ${stats.totalHorasPeriodo > 10 ? 'card-critical' : ''}`}>
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Horas Perdidas Período</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0', color: stats.totalHorasPeriodo > 10 ? 'var(--error)' : 'inherit' }}>
                        {stats.totalHorasPeriodo}
                    </h2>
                    <div style={{ color: stats.totalHorasPeriodo > 10 ? 'var(--error)' : 'var(--text-muted)', fontWeight: 600, fontSize: '0.875rem' }}>
                        {stats.totalHorasPeriodo > 10 ? '¡ALERTA DE IMPACTO!' : 'Sin reemplazo'}
                    </div>
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
