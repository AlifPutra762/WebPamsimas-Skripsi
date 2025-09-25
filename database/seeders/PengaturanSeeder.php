<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PengaturanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('pengaturan')->insert([
            ['pengaturan' => 'Maksimal tagihan 3 bulan', 'created_at' => now(), 'updated_at' => now()]
        ]);
    }
}
