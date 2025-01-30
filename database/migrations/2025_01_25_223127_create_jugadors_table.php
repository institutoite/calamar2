<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('jugadors', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('apellidos');
            $table->string('foto');
            $table->date('fecha_nacimiento');
            $table->string('numero_jugador')->unique(); // Número único para cada jugador
            $table->string('estado')->default('habilitado'); // Estado: habilitado, semifinalista, eliminado, etc.
            $table->time('hora_juego')->nullable(); // Hora en la que juega
            $table->string('papel')->default('jugador'); // Papel: jugador, jefe, guardia, vip

            $table->unsignedBigInteger("user_id");
            $table->foreign('user_id')->references("id")->on('users');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jugadors');
    }
};
