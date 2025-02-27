<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha del Jugador</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { border: 2px solid rgb(55, 95, 122); padding: 10px; width: 90%; margin: auto; position: relative; }
        .titulo { font-size: 24px; font-weight: bold; margin-bottom: 20px; color: #000 }
        .dato { font-size: 18px; color: #555; margin-bottom: 3px; }
        /* .numero-jugador { font-size: 150px; font-weight: bold; border: 2px dashed rgb(98, 97, 97); width: 95%; padding: 10px; display: inline-block; margin-top: 10px; }
        .numero-jugador .datos { font-size: 12px; font-weight: bold; border: 2px dashed rgb(98, 97, 97);  padding: 10px; display: inline-block; margin-top: 10px; } */

        .numero-jugador {
    font-size: 150px; /* Tamaño grande para el número */
    font-weight: bold;
    border: 2px dashed rgb(98, 97, 97); /* Borde punteado solo en el contenedor principal */
    width: 95%; /* Ancho del contenedor */
    padding: 3px; /* Espaciado interno reducido */
    text-align: center; /* Centra el contenido horizontalmente */
    margin: 2px 2px; /* Centra el contenedor y añade un margen pequeño */
}

.datos {
    font-size: 15px; /* Tamaño pequeño para los datos */
    font-weight: bold;
    text-align: center; /* Centra el texto */
    margin-top: 1px; /* Espacio mínimo entre el número y los datos */
    padding: 0; /* Elimina el padding para ahorrar espacio */
}
        .logo { width: 150px; margin-bottom: 20px; }
        .qr { width: 180px; margin-top: 20px; }
        .logo { width: 100px; margin-top: 2px; }
        .footer { margin-top: 30px; font-size: 14px; color: #555; border-top: 1px solid #ccc; padding-top: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <!-- Logotipo -->
        <img src="{{ public_path('storage/jugadores/logo.png') }}" alt="Logo" class="logo" >

        <div class="titulo">Ficha del Jugador</div>
        <div class="dato"><strong>Nombre:</strong> {{ $jugador->nombre }} {{ $jugador->apellidos }}</div>
        <div class="dato"><strong>Teléfono:</strong> {{ $jugador->telefono }}</div>
        <div class="dato"><strong>Fecha de Nacimiento:</strong> {{ $jugador->fecha_nacimiento }}</div>
        <div class="dato"><strong>Estado:</strong> {{ ucfirst($jugador->estado) }}</div>
        <div class="dato"><strong>Hora de Juego:</strong> {{ $jugador->hora_juego ?? 'Pendiente' }}</div>
        <div class="dato"><strong>Papel:</strong> {{ ucfirst($jugador->papel) }}</div>

        <!-- Número del jugador grande -->
       
        <!-- Código QR para el pago -->
        <p>Escanea este código QR para depositar Bs. 6 y participar:</p>
        {{-- <img src="{{ asset('qr.jpg') }}" alt="QR Pago" class="qr"> --}}
        
        <img src="{{ public_path('storage/jugadores/qr.png') }}" alt="QR Pago" class="qr" >


        <!-- Pie de página -->
        <div class="footer">
            <p>Síguenos en TikTok: <strong>@ite_educabol</strong></p>
            <p>Para mayor información: <strong>60902299</strong></p>
        </div>

        <div class="numero-jugador">
            {{ $jugador->numero_jugador }} <!-- Número del jugador -->
            <div class="datos">
                <p>{{ $jugador->nombre }} {{ $jugador->hora_juego }}</p> <!-- Nombre y hora -->
            </div>
        </div>
        
        <p>Después de imprimir tu número de jugador, recórtalo y pégalo en tu ropa el día del evento.  <strong>¡Así sabremos que eres parte del juego! </strong></p>
    </div>
</body>
</html>
