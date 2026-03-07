import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Asistencia CCSP",
  description: "Registro de Ausencias Docentes e Inspectoría",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es">
      <body>
        <div className="layout-wrapper">
          <aside className="sidebar">
            <div className="sidebar-logo">
              <h1>CCSP</h1>
              <span>Asistencia</span>
            </div>
            <nav className="sidebar-nav">
              <a href="/dashboard" className="nav-item">Dashboard</a>
              <a href="/ausencias" className="nav-item">Registrar Ausencia</a>
              <a href="/reportes" className="nav-item">Reportes</a>
              <a href="/config" className="nav-item">Configuración</a>
            </nav>
          </aside>
          <main className="content">
            {children}
          </main>
        </div>
      </body>
    </html>
  );
}
