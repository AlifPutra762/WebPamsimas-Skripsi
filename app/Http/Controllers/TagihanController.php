<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tagihan;
use App\Models\Pengguna;
use App\Models\Tarif;
use App\Models\Abonemen;

class TagihanController extends Controller
{
    public function index(Request $request)
    {
        $limit = $request->input('limit', 10); // Default 10
        $search = $request->input('search');

        $query = Tagihan::with('pengguna')
            ->orderBy('created_at', 'desc');

        if ($search) {
            $query->whereHas('pengguna', function ($q) use ($search) {
                $q->where('nama', 'like', "%{$search}%")
                    ->orWhere('id', 'like', "%{$search}%");
            });
        }

        $tagihans = $query->paginate($limit)->withQueryString();

        return view('admin.tagihan', compact('tagihans'));
    }

    public function create()
    {
        $penggunas = Pengguna::all();
        $tarif = Tarif::find(1); // Ambil tarif ID 1
        $abonemen = Abonemen::find(1); // Ambil abonemen ID 1
        return view('tagihan.createtagihan', compact('penggunas', 'tarif', 'abonemen'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'pengguna_id' => 'required|exists:pengguna,id',
            'bulan' => 'required|string',
            'tahun' => 'required|integer',
            'awal' => 'required|numeric|min:0',
            'akhir' => 'required|numeric|min:0|gte:awal',
            'tarif' => 'required',
            'abonemen' => 'required',
        ], [
            'pengguna_id.required' => 'Pengguna wajib dipilih.',
            'pengguna_id.exists' => 'Pengguna yang dipilih tidak ditemukan.',
            'bulan.required' => 'Bulan wajib diisi.',
            'tahun.required' => 'Tahun wajib diisi.',
            'tahun.integer' => 'Tahun harus berupa angka.',
            'awal.required' => 'Angka meteran awal wajib diisi.',
            'awal.numeric' => 'Angka meteran awal harus berupa angka.',
            'awal.min' => 'Angka meteran awal minimal 0.',
            'akhir.required' => 'Angka meteran akhir wajib diisi.',
            'akhir.numeric' => 'Angka meteran akhir harus berupa angka.',
            'akhir.min' => 'Angka meteran akhir minimal 0.',
            'akhir.gte' => 'Angka meteran akhir harus lebih besar atau sama dengan awal.',
            'status.required' => 'Status pembayaran wajib dipilih.',
            'tarif.required' => 'Tarif wajib diisi.',
            'abonemen.required' => 'Abonemen wajib diisi.',
        ]);

        $jumlah = $request->akhir - $request->awal;
        $tarif = $request->tarif; // Ambil dari input form
        $abonemen = $request->abonemen;
        $total_tagihan = ($jumlah * $tarif) + $abonemen;

        Tagihan::create([
            'pengguna_id' => $request->pengguna_id,
            'bulan' => $request->bulan,
            'tahun' => $request->tahun,
            'awal' => $request->awal,
            'akhir' => $request->akhir,
            'jumlah' => $jumlah,
            'tarif' => $tarif,
            'abonemen' => $abonemen,
            'tagihan' => $total_tagihan,
            'status' => 'belum lunas', // <- Ditetapkan default
        ]);

        return redirect('tagihan')->with('success', 'Tagihan berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $tagihan = Tagihan::findOrFail($id);
        $penggunas = Pengguna::all(); // ambil semua pengguna untuk dropdown pelanggan
        $tarifs = Tarif::all(); // ambil semua data tarif
        $abonemens = Abonemen::all(); // Ambil semua data abonemen

        return view('tagihan.edittagihan', compact('tagihan', 'penggunas'));
    }


    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'pengguna_id' => 'required|exists:pengguna,id',
            'bulan' => 'required|string',
            'tahun' => 'required|integer',
            'awal' => 'required|numeric|min:0',
            'akhir' => 'required|numeric|min:0|gte:awal',
            'status' => 'required|in:lunas,belum lunas',
        ], [
            'pengguna_id.required' => 'Pelanggan wajib dipilih.',
            'pengguna_id.exists' => 'Pelanggan yang dipilih tidak ditemukan.',
            'bulan.required' => 'Bulan wajib diisi.',
            'tahun.required' => 'Tahun wajib diisi.',
            'tahun.integer' => 'Tahun harus berupa angka.',
            'awal.required' => 'Meteran awal wajib diisi.',
            'awal.numeric' => 'Meteran awal harus berupa angka.',
            'awal.min' => 'Meteran awal minimal 0.',
            'akhir.required' => 'Meteran akhir wajib diisi.',
            'akhir.numeric' => 'Meteran akhir harus berupa angka.',
            'akhir.min' => 'Meteran akhir minimal 0.',
            'akhir.gte' => 'Meteran akhir harus lebih besar atau sama dengan awal.',
            'status.required' => 'Status pembayaran wajib dipilih.',
            'status.in' => 'Status hanya boleh bernilai lunas atau belum lunas.',
        ]);

        $jumlah = $request->akhir - $request->awal;
        $tarif = $request->tarif;
        $abonemen = $request->abonemen;
        $total_tagihan = ($jumlah * $tarif) + $abonemen;

        $tagihan = Tagihan::findOrFail($id);
        $tagihan->update([
            'pengguna_id' => $request->pengguna_id,
            'bulan' => $request->bulan,
            'tahun' => $request->tahun,
            'awal' => $request->awal,
            'akhir' => $request->akhir,
            'jumlah' => $jumlah,
            'tarif' => $tarif,
            'abonemen' => $abonemen,
            'tagihan' => $total_tagihan,
            'status' => $request->status,
        ]);

        return redirect('tagihan')->with('success', 'Tagihan berhasil diperbarui!');
    }


    public function destroy($id)
    {
        $tagihans = Tagihan::findOrFail($id);
        $tagihans->delete();
        return redirect('/tagihan')->with('success', 'Data Tagihan Berhasil Dihapus');
    }

    public function kirimPesan($id)
    {
        $tagihan = Tagihan::with('pengguna')->findOrFail($id);

        $noPengguna = $tagihan->pengguna->id;
        $nama = $tagihan->pengguna->nama;
        $noWa = $tagihan->pengguna->no_hp; // Pastikan dalam format 08xxx
        $bulan = $tagihan->bulan;

        $pesan = "Halo *$nama*,\n\n"
            . "Berikut ini adalah rincian tagihan air Anda:\n"
            . "🔢 No. Pengguna : *$noPengguna*\n"
            . "📅 Periode : *$tagihan->bulan $tagihan->tahun*\n"
            . "⏱ Meter Awal : *$tagihan->awal m³*\n"
            . "⏱ Meter Akhir : *$tagihan->akhir m³*\n"
            . "💧 Pemakaian : *$tagihan->jumlah m³*\n"
            . "💸 Tarif per m³ : *Rp " . number_format($tagihan->tarif, 0, ',', '.') . "*\n"
            . "📦 Biaya Abonemen : *Rp " . number_format($tagihan->abonemen, 0, ',', '.') . "*\n"
            . "💰 *Total Tagihan yang Harus Dibayarkan:* *Rp " . number_format($tagihan->tagihan, 0, ',', '.') . "*\n\n"
            . "Mohon untuk melakukan pembayaran sebelum tanggal 7 $bulan guna menghindari denda keterlambatan.\n\n"
            . "Catatan: Ini adalah *pesan uji coba (testing)* melalui WhatsApp.\nTerima kasih atas perhatian Anda.";



        // Kirim ke API Fonnte via cURL
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.fonnte.com/send',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => array(
                'target' => $noWa,
                'message' => $pesan,
                'countryCode' => '62', // jika nomor diawali 08
            ),
            CURLOPT_HTTPHEADER => array(
                'Authorization: ' . env('FONNTE_TOKEN') // Pastikan sudah di .env
            ),
        ));

        $response = curl_exec($curl);
        if (curl_errno($curl)) {
            $error_msg = curl_error($curl);
        }
        curl_close($curl);

        if (isset($error_msg)) {
            return back()->with('error', 'Gagal mengirim pesan: ' . $error_msg);
        }

        return back()->with('success', 'Pesan berhasil dikirim ke WhatsApp!');
    }

    public function kirimPesanBanyak()
    {
        $tagihanList = Tagihan::with('pengguna')->where('status', 'Belum Lunas')->get();

        $gagal = [];
        foreach ($tagihanList as $tagihan) {
            $noPengguna = $tagihan->pengguna->id;
            $nama = $tagihan->pengguna->nama;
            $noWa = $tagihan->pengguna->no_hp;
            $bulan = $tagihan->bulan;

            $pesan = "Halo *$nama*,\n\n"
                . "Berikut ini adalah rincian tagihan air Anda:\n"
                . "🔢 No. Pengguna : *$noPengguna*\n"
                . "📅 Periode : *$tagihan->bulan $tagihan->tahun*\n"
                . "⏱ Meter Awal : *$tagihan->awal m³*\n"
                . "⏱ Meter Akhir : *$tagihan->akhir m³*\n"
                . "💧 Pemakaian : *$tagihan->jumlah m³*\n"
                . "💸 Tarif per m³ : *Rp " . number_format($tagihan->tarif, 0, ',', '.') . "*\n"
                . "📦 Biaya Abonemen : *Rp " . number_format($tagihan->abonemen, 0, ',', '.') . "*\n"
                . "💰 *Total Tagihan yang Harus Dibayarkan:* *Rp " . number_format($tagihan->tagihan, 0, ',', '.') . "*\n\n"
                . "Mohon untuk melakukan pembayaran sebelum tanggal 7 $bulan guna menghindari denda keterlambatan.\n\n"
                . "Catatan: Ini adalah *pesan uji coba (testing)* melalui WhatsApp.\nTerima kasih atas perhatian Anda.";


            // Kirim pesan via cURL
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => 'https://api.fonnte.com/send',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => array(
                    'target' => $noWa,
                    'message' => $pesan,
                    'countryCode' => '62',
                ),
                CURLOPT_HTTPHEADER => array(
                    'Authorization: ' . env('FONNTE_TOKEN'),
                ),
            ));

            $response = curl_exec($curl);
            if (curl_errno($curl) || !$response) {
                $gagal[] = $nama . " ($noWa)";
            }

            curl_close($curl);
        }

        if (count($gagal) > 0) {
            return back()->with('error', 'Beberapa pesan gagal dikirim: ' . implode(', ', $gagal));
        }

        return back()->with('success', 'Semua pesan berhasil dikirim ke pengguna yang belum lunas!');
    }

    public function getDataTerakhir($pengguna_id)
    {
        $bulanList = [
            1 => 'Januari',
            2 => 'Februari',
            3 => 'Maret',
            4 => 'April',
            5 => 'Mei',
            6 => 'Juni',
            7 => 'Juli',
            8 => 'Agustus',
            9 => 'September',
            10 => 'Oktober',
            11 => 'November',
            12 => 'Desember'
        ];

        $lastTagihan = Tagihan::where('pengguna_id', $pengguna_id)
            ->orderByDesc('tahun')
            ->orderByDesc(Tagihan::raw("FIELD(bulan, '" . implode("','", $bulanList) . "')"))
            ->first();

        if (!$lastTagihan) {
            return response()->json([
                'meter_akhir' => 0,
                'bulan' => null,
                'tahun' => null,
            ]);
        }

        // Cari bulan dan tahun berikutnya
        $bulanAngka = array_search($lastTagihan->bulan, $bulanList);
        $tahun = $lastTagihan->tahun;

        if ($bulanAngka == 12) {
            $bulanAngka = 1;
            $tahun += 1;
        } else {
            $bulanAngka += 1;
        }

        $bulanBerikut = $bulanList[$bulanAngka];

        return response()->json([
            'meter_akhir' => $lastTagihan->akhir,
            'bulan' => $bulanBerikut,
            'tahun' => $tahun,
        ]);
    }
}
