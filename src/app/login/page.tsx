'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { supabase } from '@/lib/supabase'

export default function LoginPage() {
  const [password, setPassword] = useState('')
  const [error, setError] = useState(false)
  const router = useRouter()

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault()
    setError(false)

    const { data, error: dbError } = await supabase
      .from('configuracion')
      .select('clave_acceso')
      .eq('id', 1)
      .single()

    if (data && password === data.clave_acceso) {
      // Guardar en cookie para persistencia simple
      document.cookie = "auth_token=ccsp_authenticated; path=/; max-age=86400"
      router.push('/dashboard')
    } else {
      setError(true)
      setPassword('')
    }
  }

  return (
    <div className="login-container">
      <div className="card login-card">
        <div className="login-header">
          <h1>CCSP</h1>
          <span>Asistencia Docente</span>
        </div>

        <form onSubmit={handleLogin} className="login-form">
          <div className="form-group">
            <label>Contraseña de Acceso</label>
            <input
              type="password"
              className={`input ${error ? 'input-error' : ''}`}
              placeholder="Ingresa la clave"
              value={password}
              onChange={(e) => {
                setPassword(e.target.value)
                setError(false)
              }}
              autoFocus
            />
            {error && <p className="error-text">Contraseña incorrecta. Inténtalo de nuevo.</p>}
          </div>

          <button type="submit" className="btn btn-primary w-full">
            Entrar al Sistema
          </button>
        </form>
      </div>

    </div>
  )
}
