'use client'

import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'

export default function Dashboard() {
    const [stats, setStats] = useState({
        ausenciasHoy: 0,
        horasPerdidasHoy: 0,
        profesoresAusentesHoy: 0,
        totalHorasMes: 0
    })

    // Simulación de carga de datos iniciales
    useEffect(() => {
        // Aquí iría la lógica de consulta a Supabase
        setStats({
            ausenciasHoy: 3,
            horasPerdidasHoy: 12,
            profesoresAusentesHoy: 2,
            totalHorasMes: 45
        })
    }, [])

    return (
        <div className="container">
            <header style={{ marginBottom: '2rem' }}>
                <h1 style={{ fontSize: '2rem', fontWeight: 700 }}>Resumen General</h1>
                <p style={{ color: 'var(--text-muted)' }}>Panel de control de Inspectoría - Asistencia CCSP</p>
            </header>

            <div className="grid grid-cols-4">
                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Ausencias Hoy</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.ausenciasHoy}</h2>
                    <div style={{ color: 'var(--success)', fontWeight: 600, fontSize: '0.875rem' }}>↑ 2 vs ayer</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Horas Perdidas Hoy</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0', color: 'var(--error)' }}>{stats.horasPerdidasHoy}</h2>
                    <div style={{ color: 'var(--error)', fontWeight: 600, fontSize: '0.875rem' }}>Cursos afectados</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Profesores Ausentes</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.profesoresAusentesHoy}</h2>
                    <div style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Activos hoy</div>
                </div>

                <div className="card">
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.875rem' }}>Total Horas Mes</span>
                    <h2 style={{ fontSize: '2.5rem', margin: '0.5rem 0' }}>{stats.totalHorasMes}</h2>
                    <div style={{ color: 'var(--primary)', fontWeight: 600, fontSize: '0.875rem' }}>Acumulado período</div>
                </div>
            </div>

            <section style={{ marginTop: '3rem' }}>
                <div className="grid grid-cols-2">
                    <div className="card">
                        <h3 style={{ marginBottom: '1rem' }}>Cursos más afectados</h3>
                        <ul style={{ listStyle: 'none', display: 'flex', flexDirection: 'column', gap: '1rem', padding: 0 }}>
                            <li style={{ display: 'flex', justifyContent: 'space-between', paddingBottom: '0.5rem', borderBottom: '1px solid var(--border)' }}>
                                <span>2° Medio B</span>
                                <span className="badge-error">8 horas</span>
                            </li>
                            <li style={{ display: 'flex', justifyContent: 'space-between', paddingBottom: '0.5rem', borderBottom: '1px solid var(--border)' }}>
                                <span>7° Básico A</span>
                                <span className="badge-error">6 horas</span>
                            </li>
                            <li style={{ display: 'flex', justifyContent: 'space-between', paddingBottom: '0.5rem', borderBottom: '1px solid var(--border)' }}>
                                <span>4° Medio C</span>
                                <span className="badge-error">4 horas</span>
                            </li>
                        </ul>
                    </div>

                    <div className="card">
                        <h3 style={{ marginBottom: '1rem' }}>Próximas ausencias registradas</h3>
                        <p style={{ color: 'var(--text-muted)' }}>No hay ausencias programadas para mañana.</p>
                    </div>
                </div>
            </section >
        </div >
    )
}
