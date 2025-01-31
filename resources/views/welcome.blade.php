<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego del Calamar para Niños</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Estilos generales */
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    color: #333;
    background-color: #f9f9f9;
}

/* Sección de Bienvenida */
.welcome-section {
    background-color: #ffcc00; /* Amarillo divertido */
    padding: 50px 20px;
    text-align: center;
}

.welcome-container h1 {
    font-size: 28px;
    color: #26baa5; /* Rojo llamativo */
    margin-bottom: 20px;
}

.welcome-container p {
    font-size: 18px;
    margin-bottom: 20px;
}

.register-button {
    background-color: #26baa5;
    color: white;
    border: none;
    padding: 15px 30px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.register-button:hover {
    background-color: #26baa5;
}

/* Sección de Información */
.info-section {
    padding: 40px 20px;
    background-color: #ffffff;
    text-align: center;
}

.info-container h2 {
    font-size: 24px;
    color: #26baa5;
    margin-bottom: 20px;
}

.features {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.feature {
    background-color: #f0f0f0;
    padding: 15px;
    border-radius: 10px;
    width: 200px;
    text-align: left;
}

.feature span {
    font-size: 20px;
}

.feature p {
    margin: 0;
    font-size: 14px;
}

/* Sección de Registro */
.register-section {
    background-color: rgb(55,95,122);
    padding: 40px 20px;
    text-align: center;
}

.register-container h2 {
    font-size: 24px;
    color: white;
    margin-bottom: 20px;
}

.register-form {
    display: flex;
    flex-direction: column;
    gap: 10px;
    max-width: 400px;
    margin: 0 auto;
}

.register-form input {
    padding: 10px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
}

.register-form button {
    background-color: #ffcc00;
    color: #333;
    border: none;
    padding: 15px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.register-form button:hover {
    background-color: #e6b800;
}

/* Sección de Contacto */
.contact-section {
    padding: 40px 20px;
    background-color: #ffffff;
    text-align: center;
}

.contact-container h2 {
    font-size: 24px;
    color: #26baa5;
    margin-bottom: 20px;
}

.contact-container ul {
    list-style: none;
    padding: 0;
}

.contact-container li {
    margin: 10px 0;
}

.contact-container a {
    color: #26baa5;
    text-decoration: none;
}

.contact-container a:hover {
    text-decoration: underline;
}

/* Footer */
.footer-section {
    background-color: #333;
    color: white;
    padding: 20px;
    text-align: center;
}

.footer-container p {
    margin: 0;
    font-size: 14px;
}

.footer-links {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-top: 10px;
}

.footer-links a {
    color: white;
    text-decoration: none;
}

.footer-links a:hover {
    text-decoration: underline;
}

/* Estilos para la Sección de Contáctanos */
.contact-section {
    padding: 50px 20px;
    background-color: #ffffff;
    text-align: center;
}

.contact-container {
    max-width: 1200px;
    margin: 0 auto;
}

.contact-container h2 {
    font-size: 28px;
    color: #26baa5; /* Rojo llamativo */
    margin-bottom: 20px;
}

.contact-container p {
    font-size: 16px;
    margin-bottom: 40px;
}

.contact-content {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    justify-content: center;
    margin-bottom: 40px;
}

.contact-form, .contact-info {
    flex: 1;
    min-width: 300px;
    max-width: 500px;
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.contact-form h3, .contact-info h3 {
    font-size: 22px;
    color: #26baa5;
    margin-bottom: 20px;
}

.contact-form input, .contact-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.contact-form textarea {
    resize: vertical;
    height: 150px;
}

.contact-form button {
    background-color: #26baa5;
    color: white;
    border: none;
    padding: 15px 30px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.contact-form button:hover {
    background-color: #26baa5;
}

.contact-info ul {
    list-style: none;
    padding: 0;
    text-align: left;
}

.contact-info li {
    margin-bottom: 15px;
    font-size: 16px;
}

.contact-info a {
    color: #26baa5;
    text-decoration: none;
}

.contact-info a:hover {
    text-decoration: underline;
}

.contact-map {
    margin-top: 40px;
}

.contact-map h3 {
    font-size: 22px;
    color: #26baa5;
    margin-bottom: 20px;
}

.contact-map iframe {
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

    /*encabezado */
    /* Estilos para el Encabezado */
.main-header {
    background-color: #26baa5; /* Rojo llamativo */
    padding: 10px 20px;
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
}

.logo img {
    height: 50px; /* Ajusta el tamaño del logo */
}

.main-nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    gap: 20px;
}

.main-nav a {
    color: white;
    text-decoration: none;
    font-size: 16px;
    transition: color 0.3s ease;
}

.main-nav a:hover {
    color: #ffcc00; /* Amarillo al pasar el mouse */
}

.auth-buttons {
    display: flex;
    gap: 10px;
}

.btn-login, .btn-register {
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    text-decoration: none;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.btn-login {
    background-color: transparent;
    border: 2px solid white;
    color: white;
}

.btn-login:hover {
    background-color: white;
    color: #26baa5;
}

.btn-register {
    background-color: #ffcc00; /* Amarillo */
    border: 2px solid #ffcc00;
    color: #333;
}

.btn-register:hover {
    background-color: #e6b800; /* Amarillo más oscuro */
    border-color: #e6b800;
}

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% unete a nosotros */
/* Estilos para la Sección Únete a Nosotros */
.join-us-section {
    padding: 50px 20px;
    background-color: #f9f9f9;
    text-align: center;
}

.join-us-container {
    max-width: 1200px;
    margin: 0 auto;
}

.join-us-container h2 {
    font-size: 28px;
    color: #26baa5; /* Rojo llamativo */
    margin-bottom: 20px;
}

.join-us-container p {
    font-size: 16px;
    margin-bottom: 40px;
}

.join-options {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
    margin-bottom: 40px;
}

.join-card {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 250px;
    text-align: center;
}

.join-card h3 {
    font-size: 20px;
    color: #26baa5;
    margin-bottom: 15px;
}

.join-card p {
    font-size: 14px;
    margin-bottom: 20px;
}

.btn-join {
    background-color: #26baa5;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.btn-join:hover {
    background-color: #26baa5;
}

.contact-form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 0 auto;
}

.contact-form h3 {
    font-size: 22px;
    color: #26baa5;
    margin-bottom: 20px;
}

.contact-form input, .contact-form select, .contact-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.contact-form textarea {
    resize: vertical;
    height: 150px;
}

.contact-form button {
    background-color: #26baa5;
    color: white;
    border: none;
    padding: 15px 30px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.contact-form button:hover {
    background-color: #26baa5;
}

/*enviar un comentario a whatsapp */
.contact-form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 0 auto;
}

.contact-form h3 {
    font-size: 22px;
    color: #26baa5;
    margin-bottom: 20px;
}

.contact-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    resize: vertical;
    height: 150px;
}

.contact-form button {
    background-color: #26baa5;
    color: white;
    border: none;
    padding: 15px 30px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.contact-form button:hover {
    background-color: #26baa5;
}
    </style>
</head>
<body>

    <header class="main-header">
        <div class="header-container">
            <!-- Logo -->
            <div class="logo">
                <a href="#">
                    <img src="logo.png" alt="Logo Juego del Calamar para Niños">
                </a>
            </div>

            <!-- Menú de Navegación -->
            <nav class="main-nav">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Cómo Funciona</a></li>
                    <li><a href="#">Contáctanos</a></li>
                </ul>
            </nav>

            <!-- Botones de Registrarse y Login -->
            <div class="auth-buttons">
                <a href="{{ url('admin') }}" class="btn-login">Iniciar Sesión</a>
                <a href="{{ route('registro') }}" class="btn-register">Registrarse</a>
            </div>
        </div>
    </header>


    <!-- Sección de Bienvenida -->
    <section class="welcome-section">
        <div class="welcome-container">
            <h1>¡Bienvenidos al Mundo del Juego del Calamar para Niños! 🦑🎮</h1>
            <p>¿Estás listo para sumergirte en una aventura llena de diversión, desafíos y emociones? ¡Regístrate y únete a la diversión!</p>
            <button class="register-button">¡Regístrate Ahora! 🎉</button>
        </div>
    </section>

    <!-- Sección de Información del Juego -->
    <section class="info-section">
        <div class="info-container">
            <h2>¿Cómo Funciona?</h2>
            <div class="features">
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Regístrate</strong> de manera fácil y rápida.</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Elige</strong> el lugar y la hora del juego.</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Participa</strong> en desafíos divertidos y seguros.</p>
                </div>
                <div class="feature">
                    <span>✅</span>
                    <p><strong>Gana</strong> premios increíbles.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección de Registro -->
    <section class="register-section">
        <div class="register-container">
            <h2>Siguenos en tik tok</h2>
            <a href="https://www.tiktok.com/@ite_educabol" class="btn-join">Seguir</a>
        </div>
    </section>

    <!-- Sección de Contáctanos - Únete a Nosotros -->
<section class="join-us-section">
    <div class="join-us-container">
        <h2>Únete a Nosotros</h2>
        <p>¿Quieres ser parte de nuestra comunidad? Tenemos varias formas en las que puedes participar. ¡Elige la que más te guste!</p>

        <!-- Tarjetas de Opciones -->
        <div class="join-options">
            <!-- Opción 1: Guardia -->
            <div class="join-card">
                <h3>👮‍♂️ Sé un Guardia</h3>
                <p>Protege a los participantes y asegúrate de que todos sigan las reglas del juego. ¡Tu ayuda es invaluable!</p>
                <a href="https://wa.me/59160902299?text=Quiero%20ser%20guardia,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
            </div>

            <!-- Opción 2: Acompañante en Recorridos -->
            <div class="join-options">
                <!-- Opción 1: Acompáñanos en Recorridos -->
                <div class="join-card">
                    <h3>👫 Acompáñanos en Recorridos</h3>
                    <p>Únete a nuestros recorridos con la muñeca y ayuda a guiar a los participantes en esta emocionante aventura.</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20ser%20acompañante%20en%20recorridos,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            
                <!-- Opción 2: Voluntariado -->
                <div class="join-card">
                    <h3>🤝 Voluntariado</h3>
                    <p>Participa como voluntario y contribuye a hacer de este evento una experiencia inolvidable para todos.</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20ser%20voluntario,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            
                <!-- Opción 3: Otros Roles -->
                <div class="join-card">
                    <h3>🌟 Otros Roles</h3>
                    <p>Tenemos muchas otras formas en las que puedes ayudar. ¡Contáctanos para saber más!</p>
                    <a href="https://wa.me/59160902299?text=Quiero%20saber%20más%20sobre%20otros%20roles,%20más%20información%20por%20favor." class="btn-join" target="_blank">Más Información</a>
                </div>
            </div>
        </div>

        <!-- Formulario de Contacto -->
        {{-- <div class="contact-form">
            <h3>¿Listo para Unirte? ¡Contáctanos!</h3>
            <form action="#" method="POST">
                <input type="text" name="name" placeholder="Nombre completo" required>
                <input type="email" name="email" placeholder="Correo electrónico" required>
                <input type="tel" name="phone" placeholder="Teléfono (opcional)">
                <select name="role" required>
                    <option value="" disabled selected>Selecciona un rol</option>
                    <option value="guardia">Guardia</option>
                    <option value="acompañante">Acompañante en Recorridos</option>
                    <option value="voluntario">Voluntario</option>
                    <option value="otros">Otros</option>
                </select>
                <textarea name="message" placeholder="Escribe tu mensaje aquí..." rows="5" required></textarea>
                <button type="submit">Enviar Mensaje</button>
            </form>
        </div> --}}
    </div>
</section>

    <!-- Sección de Contacto -->
   <!-- Sección de Contáctanos -->
<section class="contact-section">
    <div class="contact-container">
        <h2>Contáctanos</h2>
        <p>¿Tienes preguntas, sugerencias o necesitas ayuda? ¡Estamos aquí para ti! Escríbenos o visítanos.</p>
        
        <div class="contact-content">
            <!-- Formulario de Contacto Simplificado -->
            <div class="contact-form">
                <h3>Envíanos un comentario</h3>
                <form id="whatsappForm">
                    <textarea id="message" placeholder="Escribe tu comentario aquí..." rows="5" required></textarea>
                    <button type="button" onclick="sendToWhatsApp()">Enviar</button>
                </form>
            </div>
        
            <!-- Información de Contacto -->
            <div class="contact-info">
                <h3>Información de Contacto</h3>
                <ul>
                    <li>📍 <strong>Dirección:</strong> Villa 1 de mayo, calle 16 oeste #9, Santa Cruz</li>
                    <li>📧 <strong>Email:</strong> <a href="mailto:info@ite.com.bo">info@ite.com.bo</a></li>
                    <li>📞 <strong>Teléfono:</strong> <a href="tel:+59160902299">+59160902299</a></li>
                    <li>🕒 <strong>Horario:</strong> Lunes a Sábado, 07:30 - 18:30</li>
                </ul>
            </div>
        </div>
        <!-- Mapa de Ubicación (opcional) -->
        <div class="contact-map">
            <h3>¿Dónde Estamos?</h3>
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3798.955174060949!2d-63.1385769!3d-17.8017627!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93f1e9948f88a431%3A0x448c1b5adb32a0f0!2sITE%20(Central)!5e0!3m2!1sen!2sus!4v1695671234567!5m2!1sen!2sus"
                width="100%"
                height="300"
                style="border:0;"
                allowfullscreen=""
                loading="lazy">
            </iframe>
        </div>
    </div>
</section>

    <!-- Footer -->
    <footer class="footer-section">
        <div class="footer-container">
            <p>© 2023 ite educabol. Todos los derechos reservados.</p>
            <ul class="footer-links">
                <li><a href="#">Términos y Condiciones</a></li>
                <li><a href="#">Política de Privacidad</a></li>
                <li><a href="#">Ayuda</a></li>
            </ul>
        </div>
    </footer>

    <script>
    function sendToWhatsApp() {
        // Captura el mensaje del textarea
        const message = document.getElementById('message').value;

        // Número de teléfono (reemplaza con el tuyo)
        const phoneNumber = "59160902299"; // Código de país + número

        // Codifica el mensaje para que sea válido en una URL
        const encodedMessage = encodeURIComponent(message);

        // Crea el enlace de WhatsApp
        const whatsappLink = `https://wa.me/${phoneNumber}?text=${encodedMessage}`;

        // Abre el enlace en una nueva pestaña
        window.open(whatsappLink, '_blank');
    }
    </script>
</body>
</html>