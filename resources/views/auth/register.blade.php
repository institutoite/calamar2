<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registrate</title>
    <style>
        .register-form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.register-form h2 {
    text-align: center;
    color: #e63946;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

button[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #e63946;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: #d62828;
}
    </style>
</head>
<body>
    <div class="register-form">
        <h2>Regístrate</h2>
        <form action="{{ route('registrar') }}" method="POST">
            @csrf <!-- Token de seguridad para Laravel -->
    
            <!-- Campo: Nombre -->
            <div class="form-group">
                <label for="name">usuario:(sinespacios)</label>
                <input type="text" id="name" name="name" required>
            </div>
    
         
    
            <!-- Campo: Contraseña -->
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
    
            <!-- Campo: Confirmar Contraseña -->
            <div class="form-group">
                <label for="password_confirmation">Confirmar Contraseña:</label>
                <input type="password" id="password_confirmation" name="password_confirmation" required>
            </div>
    
            <!-- Campo Oculto: Rol Básico -->
            <input type="hidden" name="role" value="jugador">
    
            <!-- Botón de Registro -->
            <button type="submit">Registrarse</button>
        </form>
    </div>
</body>
</html>