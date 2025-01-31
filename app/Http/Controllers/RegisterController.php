<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Jugador;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class RegisterController extends Controller
{

    
    public function showRegistrationForm()
    {
        return view('auth.register'); // Vista del formulario de registro
    }

    public function register(Request $request)
    {
        // Validación de los datos del formulario
        $request->validate([
            'name' => 'required|string|max:255',
            'password' => 'required|string|min:8|confirmed',
        ]);

        // Crear el usuario
        $user = User::create([
            'name' => $request->name,
            'email' => Str::slug($request->name)."@ite.com.bo",
            'password' => Hash::make($request->password),
            'role' => $request->role, // Asignar el rol básico
        ]);

        // Redirigir al usuario después del registro
        return redirect()->route('registrar_jugador',$user)->with('success', '¡Registro exitoso!');
    }
    /**
     * Display a listing of the resource.
     */
    public function registrar_jugador(User $user) 
    {
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
            'foto' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'fecha_nacimiento' => 'required|date|before:today',
            'papel' => 'required|in:jugador,guardia,jefe,vip',
            'user_id' => 'required|exists:users,id',
        ]);
    
        $numero_jugador = $this->generarNumeroJugador($request->fecha_nacimiento);
    
        if (!$numero_jugador) {
            return back()->withErrors(['numero_jugador' => 'No hay números disponibles para esta edad.']);
        }
    
        // Guardar la foto
        $fotoPath = $request->file('foto')->store('jugadores', 'public');
    
        // Crear el jugador
        $jugador = new Jugador();
        $jugador->nombre = $request->nombre;
        $jugador->apellidos = $request->apellidos;
        $jugador->foto = $fotoPath;
        $jugador->fecha_nacimiento = $request->fecha_nacimiento;
        $jugador->numero_jugador = $numero_jugador;
        $jugador->papel = $request->papel;
        $jugador->user_id = $request->user_id;
        $jugador->save(); // Guardar el jugador en la base de datos

        return view('jugador.show',compact("jugador"))->with('success', 'Jugador registrado exitosamente');

     }
     

     function generarNumeroJugador($fecha_nacimiento)
     {
         // Calcular la edad
         $edad = date_diff(date_create($fecha_nacimiento), date_create('today'))->y;
     
         // Definir rangos de números por grupo de edad
         $rangos = [
             [5, 7, 1, 200],   // Grupo 1: 1 - 200
             [8, 10, 201, 600], // Grupo 2: 201 - 600
             [11, 13, 601, 800] // Grupo 3: 601 - 800
         ];
     
         // Determinar en qué grupo de edad está el jugador
         foreach ($rangos as $rango) {
             if ($edad >= $rango[0] && $edad <= $rango[1]) {
                 $min = $rango[2];
                 $max = $rango[3];
     
                 // Obtener el último número asignado dentro del rango
                 $ultimoNumero = DB::table('jugadors')
                     ->whereBetween('numero_jugador', [$min, $max])
                     ->max('numero_jugador');
     
                 // Si no hay registros, empezar desde el mínimo
                 $nuevoNumero = $ultimoNumero ? $ultimoNumero + 1 : $min;
     
                 // Verificar que el número no exista y buscar el siguiente disponible
                 while (DB::table('jugadors')->where('numero_jugador', $nuevoNumero)->exists()) {
                     $nuevoNumero++;
                     if ($nuevoNumero > $max) {
                         return null; // No hay más números disponibles en el rango
                     }
                 }
     
                 return $nuevoNumero;
             }
         }
     
         return null; // Si la edad no pertenece a ningún grupo
     }
     



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
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
