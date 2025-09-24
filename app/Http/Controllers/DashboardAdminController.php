<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengguna;
use App\Models\Tagihan;

class DashboardAdminController extends Controller
{
    public function index()
    {
        // Hitung jumlah pengguna
        $jumlahPengguna = Pengguna::count();

        // Hitung jumlah tagihan yang belum lunas
        $jumlahTagihan = Tagihan::where('status', 'Belum Lunas')->count();

        // Ambil daftar tahun unik dari tabel tagihans
        $tahunList = Tagihan::select('tahun')
            ->distinct()
            ->orderBy('tahun', 'desc')
            ->pluck('tahun');

        return view('admin.dashboard', compact('jumlahPengguna', 'jumlahTagihan', 'tahunList'));
    }



    public function grafikData(Request $request)
    {
        $tahun = $request->input('tahun', now()->year);

        $data = Tagihan::selectRaw('bulan, SUM(jumlah) as total_air, SUM(tagihan) as total_tagihan')
            ->where('tahun', $tahun)
            ->groupBy('bulan')
            ->orderByRaw("FIELD(bulan, 'Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember')")
            ->get()
            ->map(function ($item) {
                $namaBulan = [
                    'Januari',
                    'Februari',
                    'Maret',
                    'April',
                    'Mei',
                    'Juni',
                    'Juli',
                    'Agustus',
                    'September',
                    'Oktober',
                    'November',
                    'Desember'
                ];

                $bulanIndex = array_search($item->bulan, $namaBulan);

                return [
                    'bulan' => $bulanIndex + 1, // Jadi angka bulan 1-12
                    'total_air' => (float) $item->total_air,
                    'total_tagihan' => (float) $item->total_tagihan,
                ];
            });

        return response()->json($data);
    }
}
