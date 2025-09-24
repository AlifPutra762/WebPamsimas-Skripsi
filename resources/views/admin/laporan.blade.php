@extends('layout/sbadmin')

@section('main')
    <!--begin::App Main-->
    <main class="app-main">
        <!--begin::App Content Header-->
        <div class="app-content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="mb-0">Laporan</h3>
                    </div>
                </div>
            </div>
        </div>
        <!--end::App Content Header-->
        <!--begin::App Content-->
        <div class="app-content">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-header py-2 px-3">
                        <div
                            class="d-flex flex-column flex-md-row align-items-start align-items-md-center justify-content-between gap-2">
                            <form method="GET" action="{{ route('laporan.index') }}"
                                class="d-flex flex-column flex-md-row align-items-start align-items-md-center gap-2 w-100">

                                <div class="w-100" style="max-width: 200px">
                                    <input type="text" name="nama" class="form-control form-control-sm w-100"
                                        placeholder="Cari nama pengguna" value="{{ request('nama') }}">
                                </div>

                                <div class="w-100" style="max-width: 160px">
                                    <select name="bulan" class="form-control form-control-sm w-100">
                                        <option value="">-- Pilih Bulan --</option>
                                        @php
                                            $daftarBulan = [
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
                                                'Desember',
                                            ];
                                        @endphp
                                        @foreach ($daftarBulan as $b)
                                            <option value="{{ $b }}"
                                                {{ request('bulan') == $b ? 'selected' : '' }}>
                                                {{ $b }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="w-100" style="max-width: 120px">
                                    <input type="text" name="tahun" class="form-control form-control-sm w-100"
                                        placeholder="Cari tahun" value="{{ request('tahun') }}">
                                </div>

                                <div class="col-auto d-flex align-items-center">
                                    <label for="limit" class="form-label me-2 mb-0">Data per halaman:</label>
                                    <select name="limit" id="limit" class="form-select form-select-sm w-auto"
                                        onchange="this.form.submit()">
                                        @foreach ([10, 25, 50, 100] as $limit)
                                            <option value="{{ $limit }}"
                                                {{ request('limit', 10) == $limit ? 'selected' : '' }}>
                                                {{ $limit }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>


                                <div class="d-flex gap-2 w-100 justify-content-start justify-content-md-start flex-wrap">
                                    <button type="submit" class="btn btn-sm btn-primary">Cari</button>
                                    <a href="{{ route('laporan.index') }}" class="btn btn-sm btn-secondary">Reset</a>
                                    <a href="{{ route('laporan.cetak', request()->all()) }}" target="_blank"
                                        class="btn btn-success btn-sm">Cetak PDF</a>
                                </div>
                            </form>
                        </div>
                    </div>


                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered align-middle text-center">
                                <thead class="table-light">
                                    <tr>
                                        <th>No.</th>
                                        <th>No. Pengguna</th>
                                        <th>Nama</th>
                                        <th>Bulan</th>
                                        <th>Tahun</th>
                                        <th>Awal (m&sup3;)</th>
                                        <th>Akhir (m&sup3;)</th>
                                        <th>Jumlah (m&sup3;)</th>
                                        <th>Tarif</th>
                                        <th>Abonemen</th>
                                        <th>Tagihan</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($tagihans as $index => $tagihan)
                                        <tr>
                                            <td>{{ $tagihans->firstItem() + $index }}</td>
                                            <td>{{ $tagihan->pengguna->id }}</td>
                                            <td class="text-start">{{ $tagihan->pengguna->nama }}</td>
                                            <td>{{ $tagihan->bulan }}</td>
                                            <td>{{ $tagihan->tahun }}</td>
                                            <td>{{ $tagihan->awal }}</td>
                                            <td>{{ $tagihan->akhir }}</td>
                                            <td>{{ $tagihan->jumlah }}</td>
                                            <td>{{ number_format($tagihan->tarif, 0, ',', '.') }}</td>
                                            <td>{{ number_format($tagihan->abonemen, 0, ',', '.') }}</td>
                                            <td>{{ number_format($tagihan->tagihan, 0, ',', '.') }}</td>
                                            <td>{{ $tagihan->status }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="12">Data tidak ditemukan.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex justify-content-end px-3">
                        {{ $tagihans->links('pagination::custom-bootstrap') }}
                    </div>
                </div>
            </div>
        </div>
        <!--end::App Content-->
    </main>
    <!--end::App Main-->
@endsection
