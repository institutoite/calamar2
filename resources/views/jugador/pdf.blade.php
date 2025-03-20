<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha del Jugador</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            border: 2px solid rgb(55, 95, 122);
            padding: 10px;
            width: 90%;
            margin: auto;
            position: relative;
            page-break-inside: avoid; /* Evita que el contenido se divida en dos páginas */
        }
        .titulo {
            font-size: 20px; /* Reducido para ahorrar espacio */
            font-weight: bold;
            margin-bottom: 10px;
            color: #000;
        }
        .logo {
            width: 100px; /* Reducido para ahorrar espacio */
            margin-bottom: 10px;
        }
        .jugador-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px; /* Reducido para ahorrar espacio */
            font-size: 14px; /* Reducido para ahorrar espacio */
        }
        .jugador-table td {
            padding: 6px; /* Reducido para ahorrar espacio */
            border: 1px solid #ddd;
        }
        .jugador-table td:first-child {
            font-weight: bold;
            background-color: #f9f9f9;
            width: 30%;
        }
        .recortable {
            border: 2px dashed #000;
            padding: 10px;
            margin: 10px 0; /* Reducido para ahorrar espacio */
            display: flex; /* Diseño de dos columnas */
            align-items: center; /* Centra verticalmente */
            justify-content: space-between; /* Espacio entre columnas */
        }
        .numero-jugador {
            font-size: 120px; /* Reducido para ahorrar espacio */
            font-weight: bold;
            color: #2c3e50;
            margin: 0; /* Sin margen para ahorrar espacio */
        }
        .datos {
            font-size: 16px; /* Reducido para ahorrar espacio */
            font-weight: bold;
            margin-top: 5px; /* Reducido para ahorrar espacio */
            color: #555;
        }
        .estado {
            font-size: 18px; /* Reducido para ahorrar espacio */
            font-weight: bold;
            padding: 5px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 5px; /* Reducido para ahorrar espacio */
        }
        .estado.habilitado {
            background-color: #4CAF50; /* Verde para habilitado */
            color: white;
        }
        .estado.no-habilitado {
            background-color: #f44336; /* Rojo para no habilitado */
            color: white;
        }
        .foto {
            width: 150px; /* Tamaño de la foto */
            height: 150px; /* Tamaño de la foto */
            border: 2px solid #ddd; /* Borde para la foto */
            border-radius: 5px; /* Bordes redondeados */
            object-fit: cover; /* Ajusta la foto al contenedor */
        }
        .qr {
            width: 150px; /* Reducido para ahorrar espacio */
            margin-top: 10px; /* Reducido para ahorrar espacio */
        }
        .footer {
            margin-top: 10px; /* Reducido para ahorrar espacio */
            font-size: 12px; /* Reducido para ahorrar espacio */
            color: #555;
            border-top: 1px solid #ccc;
            padding-top: 5px; /* Reducido para ahorrar espacio */
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Logotipo -->
        <img src="{{ public_path('storage/jugadores/logo.png') }}" alt="Logo" class="logo">

        <div class="titulo">Ficha del Jugador</div>

        <!-- Tabla de datos del jugador -->
        <table class="jugador-table">
            <tr>
                <td><strong>Nombre:</strong></td>
                <td colspan="3">{{ $jugador->nombre }} {{ $jugador->apellidos }}</td>
            </tr>
            <tr>
                <td><strong>Teléfono:</strong></td>
                <td>{{ $jugador->telefono }}</td>
                <td><strong>Fecha Nac:</strong></td>
                <td>{{ $jugador->fecha_nacimiento }}</td>
            </tr>
            <tr>
                <td><strong>Hora de Juego:</strong></td>
                <td colspan="3">{{ $jugador->hora_juego ?? 'Pendiente' }}</td>
            </tr>
        </table>

        <!-- Recuadro de impresión -->
        <div class="recortable">
            <!-- Columna izquierda: Número, nombre, hora y estado -->
            <div>
                <div class="numero-jugador">
                    {{ str_pad($jugador->numero_jugador, 3, '0', STR_PAD_LEFT) }} <!-- Rellena con ceros -->
                </div>
                <div class="datos">
                    <p>{{ $jugador->nombre }} | Hora: {{ $jugador->hora_juego ?? 'Pendiente' }}</p>
                </div>
                <!-- Estado dentro del recuadro -->
                <div class="estado {{ $jugador->estado == 'habilitado' ? 'habilitado' : 'no-habilitado' }}">
                    {{ ucfirst($jugador->estado) }}
                </div>
            </div>

            <!-- Columna derecha: Foto del jugador -->
           
        </div>

        <!-- Código QR para el pago -->
        <p>Si realizaste el pago, ya estás registrado. Envíanos tu comprobante por favor.</p>
        <img src="{{ public_path('storage/' . $jugador->foto) }}" alt="Foto del Jugador" class="qr">

        <!-- Pie de página -->
        <div class="footer">
            <p>Síguenos en TikTok: <strong>@ite_educabol</strong></p>
            <p>Para mayor información: <strong>60902299</strong></p>
        </div>

        <p>Después de imprimir tu número de jugador, recórtalo y pégalo en tu ropa el día del evento. <strong>¡Así sabremos que eres parte del juego!</strong></p>
    </div>
</body>
</html>

{{-- <!DOCTYPE html>
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

        .titulo {
    font-size: 12px;
    font-weight: bold;
    margin-bottom: 2px;
    text-align: center;
}

.jugador-table {
    width: 100%;
    border-collapse: collapse; /* Elimina el espacio entre celdas */
    margin-bottom: 5px;
}

.jugador-table td {
    padding: 3px 5px; /* Espaciado interno */
    border: 1px solid #ddd; /* Borde sutil */
    font-size: 11px;
}

.jugador-table td:first-child {
    font-weight: bold;
    background-color: #f9f9f9; /* Fondo claro para las etiquetas */
    width: 30%; /* Ancho de la columna de etiquetas */
}
    </style>
</head>
<body>
    <div class="container">
        <!-- Logotipo -->
        <img src="{{ public_path('storage/jugadores/logo.png') }}" alt="Logo" class="logo" >

        <div class="titulo">Ficha del Jugador</div>
        <table class="jugador-table">
            <tr>
                <td><strong>Nombre:</strong></td>
                <td colspan="3">{{ $jugador->nombre }} {{ $jugador->apellidos }}</td>
            </tr>
            <tr>
                <td><strong>Teléfono:</strong></td>
                <td>{{ $jugador->telefono }}</td>
                <td><strong>Fecha Nac:</strong></td>
                <td>{{ $jugador->fecha_nacimiento }}</td>
            </tr>
            <tr>
                <td><strong>Estado:</strong></td>
                <td>{{ ucfirst($jugador->estado) }}</td>
                <td><strong>Hora de Juego:</strong></td>
                <td>{{ $jugador->hora_juego ?? 'Pendiente' }}</td>
            </tr>
        </table>

        <!-- Número del jugador grande -->
       
        <!-- Código QR para el pago -->
        <p>Si realizaste el pago ya estas registrado. Envianos tu comprobante por favor</p>
        
        <img src="{{ public_path('storage/'.$jugador->foto) }}" alt="QR Pago" class="qr" height="200px" >

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
</html> --}}
