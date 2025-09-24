<?php

namespace App\Http\Controllers;

use App\Models\Tagihan;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;


class LaporanController extends Controller
{
    public function index(Request $request)
    {
        $nama = $request->nama;
        $bulan = $request->bulan;
        $tahun = $request->tahun;
        $limit = $request->limit ?? 10; // Default: 10

        $query = Tagihan::query();

        if ($nama) {
            $query->whereHas('pengguna', function ($q) use ($nama) {
                $q->where('nama', 'like', '%' . $nama . '%');
            });
        }

        if ($bulan) {
            $query->where('bulan', 'like', '%' . $bulan . '%');
        }

        if ($tahun) {
            $query->where('tahun', 'like', '%' . $tahun . '%');
        }

        $tagihans = $query->paginate($limit)->withQueryString();

        return view('admin.laporan', compact('tagihans', 'nama', 'bulan', 'tahun', 'limit'));
    }

    public function cetakPdf(Request $request)
    {
        $query = Tagihan::with('pengguna');

        if ($request->filled('nama')) {
            $query->whereHas('pengguna', function ($q) use ($request) {
                $q->where('nama', 'like', '%' . $request->nama . '%');
            });
        }

        if ($request->filled('bulan')) {
            $query->where('bulan', $request->bulan);
        }

        if ($request->filled('tahun')) {
            $query->where('tahun', 'like', '%' . $request->tahun . '%');
        }

        $tagihans = $query->get();

        $totalJumlah = $tagihans->sum('jumlah');
        $totalTagihan = $tagihans->sum('tagihan');

        $adminName = auth()->guard('admin')->user()->nama;

        $pdf = PDF::loadView('laporan.cetakpdf', compact(
            'tagihans',
            'totalJumlah',
            'totalTagihan',
            'adminName'
        ));

        return $pdf->stream('laporan_tagihan.pdf');
    }
}
