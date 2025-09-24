<?php

namespace App\Models;


use Illuminate\Foundation\Auth\User as Authenticatable;

class Pengguna extends Authenticatable
{


    // Menentukan nama tabel
    protected $table = 'pengguna'; // pastikan nama tabel sesuai dengan database

    protected $keyType = 'string';
    public $incrementing = false;

    // Kolom yang bisa diisi (mass assignment)
    protected $fillable = [
        'id',
        'nama',
        'alamat',
        'no_hp',
        'username',
        'password',
    ];

    // Kolom yang disembunyikan saat serialisasi (untuk keamanan)
    protected $hidden = [
        'password',
        'remember_token',
    ];

    // Relasi: Pengguna memiliki banyak Tagihan
    public function tagihans()
    {
        return $this->hasMany(Tagihan::class, 'pengguna_id'); // 'pengguna_id' adalah foreign key
    }
}
