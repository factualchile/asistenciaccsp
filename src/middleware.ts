import { NextResponse } from 'next/server'
import type { NextRequest } from 'next/server'

export function middleware(request: NextRequest) {
    const authCookie = request.cookies.get('auth_token')
    const isLoginPage = request.nextUrl.pathname === '/login'

    // Si no está autenticado y no está en login, redirigir a login
    if (!authCookie && !isLoginPage) {
        return NextResponse.redirect(new URL('/login', request.url))
    }

    // Si está autenticado e intenta ir a login, redirigir a dashboard
    if (authCookie && isLoginPage) {
        return NextResponse.redirect(new URL('/dashboard', request.url))
    }

    return NextResponse.next()
}

export const config = {
    matcher: [
        '/dashboard/:path*',
        '/ausencias/:path*',
        '/reportes/:path*',
        '/config/:path*',
        '/login'
    ],
}
