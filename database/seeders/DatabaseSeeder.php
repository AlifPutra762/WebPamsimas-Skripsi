<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Kalau mau tetap pakai User factory:
        // \App\Models\User::factory(10)->create();

        // User default contoh
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // Panggil AdminSeeder
        $this->call([
            AdminSeeder::class,
            AbonemenSeeder::class,
            PengaturanSeeder::class,
            TarifSeeder::class,
        ]);
    }
}
