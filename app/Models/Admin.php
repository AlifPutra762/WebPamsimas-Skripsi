<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Admin extends Authenticatable
{
    use Notifiable;

    protected $table = 'admin'; // Gunakan 'admin' karena nama tabelmu tidak jamak

    protected $fillable = ['nama', 'username', 'password'];

    protected $hidden = ['password'];
}
