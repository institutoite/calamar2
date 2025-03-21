<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil del Jugador</title>
    <style>
/* Estilos para los detalles del jugador */
.detail-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 10px;
    padding: 10px;
    background-color: #f9f9f9; /* Fondo claro */
    border-radius: 5px; /* Esquinas redondeadas */
    border: 1px solid #ddd; /* Borde sutil */
}

.detail-label {
    font-weight: bold;
    color: #2c3e50; /* Color oscuro */
}

.detail-value {
    color: #34495e; /* Color gris oscuro */
}

/* Estilos para la sección del QR */
.qr-section {
    background-color: #ffffff; /* Fondo blanco */
    padding: 25px;
    border-radius: 15px; /* Esquinas redondeadas */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Sombra suave */
    text-align: center;
    margin: 20px auto;
    max-width: 400px; /* Ancho máximo */
}

.qr-message {
    font-size: 20px;
    font-weight: bold;
    color: #2c3e50; /* Color oscuro */
    margin-bottom: 10px;
}

.qr-instruction {
    font-size: 16px;
    color: #34495e; /* Color gris oscuro */
    margin-bottom: 20px;
}

.qr-image {
    width: 200px;
    height: 200px;
    margin: 10px 0; /* Espaciado alrededor del QR */
    border: 1px solid #ddd; /* Borde sutil */
    border-radius: 10px; /* Esquinas redondeadas */
}

hr {
    border: 0;
    height: 1px;
    background: #ddd; /* Línea divisoria */
    margin: 20px 0;
}

/* Estilos para los botones */
.download-button {
    background-color: #27ae60; /* Verde llamativo */
    color: white;
    padding: 12px 24px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 15px;
    transition: background-color 0.3s ease;
}

.download-button:hover {
    background-color: #219653; /* Verde más oscuro al pasar el mouse */
}

.print-button {
    background-color: rgb(55, 95, 122); /* Azul oscuro */
    color: white;
    padding: 12px 24px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 15px;
    transition: background-color 0.3s ease;
}

.print-button:hover {
    background-color: rgb(45, 85, 112); /* Azul más oscuro al pasar el mouse */
}

/* Contenedor del botón de imprimir */
.print-section {
    text-align: center;
    margin: 20px;
}
    </style>
</head>
<body>
    <div class="player-details">
        <!-- Detalles existentes del jugador -->
        <div class="detail-item">
            <span class="detail-label">Número de Jugador:</span>
            <span class="detail-value">{{ $jugador->numero_jugador }}</span>
        </div>
        <!-- ... otros detalles ... -->
    
        <!-- Sección del QR -->
        <div class="qr-section">
            <h2 class="qr-message">
                ¡Estás a un paso de finalizar tu registro!
            </h2>
            <p class="qr-instruction">
                Escanea el siguiente código QR para realizar el pago de <strong>Bs. 6</strong> y asegurar tu participación.
                Una vez pagado envianos el comprobante al numero 60902299
            </p>
            <img src="{{ asset('storage/jugadores/qr.png') }}" alt="QR de pago" class="qr-image">
            <hr>
            <button class="download-button" onclick="descargarQR()">
                Descargar QR
            </button>
        </div>

        <div class="print-section">
            <a href="#" onclick="enviarWhatsApp({{ json_encode($jugador) }})">
                <button class="print-button">
                    Enviar Confirmacion
                </button>
            </a>
        </div>
    </div>


    <script>
    function descargarQR() {
        const qrImage = document.querySelector('.qr-image');
        const imageURL = qrImage.src;

        // Crear un enlace temporal para descargar la imagen
        const link = document.createElement('a');
        link.href = imageURL;
        link.download = 'qr_pago.png'; // Nombre del archivo descargado
        link.style.display = 'none'; // Ocultar el enlace
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    }

    function enviarWhatsApp(jugador) {
        // Construir el mensaje de forma segura
        const mensaje = `
        *Nombre:* ${jugador.nombre || ''}
        *Apellidos:* ${jugador.apellidos || ''}
        *Teléfono:* ${jugador.telefono || ''}
        *Fecha de Nacimiento:* ${jugador.fecha_nacimiento || ''}
        *Número de Jugador:* ${jugador.numero_jugador || ''}
        *Estado:* ${jugador.estado || ''}
        *Hora de Juego:* ${jugador.hora_juego || ''}
        *Papel:* ${jugador.papel || ''}
        *Confirmación de Registro y Pago:* El usuario ha sido registrado y ha realizado el pago correctamente.`;
        // Codificar el mensaje para URL
        const mensajeCodificado = encodeURIComponent(mensaje.trim());
        // Crear el enlace de WhatsApp
        const url = `https://wa.me/59160902299?text=${mensajeCodificado}`;
        // Abrir el enlace en una nueva pestaña
        window.open(url, '_blank');
    }

    </script>
</body>
</html>