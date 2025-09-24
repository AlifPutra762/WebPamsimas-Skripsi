<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tagihan;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;

class PembayaranController extends Controller
{
    public function index()
    {
        $userId = Auth::user()->id;
        $tagihans = Tagihan::where('pengguna_id', $userId)->orderByDesc('tahun')->orderByDesc('bulan')->paginate(10);

        return view('user.pembayaran', compact('tagihans'));
    }

    public function printNota($id)
    {
        $tagihan = Tagihan::with('pengguna')->findOrFail($id);

        $pdf = Pdf::loadView('pembayaran.cetaknotapdf', compact('tagihan'))->setPaper('A5', 'portrait');

        return $pdf->download('Nota_Pembayaran_' . $tagihan->pengguna->nama . '_' . $tagihan->bulan . $tagihan->tahun . '.pdf');
    }

    public function bayar($id)
    {
        $tagihan = Tagihan::findOrFail($id);
        if ($tagihan->pengguna_id != Auth::id()) {
            abort(403);
        }

        // Logika pembayaran bisa ditambahkan di sini
        $tagihan->status = 'lunas';
        $tagihan->save();

        return redirect()->route('pembayaran.index')->with('success', 'Tagihan berhasil dibayar!');
    }

    public function viewBayar($id)
    {
        $userId = Auth::id();
        $tagihan = Tagihan::where('id', $id)
            ->where('pengguna_id', $userId)
            ->firstOrFail(); // pastikan hanya bisa melihat tagihan miliknya

        return view('pembayaran.bayar', compact('tagihan'));
    }
}
