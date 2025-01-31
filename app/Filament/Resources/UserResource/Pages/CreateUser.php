<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

use App\Models\User;
use Spatie\Permission\Models\Role;

class CreateUser extends CreateRecord
{
    protected static string $resource = UserResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // Hashear la contraseña
        $data['password'] = bcrypt($data['password']);
        return $data;
    }

    protected function afterCreate(): void
    {
        // Asignar el rol al usuario
        $role = Role::find($this->data['role']);
        $this->record->assignRole($role);
    }
}
