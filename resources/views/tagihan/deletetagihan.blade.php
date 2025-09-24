<!-- Modal -->
<div class="modal fade" id="deleteTagihanModal-{{ $tagihan->id }}" tabindex="-1" aria-labelledby="deleteTagihanLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <form action="/tagihan/{{ $tagihan->id }}" method="post">
            @csrf
            @method('DELETE')
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="deleteTagihanLabel">Konfirmasi Hapus</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <span>Apakah Anda Yakin Untuk Menghapus Data Ini?</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">Tidak</button>
                    <button type="submit" class="btn btn-outline-danger">Ya, Hapus!</button>
                </div>
            </div>
        </form>
    </div>
</div>
