'use client'

import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'

export default function AusenciasPage() {
    const [loading, setLoading] = useState(false)
    const [profesores, setProfesores] = useState<any[]>([])
    const [formData, setFormData] = useState({
        fecha: new Date().toISOString().split('T')[0],
        profesor_id: '',
        tipo_ausencia: 'BLOQUES_ESPECIFICOS',
        bloques_afectados: [] as number[],
        reemplazo: false,
        profesor_reemplazo: '',
        motivo: ''
    })

    const [bloques, setBloques] = useState<any[]>([])

    useEffect(() => {
        async function loadData() {
            try {
                const [pRes, bRes] = await Promise.all([
                    supabase.from('profesores').select('id, nombre').order('nombre'),
                    supabase.from('bloques').select('*').order('id')
                ])

                if (pRes.error) throw pRes.error
                if (bRes.error) throw bRes.error

                if (pRes.data) {
                    console.log('Profesores cargados:', pRes.data.length)
                    setProfesores(pRes.data)
                }

                if (bRes.data) {
                    console.log('Bloques cargados:', bRes.data.length)
                    setBloques(bRes.data.map(b => ({
                        id: b.id,
                        label: `Bloque ${b.numero}: ${b.hora_inicio.slice(0, 5)} - ${b.hora_fin.slice(0, 5)}`
                    })))
                }
            } catch (err) {
                console.error('Error al cargar datos básicos:', err)
            }
        }
        loadData()
    }, [])

    const handleBloqueToggle = (id: number) => {
        setFormData(prev => ({
            ...prev,
            bloques_afectados: prev.bloques_afectados.includes(id)
                ? prev.bloques_afectados.filter(b => b !== id)
                : [...prev.bloques_afectados, id]
        }))
    }

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!formData.profesor_id) {
            alert('Por favor selecciona un profesor')
            return
        }

        setLoading(true)

        // Verificación de duplicidad
        const { data: existing, error: checkError } = await supabase
            .from('ausencias')
            .select('id')
            .eq('fecha', formData.fecha)
            .eq('profesor_id', formData.profesor_id)
            .maybeSingle()

        if (existing) {
            alert('¡Atención! Ya existe un registro de ausencia para este profesor en la fecha seleccionada. Por favor verifica los reportes.')
            setLoading(false)
            return
        }

        const { data, error } = await supabase
            .from('ausencias')
            .insert([{
                fecha: formData.fecha,
                profesor_id: formData.profesor_id,
                tipo_ausencia: formData.tipo_ausencia,
                bloques_afectados: formData.tipo_ausencia === 'BLOQUES_ESPECIFICOS' ? formData.bloques_afectados : null,
                reemplazo: formData.reemplazo,
                profesor_reemplazo: formData.reemplazo ? formData.profesor_reemplazo : null,
                motivo: formData.motivo
            }])

        if (error) {
            console.error('Error al guardar:', error)
            alert('Hubo un error al guardar el registro.')
        } else {
            alert('Registro guardado correctamente en la base de datos.')
            // Resetear formulario
            setFormData({
                fecha: new Date().toISOString().split('T')[0],
                profesor_id: '',
                tipo_ausencia: 'BLOQUES_ESPECIFICOS',
                bloques_afectados: [],
                reemplazo: false,
                profesor_reemplazo: '',
                motivo: ''
            })
        }
        setLoading(false)
    }

    return (
        <div className="container" style={{ maxWidth: '800px' }}>
            <header style={{ marginBottom: '2rem' }}>
                <h1>Registrar Ausencia</h1>
                <p style={{ color: 'var(--text-muted)' }}>Completa los datos para registrar la inasistencia docente.</p>
            </header>

            <form onSubmit={handleSubmit} className="card grid" style={{ gap: '1.5rem' }}>
                <div className="form-group">
                    <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Fecha</label>
                    <input
                        type="date"
                        className="input"
                        value={formData.fecha}
                        onChange={e => setFormData({ ...formData, fecha: e.target.value })}
                        required
                    />
                </div>

                <div className="form-group">
                    <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Profesor</label>
                    <select
                        className="input"
                        value={formData.profesor_id}
                        onChange={e => setFormData({ ...formData, profesor_id: e.target.value })}
                        required
                    >
                        <option value="">{profesores.length === 0 ? 'Cargando profesores...' : 'Seleccione un profesor...'}</option>
                        {profesores.map(p => (
                            <option key={p.id} value={p.id}>{p.nombre}</option>
                        ))}
                    </select>
                </div>

                <div className="form-group">
                    <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Tipo de Ausencia</label>
                    <div style={{ display: 'flex', gap: '1rem', marginTop: '0.5rem' }}>
                        <label className="radio-label" style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', cursor: 'pointer' }}>
                            <input
                                type="radio"
                                name="tipo"
                                checked={formData.tipo_ausencia === 'DIA_COMPLETO'}
                                onChange={() => setFormData({ ...formData, tipo_ausencia: 'DIA_COMPLETO' })}
                            /> Día Completo
                        </label>
                        <label className="radio-label" style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', cursor: 'pointer' }}>
                            <input
                                type="radio"
                                name="tipo"
                                checked={formData.tipo_ausencia === 'BLOQUES_ESPECIFICOS'}
                                onChange={() => setFormData({ ...formData, tipo_ausencia: 'BLOQUES_ESPECIFICOS' })}
                            /> Bloques Específicos
                        </label>
                    </div>
                </div>

                {formData.tipo_ausencia === 'BLOQUES_ESPECIFICOS' && (
                    <div className="form-group">
                        <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Seleccionar Bloques</label>
                        <div className="bloques-grid">
                            {bloques.map(b => (
                                <button
                                    key={b.id}
                                    type="button"
                                    className={`bloque-btn ${formData.bloques_afectados.includes(b.id) ? 'active' : ''}`}
                                    onClick={() => handleBloqueToggle(b.id)}
                                >
                                    {b.label}
                                </button>
                            ))}
                        </div>
                    </div>
                )}

                <hr style={{ border: 'none', borderTop: '1px solid var(--border)' }} />

                <div className="form-group">
                    <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                        <input
                            type="checkbox"
                            checked={formData.reemplazo}
                            onChange={e => setFormData({ ...formData, reemplazo: e.target.checked })}
                        /> ¿Hubo reemplazo docente?
                    </label>
                </div>

                {formData.reemplazo && (
                    <div className="form-group">
                        <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Nombre del Reemplazante</label>
                        <input
                            type="text"
                            className="input"
                            placeholder="Ej: Juan Pérez"
                            value={formData.profesor_reemplazo}
                            onChange={e => setFormData({ ...formData, profesor_reemplazo: e.target.value })}
                        />
                    </div>
                )}

                <div className="form-group">
                    <label style={{ display: 'block', marginBottom: '0.5rem', fontWeight: 500 }}>Motivo (Opcional)</label>
                    <textarea
                        className="input"
                        rows={3}
                        value={formData.motivo}
                        onChange={e => setFormData({ ...formData, motivo: e.target.value })}
                    ></textarea>
                </div>

                <button type="submit" className="btn btn-primary" disabled={loading}>
                    {loading ? 'Guardando...' : 'Confirmar Registro'}
                </button>
            </form>
        </div>
    )
}
