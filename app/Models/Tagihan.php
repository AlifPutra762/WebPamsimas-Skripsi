<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tagihan extends Model
{

    protected $fillable = [
        'pengguna_id',
        'nama',
        'bulan',
        'tahun',
        'awal',
        'akhir',
        'jumlah',
        'tarif',
        'abonemen',
        'tagihan',
        'status'
    ];
    // Relasi: Tagihan dimiliki oleh satu Pengguna
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id', 'id'); // 'pengguna_id' adalah foreign key
    }
}
