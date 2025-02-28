<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JugadorResource\Pages;
use App\Filament\Resources\JugadorResource\RelationManagers;
use App\Models\Jugador;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;

class JugadorResource extends Resource
{
    protected static ?string $model = Jugador::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
        ->schema([
            // Campo para el nombre
            Forms\Components\TextInput::make('nombre')
                ->required()
                ->maxLength(255),

            // Campo para los apellidos
            Forms\Components\TextInput::make('apellidos')
                ->required()
                ->maxLength(255),

            // Campo para la foto (imagen)
            FileUpload::make('foto')
                ->image()
                ->directory('fotos') // Directorio donde se guardarán las imágenes
                ->preserveFilenames() // Opcional: preserva los nombres originales de los archivos
                ->required(),

            // Campo para la fecha de nacimiento
            Forms\Components\DatePicker::make('fecha_nacimiento')
                ->required(),

            // Campo para el número de jugador (se sincroniza con user_id)
            Forms\Components\TextInput::make('numero_jugador')
                ->disabled() // Se deshabilita porque se sincronizará con user_id
                ->dehydrated(true), // No se guarda en la base de datos

            // Campo para el estado (lista desplegable)
            Select::make('estado')
                ->options([
                    'habilitado' => 'Habilitado',
                    'eliminado' => 'Eliminado',
                    'semifinalista' => 'Semifinalista',
                    'finalista' => 'Finalista',
                ])
                ->required()
                ->default('habilitado'),

            // Campo para la hora de juego (fecha y hora)
            DateTimePicker::make('hora_juego')
                ->required(),

            // Campo para el papel (lista desplegable)
            Select::make('papel')
                ->options([
                    'jugador' => 'jugador',
                    'guardia' => 'juardia',
                    'jefe' => 'jefe',
                    'vip' => 'voluntario',
                ])
                ->required()
                ->default('jugador'),

            // Campo para el user_id (combo buscable)
            Select::make('user_id')
                ->relationship('user', 'name') // Asume que tienes una relación "user" y que el campo "name" es el que se muestra
                ->searchable() // Hace que el campo sea buscable
                ->required()
                ->reactive() // Hace que el campo sea reactivo
                ->afterStateUpdated(function ($state, callable $set) {
                    // Sincroniza el número de jugador con el user_id seleccionado
                    $set('numero_jugador', $state);
                }),
        ]);
    }

    public static function table(Table $table): Table
{
    return $table
        ->columns([
            Tables\Columns\TextColumn::make('nombre')
                ->searchable(),
            Tables\Columns\TextColumn::make('apellidos')
                ->searchable(),
            Tables\Columns\ImageColumn::make('foto') // Columna de imagen
                ->square(), // Formato cuadrado
            Tables\Columns\TextColumn::make('fecha_nacimiento')
                ->date()
                ->sortable(),
            Tables\Columns\TextColumn::make('numero_jugador')
                ->searchable(),
            Tables\Columns\TextColumn::make('estado')
                ->formatStateUsing(function (string $state) {
                    return $state === 'eliminado' ? 'Impago' : 'Pagado'; // Muestra "Impago" o "Pagado"
                })
                ->searchable(),
            Tables\Columns\TextColumn::make('hora_juego'),
            Tables\Columns\TextColumn::make('papel')
                ->searchable(),
                Tables\Columns\TextColumn::make('telefono') // Columna de teléfono
                ->formatStateUsing(function ($record) { // Usamos $record para acceder a otros campos
                    $nombre = $record->nombre . ' ' . $record->apellidos; // Nombre completo
                    $horaJuego = $record->hora_juego; // Hora de juego
                    $numero_jugador = $record->numero_jugador; // Hora de juego
                    $mensaje = urlencode("Hola {$nombre} con numero de jugador {$numero_jugador}, tu hora de juego es {$horaJuego}."); // Mensaje codificado
                    $telefono = $record->telefono; // Número de teléfono
            
                    return "<a href='https://wa.me/591{$telefono}?text={$mensaje}' target='_blank'>{$telefono}</a>"; // Enlace a WhatsApp con mensaje
                })
                ->html(), // Permite renderizar HTML
            Tables\Columns\TextColumn::make('created_at')
                ->dateTime()
                ->sortable()
                ->toggleable(isToggledHiddenByDefault: true),
            Tables\Columns\TextColumn::make('updated_at')
                ->dateTime()
                ->sortable()
                ->toggleable(isToggledHiddenByDefault: true),
        ])
        ->filters([
            //
        ])
        ->actions([
            Tables\Actions\EditAction::make(),
        ])
        ->bulkActions([
            Tables\Actions\BulkActionGroup::make([
                Tables\Actions\DeleteBulkAction::make(),
            ]),
        ]);
}

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListJugadors::route('/'),
            'create' => Pages\CreateJugador::route('/create'),
            'edit' => Pages\EditJugador::route('/{record}/edit'),
        ];
    }
}
