<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'username'); // atau 'user_id' sesuai struktur
    }
}
