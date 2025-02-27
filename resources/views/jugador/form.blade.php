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
    background-color: rgba(38,186,165,0.2);
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Estilos para los grupos de campos */
form div {
    margin-bottom: 2px;
}

/* Estilos para las etiquetas */
form label {
    /*display: block;*/
    font-size: 14px;
    font-weight: 600;
    color: #333;
    margin-bottom: 2px;
}

/* Estilos para los campos de entrada */
form input[type="text"],
form input[type="email"],
form input[type="number"],
form input[type="password"],
form input[type="date"] {
    width: 95%;
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
    width: 50%;
    padding: 12px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    margin-top: 20px;
    background-color: #26baa5; /* Color rojo llamativo */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block; /* Hace que el botón sea un bloque */
    margin: 0 auto; /* Centra el botón horizontalmente */
}

form button[type="submit"]:hover {
    background-color: rgb(55,95,122); /* Color rojo más oscuro al pasar el mouse */
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
    width: 95%;
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
    background-color: rgb(55,95,122); /* Color rojo más oscuro al pasar el mouse */
}

.error {
    color: red;
    font-size: 14px;
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
            @error('nombre')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="text" id="nombre" name="nombre" value="{{ old('nombre') }}">
        </div>
    
        <!-- Apellidos -->
        <div>
            <label for="apellidos">Apellidos:</label>
            @error('apellidos')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="text" id="apellidos" name="apellidos" value="{{ old('apellidos') }}">
        </div>
        <div>
            <label for="telefono">Telefono:</label>
            @error('telefono')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="text" id="telefono" name="telefono" value="{{ old('telefono') }}">
        </div>
    
        <!-- Foto -->
        <div>
            <label for="foto">Foto:</label>
            @error('foto')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="file" id="foto" name="foto" accept="image/*">
        </div>

        <div>
            <label for="numero_jugador">Numero Juegador:</label>
            @error('numero_jugador')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="number" id="numero_jugador" name="numero_jugador" value="{{ old('numero_jugador') }}">
        </div>
    
        <!-- Fecha de Nacimiento -->
        <div>
            <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
            @error('fecha_nacimiento')
                <span class="error">{{ $message }}</span>
            @enderror
            <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" value="{{ old('fecha_nacimiento') }}">
        </div>
    
        <!-- Rol -->
        <div>
            <label for="papel">Rol:</label>
            @error('papel')
                <span class="error">{{ $message }}</span>
            @enderror
            <select id="papel" name="papel">
                <option value="">Seleccione rol</option>
                <option value="jugador" {{ old('papel') == 'jugador' ? 'selected' : '' }}>Jugador</option>
                <option value="guardia" {{ old('papel') == 'guardia' ? 'selected' : '' }}>Guardia</option>
                <option value="jefe" {{ old('papel') == 'jefe' ? 'selected' : '' }}>Jefe</option>
                <option value="vip" {{ old('papel') == 'vip' ? 'selected' : '' }}>VIP</option>
            </select>
        </div>
    
        <!-- ID del Usuario -->
        <div>
            <input type="hidden" name="user_id" value="{{ $user->id }}">
        </div>
    
        <!-- Botón de Registro -->
        <div class="text-center">
            <button type="submit">Registrarse</button>
        </div>
    </form>
    
   
    
</body>
</html>