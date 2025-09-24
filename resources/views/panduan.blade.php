<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/png" href="{{ asset('images/tb-logo.jpg') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PAMSIMAS - Sistem Pembayaran</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>

<body class="bg-gray-50 text-gray-800">
    <!-- Header -->
    <header class="bg-white shadow">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold text-blue-600">PAMSIMAS</h1>
            <nav class="space-x-4">
                <a href="#panduan" class="text-gray-700 hover:text-blue-600">Panduan</a>
                <a href="/login" class="text-white bg-blue-600 px-4 py-2 rounded hover:bg-blue-700">Login</a>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="text-center py-16 bg-blue-100">
        <h2 class="text-3xl font-bold mb-4">Selamat Datang di Sistem Pembayaran PAMSIMAS</h2>
        <p class="text-lg text-gray-700">Mudah, cepat, dan transparan dalam pengelolaan tagihan air desa.</p>
    </section>

    <!-- Panduan Section -->
    <section id="panduan" class="py-16 container mx-auto px-4">
        <h3 class="text-2xl font-semibold text-center mb-10">Panduan Penggunaan</h3>
        <div class="grid md:grid-cols-2 gap-8">
            <!-- Video Panduan User -->
            <div class="space-y-4">
                <h4 class="text-xl font-medium">Panduan untuk Pengguna</h4>
                <div class="aspect-w-16 aspect-h-9">
                    <iframe class="w-full h-64" src="https://www.youtube.com/embed/VIDEO_ID_USER" title="Panduan User"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </div>
            </div>

            <!-- Video Panduan Admin -->
            <div class="space-y-4">
                <h4 class="text-xl font-medium">Panduan untuk Admin</h4>
                <div class="aspect-w-16 aspect-h-9">
                    <iframe class="w-full h-64" src="https://www.youtube.com/embed/VIDEO_ID_ADMIN" title="Panduan Admin"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>

        <!-- Tambahan Instruksi -->
        <div class="mt-12 text-center">
            <p class="text-lg text-gray-700">
                Setelah selesai menonton video panduan, silakan klik tombol <span
                    class="font-semibold text-blue-600">Login</span> yang berada di pojok kanan atas untuk masuk ke
                halaman login dan aplikasi PAMSIMAS.
            </p>
        </div>
    </section>
</body>

</html>
