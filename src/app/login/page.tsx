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

      <style jsx>{`
        .login-container {
          display: flex;
          align-items: center;
          justify-content: center;
          min-height: 100vh;
          background: #0f172a;
          padding: 1rem;
        }
        .login-card {
          width: 100%;
          max-width: 400px;
          padding: 2.5rem;
          box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }
        .login-header {
          text-align: center;
          margin-bottom: 2rem;
        }
        .login-header h1 {
          font-size: 2rem;
          font-weight: 800;
          color: var(--primary);
          margin-bottom: 0.25rem;
        }
        .login-header span {
          color: var(--text-muted);
          text-transform: uppercase;
          letter-spacing: 2px;
          font-size: 0.75rem;
          font-weight: 600;
        }
        .login-form {
          display: flex;
          flex-direction: column;
          gap: 1.5rem;
        }
        .w-full { width: 100%; }
        .input-error { border-color: var(--error); }
        .error-text {
          color: var(--error);
          font-size: 0.875rem;
          margin-top: 0.5rem;
        }
      `}</style>
    </div>
  )
}
