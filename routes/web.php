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

Route::get('/', function () {
    return view('welcome');
})->name("home");


// Mostrar el formulario de registro
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('registro');

// Procesar el formulario de registro
Route::post('/register', [RegisterController::class, 'register'])->name("registrar");
Route::get('/register/jugador/{user}', [RegisterController::class, 'registrar_jugador'])->name("registrar_jugador");
Route::get('show', [RegisterController::class, 'registrar_jugador'])->name("jugador.show");
Route::post('/guardar/jugador', [RegisterController::class, 'guardar_jugador'])->name("guardar_jugador");