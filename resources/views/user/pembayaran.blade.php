@extends('layout/sbpengguna')

@section('main')
    <main class="app-main">
        <div class="app-content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <h3 class="mb-0">Pembayaran</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="app-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Halo {{ auth()->user()->nama }}, berikut riwayat pembayaran Anda</h3>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered align-middle">
                                        <thead>
                                            <tr class="text-center">
                                                <th>No</th>
                                                <th>Bulan</th>
                                                <th>Tahun</th>
                                                <th>Awal (m&sup3)</th>
                                                <th>Akhir (m&sup3)</th>
                                                <th>Tarif per meter</th>
                                                <th>Jumlah (m&sup3)</th>
                                                <th>Abonemen</th>
                                                <th>Tagihan</th>
                                                <th>Status</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse($tagihans as $tagihan)
                                                <tr class="text-center">
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $tagihan->bulan }}</td>
                                                    <td>{{ $tagihan->tahun }}</td>
                                                    <td>{{ $tagihan->awal }}</td>
                                                    <td>{{ $tagihan->akhir }}</td>
                                                    <td>Rp {{ number_format($tagihan->tarif, 0, ',', '.') }}</td>
                                                    <td>{{ $tagihan->jumlah }}</td>
                                                    <td>Rp {{ number_format($tagihan->abonemen, 0, ',', '.') }}</td>
                                                    <td>Rp {{ number_format($tagihan->tagihan, 0, ',', '.') }}</td>
                                                    <td>
                                                        <span
                                                            class="badge bg-{{ $tagihan->status == 'lunas' ? 'success' : 'danger' }}">
                                                            {{ ucfirst($tagihan->status) }}
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex gap-2 justify-content-center">
                                                            @if ($tagihan->status == 'lunas')
                                                                <a href="{{ route('nota.print', $tagihan->id) }}"
                                                                    class="btn btn-sm btn-primary">
                                                                    <i class="bi bi-printer"></i> Print Nota
                                                                </a>
                                                            @else
                                                                <a href="{{ route('pembayaran.viewBayar', ['id' => $tagihan->id]) }}"
                                                                    class="btn btn-sm btn-success">
                                                                    <i class="bi bi-cash-coin"></i> Bayar
                                                                </a>
                                                            @endif
                                                        </div>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="11" class="text-center">Tidak ada data pembayaran.</td>
                                                </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-3">
                                        {{ $tagihans->links('pagination::bootstrap-5') }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
