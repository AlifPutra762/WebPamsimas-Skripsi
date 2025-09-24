@extends('layout/sbpengguna')

@section('main')
    <main class="app-main">
        <div class="app-content-header py-4 bg-light border-bottom mb-4">
            <div class="container-fluid">
                <h3 class="mb-1">Petunjuk Pembayaran</h3>
                <p class="text-muted">Halo <strong>{{ auth()->user()->nama }}</strong>, silakan pilih salah satu metode
                    berikut untuk melakukan pembayaran tagihan Anda.</p>
            </div>
            <div class="container-fluid mb-4">
                <div class="alert alert-info">
                    <h5 class="mb-1">Total Tagihan Anda</h5>
                    <p class="mb-0 fs-5 fw-bold">Rp {{ number_format($tagihan->tagihan, 0, ',', '.') }}</p>
                </div>
            </div>
            <!-- Pesan Warning -->
            <div class="container-fluid">
                <div class="alert alert-warning">
                    <i class="bi bi-exclamation-triangle-fill me-2"></i>
                    <strong>Perhatian!</strong> Jangan melakukan transaksi secara real karena ini hanya testing.
                    Jika Anda melakukan transaksi, uang Anda tidak akan kembali!!
                </div>
            </div>
        </div>
        <div class="app-content">
            <div class="container-fluid d-grid gap-4">

                {{-- Step 1: QRIS --}}
                <section class="p-4 bg-white shadow-sm rounded border-start border-4 border-primary">
                    <h5 class="mb-2">
                        <i class="bi bi-qr-code-scan me-2 text-primary"></i>1. Pembayaran melalui QRIS
                    </h5>
                    <p>Langkah-Langkah Pembayaran Melalui QRIS</p>
                    <p>1. Scan QR code berikut menggunakan aplikasi e-wallet Anda (GoPay, OVO, Dana, dll)</p>
                    <p>2. Isikan nominal Pembayaran sesuai nominal yang harus dibayarkan</p>
                    <p>3. Bayar tagihannya</p>
                    <p>4. Screenshot resi/ bukti pembayaran dan kirim ke Mas Puji</p>

                    <div class="text-center mb-3">
                        <img src="{{ asset('images/qris.jpg') }}" alt="QRIS" class="img-thumbnail"
                            style="max-width: 250px;">
                    </div>

                    <div class="text-center">
                        <a href="https://wa.me/6282133085243?text=Halo%20Mas%20Puji,%20saya%20ingin%20mengirimkan%20bukti%20pembayaran%20PAMSIMAS%20melalui%20QRIS."
                            target="_blank" class="btn btn-success">
                            <i class="bi bi-whatsapp me-1"></i> Kirim Bukti Pembayaran
                        </a>
                    </div>
                </section>


                {{-- Step 2: Bank Transfer --}}
                <section class="p-4 bg-white shadow-sm rounded border-start border-4 border-success">
                    <h5 class="mb-2"><i class="bi bi-bank me-2 text-success"></i>2. Pembayaran melalui Bank Transfer</h5>
                    <p>Transfer ke rekening berikut sesuai jumlah tagihan Anda:</p>
                    <ul class="mb-2">
                        <li><strong>Bank</strong>: Mandiri</li>
                        <li><strong>No. Rekening</strong>: 1710014623378</li>
                        <li><strong>Atas Nama</strong>: ALIF RAHMAT YUDHA PUTRA</li>
                    </ul>
                    <p>Setelah melakukan transfer, harap simpan bukti pembayaran dan konfirmasi kepada petugas.</p>
                    <div class="text-center">
                        <a href="https://wa.me/6282133085243?text=Halo%20Mas%20Puji,%20saya%20ingin%20mengirimkan%20bukti%20pembayaran%20PAMSIMAS%20melalui%20Bank%20Transfer."
                            target="_blank" class="btn btn-success">
                            <i class="bi bi-whatsapp me-1"></i> Kirim Bukti Pembayaran
                        </a>
                    </div>
                </section>

                {{-- Step 3: Pembayaran Offline --}}
                <section class="p-4 bg-white shadow-sm rounded border-start border-4 border-warning">
                    <h5 class="mb-2"><i class="bi bi-geo-alt-fill me-2 text-warning"></i>3. Pembayaran Offline</h5>
                    <p>Lakukan pembayaran langsung ke kantor kami:</p>
                    <ul class="mb-2">
                        <li><strong>Jam Operasional</strong>: Senin–Jumat 08.00–16.00, Sabtu 08.00–12.00</li>
                        <li><strong>Alamat</strong>: Ds. Garon RT 03 RW 02 Kec. Kawedanan Kab. Magetan</li>
                    </ul>
                </section>

            </div>
        </div>
    </main>
@endsection
