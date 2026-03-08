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
            const [pRes, bRes] = await Promise.all([
                supabase.from('profesores').select('id, nombre').order('nombre'),
                supabase.from('bloques').select('*').order('id')
            ])
            if (pRes.data) setProfesores(pRes.data)
            if (bRes.data) setBloques(bRes.data.map(b => ({
                id: b.id,
                label: `Bloque ${b.numero}: ${b.hora_inicio.slice(0, 5)} - ${b.hora_fin.slice(0, 5)}`
            })))
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
                    <label>Fecha</label>
                    <input
                        type="date"
                        className="input"
                        value={formData.fecha}
                        onChange={e => setFormData({ ...formData, fecha: e.target.value })}
                        required
                    />
                </div>

                <div className="form-group">
                    <label>Profesor</label>
                    <select
                        className="input"
                        value={formData.profesor_id}
                        onChange={e => setFormData({ ...formData, profesor_id: e.target.value })}
                        required
                    >
                        <option value="">Seleccione un profesor...</option>
                        {profesores.length > 0 ? (
                            profesores.map(p => (
                                <option key={p.id} value={p.id}>{p.nombre}</option>
                            ))
                        ) : (
                            <option value="1">Ejemplo: Macarena Yacoman</option>
                        )}
                    </select>
                </div>

                <div className="form-group">
                    <label>Tipo de Ausencia</label>
                    <div style={{ display: 'flex', gap: '1rem', marginTop: '0.5rem' }}>
                        <label className="radio-label">
                            <input
                                type="radio"
                                name="tipo"
                                checked={formData.tipo_ausencia === 'DIA_COMPLETO'}
                                onChange={() => setFormData({ ...formData, tipo_ausencia: 'DIA_COMPLETO' })}
                            /> Día Completo
                        </label>
                        <label className="radio-label">
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
                        <label>Seleccionar Bloques</label>
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
                        <label>Nombre del Reemplazante</label>
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
                    <label>Motivo (Opcional)</label>
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

            <style jsx>{`
        .form-group label {
          display: block;
          margin-bottom: 0.5rem;
          font-weight: 500;
        }
        .radio-label {
          display: flex;
          align-items: center;
          gap: 0.5rem;
          cursor: pointer;
        }
        .bloques-grid {
          display: grid;
          grid-template-columns: repeat(2, 1fr);
          gap: 0.5rem;
          margin-top: 0.5rem;
        }
        .bloque-btn {
          padding: 0.75rem;
          border: 1px solid var(--border);
          border-radius: 8px;
          text-align: left;
          font-size: 0.875rem;
          background: var(--bg-card);
          transition: all 0.2s;
        }
        .bloque-btn.active {
          background: var(--primary);
          color: white;
          border-color: var(--primary);
        }
        @media (max-width: 600px) {
          .bloques-grid { grid-template-columns: 1fr; }
        }
      `}</style>
        </div>
    )
}
