<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PenggunaController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TagihanController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardAdminController;
use App\Http\Controllers\DashboardPenggunaController;
use App\Http\Controllers\PengaturanController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\PembayaranController;

/*
|--------------------------------------------------------------------------
| ROUTE UNTUK ADMIN (auth:admin)
|--------------------------------------------------------------------------
*/


Route::middleware(['auth:admin'])->group(function () {

    // Dashboard Admin
    Route::get('/admindashboard', [DashboardAdminController::class, 'index'])->name('admindashboard');
    Route::get('/admin/grafik-data', [DashboardAdminController::class, 'grafikData']);

    // Kelola Pengguna
    Route::prefix('pengguna')->group(function () {
        Route::get('/', [PenggunaController::class, 'index'])->name('pengguna.index');
        Route::get('/create', [PenggunaController::class, 'create'])->name('pengguna.create');
        Route::post('/', [PenggunaController::class, 'store'])->name('pengguna.store');
        Route::get('/{id}', [PenggunaController::class, 'edit'])->name('pengguna.edit');
        Route::put('/{id}', [PenggunaController::class, 'update'])->name('pengguna.update');
        Route::delete('/{id}', [PenggunaController::class, 'destroy'])->name('pengguna.destroy');
    });

    // Kelola Admin
    Route::prefix('admin')->group(function () {
        Route::get('/', [AdminController::class, 'index'])->name('admin.index');
        Route::get('/create', [AdminController::class, 'create'])->name('admin.create');
        Route::post('/', [AdminController::class, 'store'])->name('admin.store');
        Route::get('/{id}', [AdminController::class, 'edit'])->name('admin.edit');
        Route::put('/{id}', [AdminController::class, 'update'])->name('admin.update');
        Route::delete('/{id}', [AdminController::class, 'destroy'])->name('admin.destroy');
    });

    // Kelola Tagihan
    Route::prefix('tagihan')->group(function () {
        Route::get('/', [TagihanController::class, 'index'])->name('tagihan.index');
        Route::get('/create', [TagihanController::class, 'create'])->name('tagihan.create');
        Route::post('/', [TagihanController::class, 'store'])->name('tagihan.store');
        Route::get('/{id}', [TagihanController::class, 'edit'])->name('tagihan.edit');
        Route::put('/{id}', [TagihanController::class, 'update'])->name('tagihan.update');
        Route::delete('/{id}', [TagihanController::class, 'destroy'])->name('tagihan.destroy');

        Route::get('/kirimPesan/{id}', [TagihanController::class, 'kirimPesan'])->name('tagihan.kirimPesan');
        Route::get('/tagihan/kirimPesanBanyak', [TagihanController::class, 'kirimPesanBanyak'])->name('tagihan.kirimPesanBanyak');
    });

    // Pengaturan Sistem
    Route::prefix('pengaturan')->group(function () {
        Route::get('/', [PengaturanController::class, 'index'])->name('pengaturan.index');
        Route::put('/info/{id}', [PengaturanController::class, 'updateInfo'])->name('pengaturan.updateInfo');
        Route::put('/tarif/{id}', [PengaturanController::class, 'updateTarif'])->name('pengaturan.updateTarif');
        Route::put('/abonemen/{id}', [PengaturanController::class, 'updateAbonemen'])->name('pengaturan.updateAbonemen');
    });

    // Laporan
    Route::prefix('laporan')->group(function () {
        Route::get('/', [LaporanController::class, 'index'])->name('laporan.index');
        Route::get('/cetak', [LaporanController::class, 'cetakPdf'])->name('laporan.cetak');
    });
});

/*
|--------------------------------------------------------------------------
| ROUTE UNTUK PENGGUNA (auth:web)
|--------------------------------------------------------------------------
*/
Route::middleware(['auth:web'])->group(function () {

    // Dashboard Pengguna
    Route::get('/userdashboard', [DashboardPenggunaController::class, 'index'])->name('userdashboard');

    // Riwayat dan Proses Pembayaran
    Route::prefix('pembayaran')->group(function () {
        Route::get('/', [PembayaranController::class, 'index'])->name('pembayaran.index');
        Route::get('/{id}/nota', [PembayaranController::class, 'printNota'])->name('nota.print');
        Route::get('/{id}/bayar', [PembayaranController::class, 'bayar'])->name('tagihan.bayar');
        Route::get('/{id}/viewBayar', [PembayaranController::class, 'viewBayar'])->name('pembayaran.viewBayar');
    });
});

/*
|--------------------------------------------------------------------------
| ROUTE UMUM (Login, Logout, dll)
|--------------------------------------------------------------------------
*/

// Login & Logout
Route::get('/login', [AuthController::class, 'showLogin'])->name('login');
Route::post('/login', [AuthController::class, 'login']);
Route::post('/keluar', [AuthController::class, 'logout'])->name('logout');

// Halaman Statis
Route::get('/welcome', fn() => view('welcome'));
Route::get('/', fn() => view('panduan'));

Route::get('/api/data-terakhir/{pengguna_id}', [TagihanController::class, 'getDataTerakhir']);
