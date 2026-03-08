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
    const authCookie = document.cookie.split('; ').find(row => row.startsWith('auth_token='))

    if (!authCookie && !isLoginPage) {
      router.push('/login')
    } else if (authCookie && isLoginPage) {
      router.push('/dashboard')
    } else {
      setIsAuthorized(true)
    }
    setLoading(false)
  }, [pathname, router])

  if (loading) return null // Evitar flash de contenido

  return (
    <html lang="es">
      <body>
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
      </body>
    </html>
  )
}
