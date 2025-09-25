<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TarifSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('tarifs')->insert([
            ['harga' => 1500, 'created_at' => now(), 'updated_at' => now()],
        ]);
    }
}
