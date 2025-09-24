<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Laporan Tagihan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 40px;
        }

        .kop {
            display: flex;
            align-items: center;
            border-bottom: 2px solid #000;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }

        .kop img {
            max-width: 100px;
            height: auto;
            margin-right: 20px;
        }

        .kop-text {
            text-align: left;
        }

        .kop-text h1 {
            margin: 0;
            font-size: 18px;
            text-transform: uppercase;
        }

        .kop-text h2 {
            margin: 0;
            font-size: 14px;
            font-weight: normal;
        }

        h3 {
            text-align: center;
            margin-top: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th,
        td {
            border: 1px solid #000;
            padding: 6px;
            text-align: center;
        }

        th {
            background-color: #f0f0f0;
        }

        .footer {
            margin-top: 40px;
            font-size: 12px;
            text-align: right;
        }
    </style>
</head>

<body>

    <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px; padding-bottom: 10px;">
        <tr>
            <td style="width: 120px; vertical-align: middle; border: none;">
                <img src="{{ public_path('images/tb-logo.jpg') }}" alt="Logo"
                    style="max-width: 100px; height: auto; border: none;">
            </td>
            <td style="text-align: left; vertical-align: middle; border: none;">
                <h1 style="padding-left: 50; margin: 0; font-size: 18px; text-transform: uppercase;">PAMSIMAS DESA GARON
                </h1>
                <h2 style="padding-left: 40; margin: 0; font-size: 14px; font-weight: normal;">Kecamatan Garon, Kabupaten
                    Magetan</h2>
            </td>
        </tr>
    </table>





    <h3>Laporan Tagihan Pengguna</h3>

    <table>
        <thead>
            <tr>
                <th>No.</th>
                <th>No. Pengguna</th>
                <th>Nama</th>
                <th>Bulan</th>
                <th>Tahun</th>
                <th>Awal (m&sup3;)</th>
                <th>Akhir (m&sup3;)</th>
                <th>Jumlah (m&sup3;)</th>
                <th>Tarif (Rp/m&sup3;)</th>
                <th>Abonemen (Rp)</th>
                <th>Total Tagihan (Rp)</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($tagihans as $index => $tagihan)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $tagihan->pengguna->id }}</td>
                    <td>{{ $tagihan->pengguna->nama }}</td>
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
            @endforeach
        </tbody>
        <tfoot>
            <tr>
                <th colspan="7" style="text-align:right">Total</th>
                <th>{{ $totalJumlah }}</th>
                <th colspan="2"></th>
                <th>{{ number_format($totalTagihan, 0, ',', '.') }}</th>
                <th></th>
            </tr>
        </tfoot>
    </table>

    <div class="footer">
        <p>Dicetak pada: {{ \Carbon\Carbon::now()->translatedFormat('d F Y') }}</p>
        <p>Dicetak oleh: {{ $adminName }}</p>
    </div>
</body>

</html>
