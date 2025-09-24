@extends('layout/sbadmin')

@section('main')
    <main class="app-main">
        <div class="app-content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="mb-0">Edit Tagihan</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="app-content">
            <div class="container-fluid">
                <div class="row g-4">
                    <div class="col-md-12">
                        <div class="card card-primary card-outline mb-4">
                            <div class="card-header">
                                <div class="card-title">Formulir Edit Tagihan</div>
                            </div>
                            <form action="{{ route('tagihan.update', $tagihan->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="card-body">
                                    <div class="mb-3 position-relative">
                                        <label for="pengguna_search" class="form-label">Pengguna</label>
                                        <input type="text"
                                            class="form-control @error('pengguna_id') is-invalid @enderror"
                                            id="pengguna_search" placeholder="Ketik nama pengguna..." autocomplete="off"
                                            value="{{ old('pengguna_id') ? ($penggunas->firstWhere('id', old('pengguna_id'))->id ?? '') . ' | ' . ($penggunas->firstWhere('id', old('pengguna_id'))->nama ?? '') : ($tagihan->pengguna_id ? $tagihan->pengguna->id . ' | ' . $tagihan->pengguna->nama : '') }}">

                                        <input type="hidden" name="pengguna_id" id="pengguna_id"
                                            value="{{ old('pengguna_id', $tagihan->pengguna_id) }}">

                                        <div id="pengguna_list" class="list-group position-absolute w-100"
                                            style="z-index: 10;"></div>

                                        @error('pengguna_id')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3">
                                        <label for="bulan" class="form-label">Bulan</label>
                                        <select class="form-control @error('bulan') is-invalid @enderror" id="bulan"
                                            name="bulan">
                                            <option value="">-- Pilih Bulan --</option>
                                            @foreach (['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'] as $bulan)
                                                <option value="{{ $bulan }}"
                                                    {{ old('bulan', $tagihan->bulan) == $bulan ? 'selected' : '' }}>
                                                    {{ $bulan }}</option>
                                            @endforeach
                                        </select>
                                        @error('bulan')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label for="tahun" class="form-label">Tahun</label>
                                        <input type="number" name="tahun" id="tahun"
                                            class="form-control @error('tahun') is-invalid @enderror"
                                            value="{{ old('tahun', $tagihan->tahun) }}">
                                        @error('tahun')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label for="awal" class="form-label">Meter Awal (m³)</label>
                                        <input type="number" name="awal" id="awal"
                                            class="form-control @error('awal') is-invalid @enderror"
                                            value="{{ old('awal', $tagihan->awal) }}">
                                        @error('awal')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label for="akhir" class="form-label">Meter Akhir (m³)</label>
                                        <input type="number" name="akhir" id="akhir"
                                            class="form-control @error('akhir') is-invalid @enderror"
                                            value="{{ old('akhir', $tagihan->akhir) }}">
                                        @error('akhir')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label for="jumlah" class="form-label">Jumlah (m³)</label>
                                        <input type="number" id="jumlah" name="jumlah" class="form-control"
                                            value="{{ old('jumlah', $tagihan->jumlah) }}" readonly>
                                    </div>

                                    <div class="mb-3">
                                        <label for="tarif" class="form-label">Tarif per m³</label>
                                        <input type="number" id="tarif" name="tarif" class="form-control"
                                            value="{{ old('tarif', $tagihan->tarif) }}" readonly>
                                    </div>

                                    <div class="mb-3">
                                        <label for="abonemen" class="form-label">Abonemen</label>
                                        <input type="number" id="abonemen" name="abonemen" class="form-control"
                                            value="{{ old('abonemen', $tagihan->abonemen) }}" readonly>
                                    </div>

                                    <div class="mb-3">
                                        <label for="tagihan" class="form-label">Total Tagihan</label>
                                        <input type="number" id="tagihan" name="tagihan" class="form-control"
                                            value="{{ old('tagihan', $tagihan->tagihan) }}" readonly>
                                    </div>

                                    <div class="mb-3">
                                        <label for="status" class="form-label">Status Pembayaran</label>
                                        <select class="form-control @error('status') is-invalid @enderror" name="status"
                                            id="status">
                                            <option value="">-- Pilih Status --</option>
                                            <option value="lunas"
                                                {{ old('status', $tagihan->status) == 'lunas' ? 'selected' : '' }}>Lunas
                                            </option>
                                            <option value="belum lunas"
                                                {{ old('status', $tagihan->status) == 'belum lunas' ? 'selected' : '' }}>
                                                Belum Lunas</option>
                                        </select>
                                        @error('status')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="card-footer d-flex justify-content-end gap-2">
                                    <a href="{{ url()->previous() }}" class="btn btn-secondary">Kembali</a>
                                    <button type="submit" class="btn btn-primary">Perbarui</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const awal = document.getElementById('awal');
            const akhir = document.getElementById('akhir');
            const jumlah = document.getElementById('jumlah');
            const tarif = document.getElementById('tarif');
            const abonemen = document.getElementById('abonemen');
            const tagihan = document.getElementById('tagihan');

            function hitung() {
                const a = parseInt(awal.value) || 0;
                const b = parseInt(akhir.value) || 0;
                const j = Math.max(b - a, 0);
                jumlah.value = j;
                const t = parseInt(tarif.value);
                const ab = parseInt(abonemen.value);
                tagihan.value = (j * t) + ab;
            }

            awal.addEventListener('input', hitung);
            akhir.addEventListener('input', hitung);
            tarif.addEventListener('change', hitung);
            abonemen.addEventListener('change', hitung);

            hitung(); // jalankan sekali saat halaman pertama dibuka
        });
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const penggunaSearch = document.getElementById('pengguna_search');
            const penggunaList = document.getElementById('pengguna_list');
            const hiddenInput = document.getElementById('pengguna_id');

            const penggunaData = @json($penggunas);

            penggunaSearch.addEventListener('input', function() {
                const keyword = this.value.toLowerCase();
                penggunaList.innerHTML = '';

                if (keyword.length === 0) {
                    penggunaList.style.display = 'none';
                    return;
                }

                const filtered = penggunaData.filter(p => p.nama.toLowerCase().includes(keyword));

                if (filtered.length > 0) {
                    filtered.forEach(p => {
                        const item = document.createElement('button');
                        item.type = 'button';
                        item.className = 'list-group-item list-group-item-action';
                        item.textContent = `${p.id} | ${p.nama}`;
                        item.addEventListener('click', function() {
                            penggunaSearch.value = `${p.id} | ${p.nama}`;
                            hiddenInput.value = p.id;
                            penggunaList.innerHTML = '';
                            penggunaList.style.display = 'none';
                        });
                        penggunaList.appendChild(item);
                    });
                    penggunaList.style.display = 'block';
                } else {
                    penggunaList.style.display = 'none';
                }
            });

            document.addEventListener('click', function(e) {
                if (!penggunaList.contains(e.target) && e.target !== penggunaSearch) {
                    penggunaList.innerHTML = '';
                    penggunaList.style.display = 'none';
                }
            });
        });
    </script>
@endsection
