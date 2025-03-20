function enviarReconfirmacion() {
    // Obtener el número de jugador
    const numeroJugador = document.getElementById('numeroJugador').value;

    // Validar que se haya ingresado un número
    if (!numeroJugador) {
        alert("Por favor, ingresa tu número de jugador.");
        return;
    }

    // Crear el mensaje de WhatsApp
    const mensaje = `Hola, me gustaría solitar el número de jugador ${numeroJugador}.`;

    // Codificar el mensaje para la URL
    const mensajeCodificado = encodeURIComponent(mensaje);

    // Número de teléfono fijo
    const telefono = "59160902299";

    // Crear el enlace de WhatsApp
    const urlWhatsApp = `https://wa.me/${telefono}?text=${mensajeCodificado}`;

    // Abrir WhatsApp en una nueva pestaña
    window.open(urlWhatsApp, '_blank');
}