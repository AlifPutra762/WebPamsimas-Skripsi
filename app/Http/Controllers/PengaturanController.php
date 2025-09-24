<?php

namespace App\Http\Controllers;

use App\Models\PengaturanModel;
use App\Models\Tarif;
use App\Models\Abonemen;

use Illuminate\Http\Request;

class PengaturanController extends Controller
{
    public function index()
    {
        $pengaturan = PengaturanModel::first();
        $tarif = Tarif::first();
        $abonemen = Abonemen::first();
        return view('admin.pengaturan', compact('pengaturan', 'tarif', 'abonemen'));
    }

    public function updateInfo(Request $request, $id)
    {
        $request->validate([
            'pengaturan' => 'required|string',
        ], [
            'pengaturan.required' => 'Pengaturan tidak boleh kosong',
            'pengaturan.string' => 'Pengaturan harus berupa teks'
        ]);

        $pengaturan = PengaturanModel::findOrFail($id);
        $pengaturan->pengaturan = $request->pengaturan;
        $pengaturan->save();

        return redirect()->back()->with('success', 'Informasi berhasil diperbarui.');
    }

    public function updateTarif(Request $request, $id)
    {
        $request->validate([
            'harga' => 'required|numeric',
        ], [
            'harga.required' => 'Harga tidak boleh kosong',
            'harga.numeric' => 'Harga harus berupa angka',
        ]);

        $tarif = Tarif::findOrFail($id);
        $tarif->harga = $request->harga;
        $tarif->save();

        return redirect()->back()->with('success', 'Tarif berhasil diperbarui.');
    }

    public function updateAbonemen(Request $request, $id)
    {
        $request->validate([
            'harga' => 'required|numeric',
        ], [
            'harga.required' => 'Harga tidak boleh kosong',
            'harga.numeric' => 'Harga harus berupa angka',
        ]);

        $abonemen = Abonemen::findOrFail($id);
        $abonemen->harga = $request->harga;
        $abonemen->save();

        return redirect()->back()->with('success', 'Abonemen berhasil diperbarui.');
    }
}
