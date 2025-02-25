<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha del Jugador</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { border: 2px solid black; padding: 20px; width: 80%; margin: auto; position: relative; }
        .titulo { font-size: 24px; font-weight: bold; margin-bottom: 20px; }
        .dato { font-size: 18px; margin-bottom: 10px; }
        .numero-jugador { font-size: 200px; font-weight: bold; border: 2px dashed black; padding: 10px; display: inline-block; margin-top: 20px; }
        .logo { width: 150px; margin-bottom: 20px; }
        .qr { width: 250px; margin-top: 20px; }
        .footer { margin-top: 30px; font-size: 14px; color: #555; border-top: 1px solid #ccc; padding-top: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <!-- Logotipo -->
        <img src="{{ public_path('storage/jugadores/logo.png') }}" alt="QR Pago" class="qr" >

        <div class="titulo">Ficha del Jugador</div>
        <div class="dato"><strong>Nombre:</strong> {{ $jugador->nombre }} {{ $jugador->apellidos }}</div>
        <div class="dato"><strong>Teléfono:</strong> {{ $jugador->telefono }}</div>
        <div class="dato"><strong>Fecha de Nacimiento:</strong> {{ $jugador->fecha_nacimiento }}</div>
        <div class="dato"><strong>Estado:</strong> {{ ucfirst($jugador->estado) }}</div>
        <div class="dato"><strong>Hora de Juego:</strong> {{ $jugador->hora_juego ?? 'Pendiente' }}</div>
        <div class="dato"><strong>Papel:</strong> {{ ucfirst($jugador->papel) }}</div>

        <!-- Número del jugador grande -->
        <div class="numero-jugador">{{ $jugador->numero_jugador }}</div>

        <!-- Código QR para el pago -->
        <p>Escanea este código QR para depositar Bs. 6 y participar:</p>
        {{-- <img src="{{ asset('qr.jpg') }}" alt="QR Pago" class="qr"> --}}
        
        <img src="{{ public_path('storage/jugadores/qr.png') }}" alt="QR Pago" class="qr" >


        <!-- Pie de página -->
        <div class="footer">
            <p>📚 Somos <strong>especialistas en apoyo escolar</strong> para estudiantes de colegio y universidad en todas las materias.</p>
            <p>📱 Síguenos en TikTok: <strong>@ite_educabol</strong></p>
        </div>
    </div>
</body>
</html>
