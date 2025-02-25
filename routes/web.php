<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

use App\Http\Controllers\RegisterController;
use App\Models\Jugador;

Route::get('/', function () {
    return view('welcome');
})->name("home");
Route::get('/vista', function () {
    $jugador=Jugador::find(3);
    return view('jugador.pdf',compact('jugador'));
})->name("home");




// Mostrar el formulario de registro
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('registro');
Route::get('/register/show', [RegisterController::class, 'show'])->name('jugador.show');
Route::get('/generar-pdf/{id}', [RegisterController::class, 'generarPDF'])->name("generarPDF");

// Procesar el formulario de registro
Route::post('/register', [RegisterController::class, 'register'])->name("registrar");
Route::get('/register/jugador/{user}', [RegisterController::class, 'registrar_jugador'])->name("registrar_jugador");
Route::get('show', [RegisterController::class, 'registrar_jugador'])->name("jugador.show");
Route::post('/guardar/jugador', [RegisterController::class, 'guardar_jugador'])->name("guardar_jugador");