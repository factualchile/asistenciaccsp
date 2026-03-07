'use client'

import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'

export default function ConfigPage() {
    const [profesores, setProfesores] = useState<any[]>([])
    const [nuevaClave, setNuevaClave] = useState('')
    const [loading, setLoading] = useState(false)
    const [message, setMessage] = useState({ type: '', text: '' })

    useEffect(() => {
        fetchProfesores()
    }, [])

    async function fetchProfesores() {
        const { data } = await supabase.from('profesores').select('*').order('nombre')
        if (data) setProfesores(data)
    }

    const handleUpdateNombre = async (id: string, nuevoNombre: string) => {
        const { error } = await supabase
            .from('profesores')
            .update({ nombre: nuevoNombre })
            .eq('id', id)

        if (!error) {
            setMessage({ type: 'success', text: 'Nombre actualizado correctamente' })
            fetchProfesores()
        }
    }

    const handleUpdateClave = async () => {
        if (!nuevaClave) return
        setLoading(true)
        const { error } = await supabase
            .from('configuracion')
            .update({ clave_acceso: nuevaClave })
            .eq('id', 1)

        if (!error) {
            setMessage({ type: 'success', text: 'Clave de acceso actualizada' })
            setNuevaClave('')
        } else {
            setMessage({ type: 'error', text: 'Error al actualizar la clave' })
        }
        setLoading(false)
    }

    return (
        <div className="container">
            <header style={{ marginBottom: '2rem' }}>
                <h1>Configuración del Sistema</h1>
                <p style={{ color: 'var(--text-muted)' }}>Gestiona el acceso y la información de los docentes.</p>
            </header>

            {message.text && (
                <div className={`alert alert-${message.type}`} style={{ marginBottom: '1.5rem', padding: '1rem', borderRadius: '8px', background: message.type === 'success' ? '#dcfce7' : '#fee2e2', color: message.type === 'success' ? '#166534' : '#991b1b' }}>
                    {message.text}
                </div>
            )}

            <div className="grid grid-cols-2">
                <section className="card">
                    <h2 style={{ marginBottom: '1.5rem', fontSize: '1.25rem' }}>Seguridad</h2>
                    <div className="form-group">
                        <label>Nueva Clave de Acceso</label>
                        <div style={{ display: 'flex', gap: '0.5rem', marginTop: '0.5rem' }}>
                            <input
                                type="password"
                                className="input"
                                placeholder="Ingresa la nueva clave"
                                value={nuevaClave}
                                onChange={(e) => setNuevaClave(e.target.value)}
                            />
                            <button
                                className="btn btn-primary"
                                onClick={handleUpdateClave}
                                disabled={loading}
                            >
                                Actualizar
                            </button>
                        </div>
                    </div>
                </section>

                <section className="card">
                    <h2 style={{ marginBottom: '1.5rem', fontSize: '1.25rem' }}>Gestión de Profesores</h2>
                    <div style={{ maxHeight: '400px', overflowY: 'auto', display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
                        {profesores.map(p => (
                            <div key={p.id} style={{ display: 'flex', gap: '0.5rem', alignItems: 'center', padding: '0.5rem', borderBottom: '1px solid var(--border)' }}>
                                <input
                                    type="text"
                                    className="input"
                                    style={{ padding: '0.4rem', fontSize: '0.875rem' }}
                                    defaultValue={p.nombre}
                                    onBlur={(e) => {
                                        if (e.target.value !== p.nombre) {
                                            handleUpdateNombre(p.id, e.target.value)
                                        }
                                    }}
                                />
                                <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)', whiteSpace: 'nowrap' }}>
                                    {p.asignatura}
                                </span>
                            </div>
                        ))}
                    </div>
                </section>
            </div>
        </div>
    )
}
