<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;

use App\Models\Jugador;
use DateTime;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Spatie\Permission\Models\Role;

use Barryvdh\DomPDF\Facade\Pdf;

class RegisterController extends Controller
{
    public function showRegistrationForm()
    {
        return view('auth.register'); // Vista del formulario de registro
    }

    public function index()
    {
        // Obtener todos los jugadores con los campos necesarios
       
    }
    

public function register(Request $request)
{
    // Validación de los datos del formulario
    $request->validate([
        'name' => 'required|string|max:255|unique:users,name',
        'password' => 'required|string|min:8|confirmed',
        'role' => 'required' // Asegurarse de que el rol está presente
    ]);

    // Crear el usuario
    $user = User::create([
        'name' => $request->name,
        'email' => Str::slug($request->name) . "@ite.com.bo",
        'password' => Hash::make($request->password),
    ]);

    // Asignar el rol
    $role = Role::find(3); // Si `role` es un ID

   // $adminRole = Role::firstOrCreate(['name' => 'admin']); // Asegúrate de que el rol 'admin' exista
    $user->assignRole($role);

    
   

    return redirect()->route('registrar_jugador', $user)->with('success', '¡Registro exitoso!');
}

    /**
     * Display a listing of the resource.
     */
    public function registrar_jugador() 
    {
        $user = User::findOrFail(1);
        return view('jugador.form',compact("user"));
    }

    

    /**
     * Store a newly created resource in storage.
     */
  
     public function guardar_jugador(Request $request, User $user)
     {
        $request->validate([
            'nombre' => 'required|string|max:255',
            'apellidos' => 'required|string|max:255',
            'foto' => 'required|image|mimes:jpeg,png,jpg,gif|max:5000',
            'telefono' => 'required|numeric|digits:8',
            'fecha_nacimiento' => 'required|date|before:today',
            'numero_jugador' => 'required|integer|min:1|max:456|unique:jugadors,numero_jugador',
            'papel' => 'required|in:jugador,guardia,jefe,vip',
            'user_id' => 'required|exists:users,id',
        ]);
    
        // Guardar la foto
        $fotoPath = $request->file('foto')->store('jugadores', 'public');
    
        // Crear el jugador
        $jugador = new Jugador();
        $jugador->nombre = $request->nombre;
        $jugador->apellidos = $request->apellidos;
        $jugador->foto = $fotoPath;
        $jugador->fecha_nacimiento = $request->fecha_nacimiento;
        $jugador->numero_jugador = $request->numero_jugador;
        $jugador->hora_juego = $this->asignarHorario($request->fecha_nacimiento);
        $jugador->telefono = $request->telefono;
        $jugador->papel = $request->papel;
        $jugador->user_id = $request->user_id;
        $jugador->estado= "Eliminado";
        $jugador->save(); // Guardar el jugador en la base de datos

        return view('jugador.show',compact("jugador"))->with('success', 'Jugador registrado exitosamente');

     }
     

     function asignarHorario($fechaNacimiento) {
        // Definir los horarios de inicio para cada grupo de edad
        $horarios = [
            'menor_6'   => '09:00', // Menores de 6 años
            'edad_7_10' => '10:00', // Edad entre 7 y 10 años
            'mayor_13'  => '11:00', // Mayores de 13 años
        ];
    
        // Obtener la edad actual
        $fechaNacimiento = new DateTime($fechaNacimiento);
        $hoy = new DateTime();
        $edad = $hoy->diff($fechaNacimiento)->y; // Obtener años de diferencia
    
        // Determinar el horario según la edad
        if ($edad <= 6) {
            return $horarios['menor_6']; // Menores de 6 años
        } elseif ($edad >= 7 && $edad <= 10) {
            return $horarios['edad_7_10']; // Edad entre 7 y 10 años
        } else {
            return $horarios['mayor_13']; // Mayores de 13 años
        }
    }

    public function generarPDF($id)
    {
        $jugador = Jugador::findOrFail($id); // Buscar el jugador por ID
    
        $pdf = Pdf::loadView('jugador.pdf', compact('jugador'));
        return $pdf->stream('jugador_'.$jugador->numero_jugador.'.pdf'); 
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return "hola ";
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
