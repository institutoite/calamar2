<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido al Juego del Calamar</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.welcome-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 400px;
    width: 100%;
}

h1 {
    color: #e74c3c;
}

form {
    display: flex;
    flex-direction: column;
    gap: 10px;
}

label {
    font-weight: bold;
}

input {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    padding: 10px;
    background-color: #e74c3c;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #c0392b;
}

.hidden {
    display: none;
}

#gameInfo {
    margin-top: 20px;
}
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>¡Bienvenido al Juego del Calamar!</h1>
        <p>Regístrate para comenzar la diversión.</p>
        
        <form id="registrationForm">
            <label for="username">Nombre de usuario:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Registrarse</button>
        </form>

        <div id="gameInfo" class="hidden">
            <h2>Información del Juego</h2>
            <p><strong>Lugar:</strong> <span id="gameLocation">Cargando...</span></p>
            <p><strong>Hora:</strong> <span id="gameTime">Cargando...</span></p>
            <p><strong>Estado:</strong> <span id="gameStatus">Cargando...</span></p>
        </div>
    </div>

    <script>
        document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    // Simulación de registro exitoso
    alert(`¡Bienvenido, ${username}! Tu registro ha sido exitoso.`);

    // Mostrar la información del juego
    document.getElementById('gameInfo').classList.remove('hidden');

    // Simulación de datos del juego
    const gameLocation = "Parque de Juegos Central";
    const gameTime = "15:00 PM";
    const gameStatus = "Listo para jugar";

    document.getElementById('gameLocation').textContent = gameLocation;
    document.getElementById('gameTime').textContent = gameTime;
    document.getElementById('gameStatus').textContent = gameStatus;
});
    </script>
</body>
</html>