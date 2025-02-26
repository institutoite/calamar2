<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil del Jugador</title>
    <style>
/* Estilos generales */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    color: #333;
}

/* Contenedor del perfil */
.player-profile {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    width: 400px;
    text-align: center;
}

/* Encabezado del jugador */
.player-header {
    padding: 20px;
    background-color: #26baa5;
    color: #fff;
}

.player-photo {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    border: 4px solid #fff;
    margin-bottom: 15px;
}

.player-name {
    font-size: 24px;
    margin: 10px 0;
}

.player-role {
    font-size: 18px;
    margin: 5px 0;
    font-weight: 300;
}

/* Detalles del jugador */
.player-details {
    padding: 20px;
    text-align: left;
}

.detail-item {
    margin-bottom: 15px;
}

.detail-label {
    font-weight: bold;
    color: rgb(55, 95, 122);
    display: block;
    margin-bottom: 5px;
}

.detail-value {
    font-size: 16px;
    color: #555;
}
    </style>
</head>
<body>
    <div class="player-profile">
        <div class="player-header">
            <img src="{{ asset('storage/'.$jugador->foto) }}" alt="Foto de {{ $jugador->nombre }}" class="player-photo">
            <h1 class="player-name">{{ $jugador->nombre }} {{ $jugador->apellidos }}</h1>
            <p class="player-role">{{ $jugador->papel }}</p>
        </div>
        <div class="player-details">
            <div class="detail-item">
                <span class="detail-label">Número de Jugador:</span>
                <span class="detail-value">{{ $jugador->numero_jugador }}</span>
            </div>
            <div class="detail-item">
                <span class="detail-label">Fecha de Nacimiento:</span>
                <span class="detail-value">{{ $jugador->fecha_nacimiento }}</span>
            </div>
            <div class="detail-item">
                <span class="detail-label">Estado:</span>
                <span class="detail-value">{{ $jugador->estado }}</span>
            </div>
            <div class="detail-item">
                <span class="detail-label">Hora de Juego:</span>
                <span class="detail-value">{{ $jugador->hora_juego ?? 'No definida' }}</span>
            </div>
            <div class="detail-item">
                <span class="detail-label">Rol:</span>
                <span class="detail-value">{{ $jugador->papel }}</span>
            </div>
            <div class="detail-item">
                <span class="detail-label">ID de Usuario:</span>
                <span class="detail-value">{{ $jugador->user_id }}</span>
            </div>

            <div style="text-align: center; margin: 20px;">
                <a href="{{ route('generarPDF', $jugador->id) }}" target="_blank">
                    <button style="background-color:rgb(55,95,122); color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
                        Imprimir registro
                    </button>
                </a>
            </div>
            
        </div>
    </div>
</body>
</html>