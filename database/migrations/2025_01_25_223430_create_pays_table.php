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
        Schema::create('pays', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("jugador_id");
            $table->foreign('jugador_id')->references("id")->on('jugadors');
            $table->decimal('monto', 8, 2); // Monto del pago
            $table->string('metodo_pago'); // Método de pago (efectivo, tarjeta, transferencia, etc.)
            $table->date('fecha_pago'); // Fecha en la que se realizó el pago
            $table->string('estado_pago')->default('pendiente'); // Estado del pago: pendiente, completado, rechazado
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pays');
    }
};
