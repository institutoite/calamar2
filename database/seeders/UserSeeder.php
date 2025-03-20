<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        if (!User::where('email', 'admin@gmail.com')->exists()) {
        // Crear el usuario admin
        $admin = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('12345678'), // Cambia '12345678' por tu contraseña preferida
            'email_verified_at' => now(),
        ]);

        // Asignar el rol 'admin' al usuario creado
        $adminRole = Role::firstOrCreate(['name' => 'admin']); // Asegúrate de que el rol 'admin' exista
        $admin->assignRole($adminRole);
    }
    }
}
