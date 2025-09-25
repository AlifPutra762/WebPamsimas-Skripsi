<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AbonemenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('abonemens')->insert([
            ['harga' => 5000, 'created_at' => now(), 'updated_at' => now()]
        ]);
    }
}
