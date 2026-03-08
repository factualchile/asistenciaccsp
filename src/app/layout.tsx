'use client'

import { usePathname, useRouter } from 'next/navigation'
import { useEffect, useState } from 'react'
import "./globals.css"

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const pathname = usePathname()
  const router = useRouter()
  const [isAuthorized, setIsAuthorized] = useState(false)
  const [loading, setLoading] = useState(true)

  const isLoginPage = pathname === '/login/' || pathname === '/login'

  useEffect(() => {
    // Pequeño delay para que el cliente tome control
    const checkAuth = () => {
      const authCookie = document.cookie.split('; ').find(row => row.startsWith('auth_token='))

      if (!authCookie && !isLoginPage) {
        router.push('/login/')
      } else if (authCookie && isLoginPage) {
        router.push('/dashboard/')
      } else {
        setIsAuthorized(true)
      }
      setLoading(false)
    }

    checkAuth()
  }, [pathname, router, isLoginPage])

  return (
    <html lang="es">
      <body>
        {!loading && (
          <div className="layout-wrapper">
            {(!isLoginPage && isAuthorized) && (
              <aside className="sidebar">
                <div className="sidebar-logo">
                  <h1>CCSP</h1>
                  <span>Asistencia</span>
                </div>
                <nav className="sidebar-nav">
                  <a href="/dashboard/" className="nav-item">Dashboard</a>
                  <a href="/ausencias/" className="nav-item">Registrar Ausencia</a>
                  <a href="/reportes/" className="nav-item">Reportes</a>
                  <a href="/config/" className="nav-item">Configuración</a>
                </nav>
              </aside>
            )}
            <main className="content">
              {children}
            </main>
          </div>
        )}
        {loading && (
          <div style={{ height: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center', background: '#0f172a', color: 'white' }}>
            Cargando...
          </div>
        )}
      </body>
    </html>
  )
}
