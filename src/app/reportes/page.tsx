'use client'

import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'
import { formatFecha } from '@/lib/utils'
import { jsPDF } from 'jspdf'
import autoTable from 'jspdf-autotable'
import * as XLSX from 'xlsx'
import html2canvas from 'html2canvas'

export default function ReportesPage() {
    const [reportData, setReportData] = useState<any[]>([])
    const [loading, setLoading] = useState(false)
    const [periodo, setPeriodo] = useState('30')

    const [searchTerm, setSearchTerm] = useState('')
    const [page, setPage] = useState(1)
    const itemsPerPage = 10

    const fetchReport = async () => {
        setLoading(true)
        const { data } = await supabase
            .from('ausencias')
            .select('*, profesores(nombre)')
            .order('fecha', { ascending: false })
        if (data) setReportData(data)
        setLoading(false)
    }

    useEffect(() => {
        fetchReport()
    }, [])

    const filteredData = reportData.filter(a =>
        a.profesores?.nombre.toLowerCase().includes(searchTerm.toLowerCase()) ||
        a.motivo?.toLowerCase().includes(searchTerm.toLowerCase())
    )

    const paginatedData = filteredData.slice(
        (page - 1) * itemsPerPage,
        page * itemsPerPage
    )

    const exportPDF = () => {
        const doc = new jsPDF()
        doc.text('Reporte de Ausencias Docentes - CCSP', 14, 15)

        const tableData = reportData.map(a => [
            formatFecha(a.fecha),
            a.profesores.nombre,
            a.tipo_ausencia,
            a.reemplazo ? 'Sí' : 'No',
            a.profesor_reemplazo || '-',
            a.motivo || ''
        ])

        autoTable(doc, {
            head: [['Fecha', 'Profesor', 'Tipo', 'Reemplazo', 'Reemplazante', 'Motivo']],
            body: tableData,
            startY: 20
        })

        doc.save(`Reporte_CCSP_${new Date().getTime()}.pdf`)
    }

    const exportExcel = () => {
        const ws = XLSX.utils.json_to_sheet(reportData.map(a => ({
            Fecha: formatFecha(a.fecha),
            Profesor: a.profesores.nombre,
            Tipo: a.tipo_ausencia,
            Reemplazo: a.reemplazo ? 'Sí' : 'No',
            Reemplazante: a.profesor_reemplazo || '-',
            Motivo: a.motivo || ''
        })))
        const wb = XLSX.utils.book_new()
        XLSX.utils.book_append_sheet(wb, ws, "Reporte")
        XLSX.writeFile(wb, `Reporte_CCSP_${new Date().getTime()}.xlsx`)
    }

    const exportJPG = async () => {
        const element = document.getElementById('report-table')
        if (element) {
            const canvas = await html2canvas(element)
            const data = canvas.toDataURL('image/jpeg')
            const link = document.createElement('a')
            link.href = data
            link.download = `Reporte_CCSP_${new Date().getTime()}.jpg`
            link.click()
        }
    }

    return (
        <div className="container">
            <header style={{ marginBottom: '2rem', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <div>
                    <h1>Generador de Reportes</h1>
                    <p style={{ color: 'var(--text-muted)' }}>Configura y exporta la información administrativa.</p>
                </div>
                <div style={{ display: 'flex', gap: '0.5rem' }}>
                    <button onClick={exportPDF} className="btn btn-primary">Exportar PDF</button>
                    <button onClick={exportExcel} className="btn" style={{ border: '1px solid var(--border)' }}>Excel</button>
                    <button onClick={exportJPG} className="btn" style={{ border: '1px solid var(--border)' }}>Imagen</button>
                </div>
            </header>

            <div style={{ marginBottom: '1.5rem' }}>
                <input
                    type="text"
                    className="input"
                    placeholder="🔍 Buscar por profesor o motivo..."
                    value={searchTerm}
                    onChange={(e) => { setSearchTerm(e.target.value); setPage(1); }}
                />
            </div>

            <div className="card" id="report-table">
                <table style={{ width: '100%', borderCollapse: 'collapse' }}>
                    <thead>
                        <tr style={{ textAlign: 'left', borderBottom: '2px solid var(--border)' }}>
                            <th style={{ padding: '1rem' }}>Fecha</th>
                            <th style={{ padding: '1rem' }}>Profesor</th>
                            <th style={{ padding: '1rem' }}>Tipo</th>
                            <th style={{ padding: '1rem' }}>Reemplazo</th>
                            <th style={{ padding: '1rem' }}>Motivo</th>
                        </tr>
                    </thead>
                    <tbody>
                        {paginatedData.map(a => (
                            <tr key={a.id} style={{ borderBottom: '1px solid var(--border)' }}>
                                <td style={{ padding: '1rem' }}>{formatFecha(a.fecha)}</td>
                                <td style={{ padding: '1rem', fontWeight: 600 }}>{a.profesores?.nombre}</td>
                                <td style={{ padding: '1rem' }}>{a.tipo_ausencia}</td>
                                <td style={{ padding: '1rem' }}>{a.reemplazo ? '✅' : '❌'}</td>
                                <td style={{ padding: '1rem', color: 'var(--text-muted)', fontSize: '0.875rem' }}>{a.motivo}</td>
                            </tr>
                        ))}
                    </tbody>
                </table>

                {filteredData.length > itemsPerPage && (
                    <div style={{ display: 'flex', justifyContent: 'center', gap: '1rem', marginTop: '1.5rem', padding: '1rem' }}>
                        <button
                            onClick={() => setPage(p => Math.max(1, p - 1))}
                            disabled={page === 1}
                            className="btn"
                            style={{ fontSize: '0.875rem', border: '1px solid var(--border)' }}
                        >
                            Anterior
                        </button>
                        <span style={{ alignSelf: 'center', fontSize: '0.875rem' }}>Página {page}</span>
                        <button
                            onClick={() => setPage(p => p + 1)}
                            disabled={page * itemsPerPage >= filteredData.length}
                            className="btn"
                            style={{ fontSize: '0.875rem', border: '1px solid var(--border)' }}
                        >
                            Siguiente
                        </button>
                    </div>
                )}
            </div>
        </div>
    )
}
