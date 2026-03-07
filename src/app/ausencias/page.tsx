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

    // Bloques de ejemplo (esto debería venir de la DB)
    const bloques = [
        { id: 1, label: 'Bloque 1: 08:00 - 08:45' },
        { id: 2, label: 'Bloque 2: 08:45 - 09:30' },
        { id: 3, label: 'Bloque 3: 09:45 - 10:30' },
        { id: 4, label: 'Bloque 4: 10:30 - 11:15' },
        { id: 5, label: 'Bloque 5: 11:30 - 12:15' },
        { id: 6, label: 'Bloque 6: 12:15 - 13:00' },
        { id: 7, label: 'Bloque 7: 14:00 - 14:45' },
        { id: 8, label: 'Bloque 8: 14:45 - 15:30' },
    ]

    useEffect(() => {
        // Cargar profesores para el select
        async function loadProfesores() {
            const { data } = await supabase.from('profesores').select('id, nombre')
            if (data) setProfesores(data)
        }
        loadProfesores()
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
        setLoading(true)

        // Aquí iría la lógica de guardado en Supabase
        alert('Registro guardado correctamente (Simulado)')
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
