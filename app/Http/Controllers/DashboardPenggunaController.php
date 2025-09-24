<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Tagihan;
use App\Models\PengaturanModel;

class DashboardPenggunaController extends Controller
{
    public function index()
    {
        $user = Auth::user();

        // Hitung jumlah tagihan dengan status 'lunas' untuk user ini
        $jumlahLunas = Tagihan::where('pengguna_id', $user->id)
            ->where('status', 'lunas')
            ->count();

        // Hitung jumlah tagihan dengan status 'belum lunas' untuk user ini
        $jumlahBelumLunas = Tagihan::where('pengguna_id', $user->id)
            ->where('status', 'belum lunas')
            ->count();

        $pengaturan = PengaturanModel::find(1);
        $informasiAdmin = $pengaturan?->pengaturan ?? 'Belum ada informasi dari admin.';


        return view('user.dashboard', compact('jumlahLunas', 'jumlahBelumLunas', 'informasiAdmin'));
    }
}
