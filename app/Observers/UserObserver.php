<?php

namespace App\Observers;

use App\Models\User;
use Illuminate\Support\Str;

class UserObserver
{
    /**
     * Handle the User "created" event.
     */
    public function created(User $user)
    {
        // Generar la contraseña: nombre de usuario sin espacios + .ite + ID del usuario
        $password = Str::slug($user->name) . '.ite.' . $user->id;
        $user->name=$user->name.$user->id;
        $user->email = Str::slug($user->name)."@ite.com.bo";
        // Actualizar la contraseña del usuario
        $user->password = bcrypt($password); // Hashear la contraseña
        $user->save(); // Guardar el usuario con la nueva contraseña
    }
    public function updating(User $user)
    {
        //Si el nombre ha cambiado, generar una nueva contraseña
        if ($user->isDirty('name')) {
            $password = Str::slug($user->name) . '.ite.' . $user->id;
            $user->password = bcrypt($password);
            $user->withoutEvents(function () use ($user) {
                $user->save();
            });
        }else{
            $user->withoutEvents(function () use ($user) {
                $user->save();
            });
        }
        
    }
}


/*
namespace App\Observers;

use App\Models\User;

class UserObserver
{
    
}


*/