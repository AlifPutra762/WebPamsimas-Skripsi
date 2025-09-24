<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('admin')->insert([
            [
                'nama' => 'Admin Utama',
                'username' => 'adminUtama',
                'password' => Hash::make('admin123'), // password default
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama' => 'Admin Kedua',
                'username' => 'superadmin',
                'password' => Hash::make('super123'), // password default
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
