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
            return redirect()->to(Filament::getLoginUrl());
        }
        // Redirigir según el rol del usuario
        if ($user->roles->first() !== 'admin') {
            return new RedirectResponse(route('jugador.show')); // ✅ SOLUCIÓN AQUÍ
        }


        return new RedirectResponse(Filament::getUrl()); // ✅ CORRECTO
    }
}