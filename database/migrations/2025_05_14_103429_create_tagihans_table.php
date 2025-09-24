<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tagihans', function (Blueprint $table) {
            $table->id();

            // Foreign Key ke tabel pengguna
            $table->string('pengguna_id');
            $table->foreign('pengguna_id')->references('id')->on('pengguna')->onDelete('cascade');


            $table->string('bulan'); // atau enum jika kamu mau batasi ke "Januari", dst
            $table->year('tahun');

            $table->integer('awal'); // m3 awal
            $table->integer('akhir'); // m3 akhir
            $table->integer('jumlah'); // m3 total = akhir - awal

            $table->decimal('tarif', 8, 2); // tarif per m3
            $table->decimal('abonemen', 8, 2); // biaya tetap
            $table->decimal('tagihan', 10, 2); // total tagihan

            $table->enum('status', ['lunas', 'belum lunas'])->default('belum lunas');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tagihans');
    }
};
