<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registrar jugador </title>
    <style>
   /* Estilos generales para el formulario */
form {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Estilos para los grupos de campos */
form div {
    margin-bottom: 20px;
}

/* Estilos para las etiquetas */
form label {
    display: block;
    font-size: 14px;
    font-weight: 600;
    color: #333;
    margin-bottom: 5px;
}

/* Estilos para los campos de entrada */
form input[type="text"],
form input[type="email"],
form input[type="number"],
form input[type="password"],
form input[type="date"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    transition: border-color 0.3s ease;
}

form input[type="text"]:focus,
form input[type="email"]:focus,
form input[type="password"]:focus,
form input[type="date"]:focus {
    border-color: #26baa5; /* Color rojo llamativo */
}

/* Estilos para el botón de registro */
form button[type="submit"] {
    width: 100%;
    padding: 12px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    background-color: #26baa5; /* Color rojo llamativo */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form button[type="submit"]:hover {
    background-color: #d62828; /* Color rojo más oscuro al pasar el mouse */
}

/* Estilos para el select */
form select {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    cursor: pointer;
    outline: none;
    transition: border-color 0.3s ease;
}

form select:focus {
    border-color: #26baa5; /* Color rojo llamativo */
}

/* Estilos para el input file */
form input[type="file"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f8f9fa;
    cursor: pointer;
    outline: none;
    transition: border-color 0.3s ease;
}

form input[type="file"]:focus {
    border-color: #26baa5; /* Color rojo llamativo */
}

/* Mejora la apariencia del input file en algunos navegadores */
form input[type="file"]::-webkit-file-upload-button {
    padding: 10px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    background-color: #26baa5; /* Color rojo llamativo */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form input[type="file"]::-webkit-file-upload-button:hover {
    background-color: #d62828; /* Color rojo más oscuro al pasar el mouse */
}


/* Estilos para pantallas pequeñas (responsive) */
@media (max-width: 600px) {
    form {
        padding: 15px;
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="password"],
    form input[type="password"],
    form input[type="date"] {
        font-size: 14px;
    }

    form button[type="submit"] {
        font-size: 14px;
    }
}
    </style>
</head>
<body>
    <form action="{{ route('guardar_jugador', $user) }}" method="POST" enctype="multipart/form-data">
        @csrf <!-- Token de seguridad para Laravel -->
    
        <!-- Nombre -->
        <div>
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" value="{{ old('nombre') }}" required>
            @error('nombre')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
    
        <!-- Apellidos -->
        <div>
            <label for="apellidos">Apellidos:</label>
            <input type="text" id="apellidos" name="apellidos" value="{{ old('apellidos') }}" required>
            @error('apellidos')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
        <div>
            <label for="telefono">Telefono:</label>
            <input type="text" id="telefono" name="telefono" value="{{ old('telefono') }}" required>
            @error('telefono')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
    
        <!-- Foto -->
        <div>
            <label for="foto">Foto:</label>
            <input type="file" id="foto" name="foto" accept="image/*" required>
            @error('foto')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>

        <div>
            <label for="numero_jugador">Numero Juegador:</label>
            <input type="number" id="numero_jugador" name="numero_jugador" value="{{ old('numero_jugador') }}" required>
            @error('numero_jugador')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
    
        <!-- Fecha de Nacimiento -->
        <div>
            <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
            <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" value="{{ old('fecha_nacimiento') }}" required>
            @error('fecha_nacimiento')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
    
        <!-- Rol -->
        <div>
            <label for="papel">Rol:</label>
            <select id="papel" name="papel" required>
                <option value="">Seleccione rol</option>
                <option value="jugador" {{ old('papel') == 'jugador' ? 'selected' : '' }}>Jugador</option>
                <option value="guardia" {{ old('papel') == 'guardia' ? 'selected' : '' }}>Guardia</option>
                <option value="jefe" {{ old('papel') == 'jefe' ? 'selected' : '' }}>Jefe</option>
                <option value="vip" {{ old('papel') == 'vip' ? 'selected' : '' }}>VIP</option>
            </select>
            @error('papel')
                <span class="error">{{ $message }}</span>
            @enderror
        </div>
    
        <!-- ID del Usuario -->
        <div>
            <input type="hidden" name="user_id" value="{{ $user->id }}">
        </div>
    
        <!-- Botón de Registro -->
        <button type="submit">Registrarse</button>
    </form>
    
    <style>
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
    
    
</body>
</html>