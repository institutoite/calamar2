<?php

namespace App\Filament\Responses;

use Filament\Http\Responses\Auth\Contracts\LoginResponse as LoginResponseContract;
use Illuminate\Http\RedirectResponse;
use Filament\Facades\Filament;

class LoginResponse implements LoginResponseContract
{
    public function toResponse($request): RedirectResponse
    {
        // Obtener el usuario autenticado
        $user = $request->user();

        // Verificar si el usuario está autenticado
        if (!$user) {
            return redirect()->to(Filament::getLoginUrl()); // Redirigir al login si no hay usuario autenticado
        }

        // Redirigir según el rol del usuario
        if ($user->role !== 'admin') {
            return redirect()->to(route('jugador.show')); // Redirige a la vista para usuarios no administradores
        }

        // Redirigir a la página por defecto de Filament para administradores
        return redirect()->intended(Filament::getUrl());
    }
}