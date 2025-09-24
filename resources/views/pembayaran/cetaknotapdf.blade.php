<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Nota Pembayaran</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
        }

        .judul {
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .tabel {
            width: 100%;
            border-collapse: collapse;
        }

        .tabel td {
            padding: 4px;
        }

        .footer {
            margin-top: 20px;
            font-size: 11px;
        }
    </style>
</head>

<body>
    <div class="judul">Nota Pembayaran Air PAMSIMAS</div>

    <table class="tabel">
        <tr>
            <td>Nama</td>
            <td>: {{ $tagihan->pengguna->nama }}</td>
        </tr>
        <tr>
            <td>No. Pengguna</td>
            <td>: {{ $tagihan->pengguna->id }}</td>
        </tr>
        <tr>
            <td>Bulan/Tahun</td>
            <td>: {{ $tagihan->bulan }} {{ $tagihan->tahun }}</td>
        </tr>
        <tr>
            <td>Meter Awal</td>
            <td>: {{ $tagihan->awal }} m³</td>
        </tr>
        <tr>
            <td>Meter Akhir</td>
            <td>: {{ $tagihan->akhir }} m³</td>
        </tr>
        <tr>
            <td>Jumlah Pakai</td>
            <td>: {{ $tagihan->jumlah }} m³</td>
        </tr>
        <tr>
            <td>Tarif /m³</td>
            <td>: Rp{{ number_format($tagihan->tarif, 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td>Abonemen</td>
            <td>: Rp{{ number_format($tagihan->abonemen, 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td><strong>Total Tagihan</strong></td>
            <td>: <strong>Rp{{ number_format($tagihan->tagihan, 0, ',', '.') }}</strong></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>: {{ ucfirst($tagihan->status) }}</td>
        </tr>
    </table>

    <div class="footer">
        <br>
        Dicetak pada: {{ now()->format('d-m-Y') }}<br>
        Terima kasih telah melakukan pembayaran dengan tertib.
    </div>
</body>

</html>
