<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
use App\Models\Pengguna;

class PenggunaController extends Controller
{
    public function index(Request $request)
    {
        $query = Pengguna::query();

        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where(function ($q) use ($search) {
                $q->where('nama', 'like', "%{$search}%")
                    ->orWhere('username', 'like', "%{$search}%");
            });
        }

        // Urutkan berdasarkan angka setelah 'TB-' pada kolom id
        $query->orderByRaw('CAST(SUBSTRING(id, 4) AS UNSIGNED) ASC');

        $limit = $request->input('limit', 10); // default 10 jika tidak ada
        $pengguna = $query->paginate($limit)->withQueryString();

        return view('admin.pengguna', ['pengguna' => $pengguna]);
    }



    public function create()
    {
        return view('pengguna.createpengguna');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama' => ['required', 'unique:pengguna,nama'],
            'alamat' => ['required'],
            'no_hp' => ['required'],
            'username' => ['required', 'unique:pengguna,username'],
            'password' => ['required'],
        ], [
            'nama.required'        => 'Nama Pengguna wajib diisi.',
            'nama.unique'          => 'Nama Pengguna sudah digunakan.',
            'alamat.required'      => 'Alamat wajib diisi.',
            'no_hp.required'       => 'Nomor handphone wajib diisi.',
            'username.required'    => 'Username wajib diisi.',
            'username.unique'      => 'Username sudah digunakan.',
            'password.required'    => 'Password wajib diisi.',
        ]);

        // Ambil ID terakhir dengan mengurutkan berdasarkan angka setelah 'TB-'
        $latest = Pengguna::orderByRaw('CAST(SUBSTRING(id, 4) AS UNSIGNED) DESC')->first();

        if (!$latest) {
            $newId = 'TB-1';
        } else {
            $lastNumber = (int) str_replace('TB-', '', $latest->id);
            $newId = 'TB-' . ($lastNumber + 1);
        }


        $validatedData['id'] = $newId;
        $validatedData['password'] = Hash::make($validatedData['password']);

        Pengguna::create($validatedData);

        return redirect('pengguna')->with('success', 'Data Pengguna Berhasil Ditambah');
    }

    public function edit($id)
    {
        $pengguna = Pengguna::findOrFail($id);
        return view('pengguna.editpengguna', ['pengguna' => $pengguna]);
    }

    public function update(Request $request, $id)
    {
        $pengguna = Pengguna::findOrFail($id); // Ambil data pengguna dulu

        $validatedData = $request->validate([
            'nama' => ['required'],
            'alamat' => ['required'],
            'no_hp' => ['required'],
            'username' => ['required'],
            'password' => ['required'],
        ], [
            'nama.required'        => 'Nama Pengguna wajib diisi.',
            'alamat.required'      => 'Alamat wajib diisi.',
            'no_hp.required'       => 'Nomor handphone wajib diisi.',
            'username.required'    => 'Username wajib diisi.',
            'password.required'    => 'Password wajib diisi.',
        ]);

        // Hash password baru sebelum disimpan
        $validatedData['password'] = Hash::make($validatedData['password']);

        $pengguna->update($validatedData);

        return redirect('pengguna')->with('success', 'Data Pengguna Berhasil Diupdate');
    }


    public function destroy($id)
    {
        $pengguna = Pengguna::findOrFail($id);
        $pengguna->delete();
        return redirect('/pengguna')->with('success', 'Data Pengguna Berhasil Dihapus');
    }
}
