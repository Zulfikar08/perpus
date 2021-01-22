@extends('layout/main')

@section('title', 'Daftar Buku Dihapus')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-md">
            <u>
                <h3 class="mt-3">Daftar Buku Dihapus</h3>
            </u>

            <a class="btn btn-sm btn-primary mb-2" href="/daftar/restoreAll">Kembalikan semua Buku</a>
            <a class="btn btn-sm btn-danger mb-2" onclick="return confirm('Apakah anda yakin? semua data akan dihapus permanen!')" href="/daftar/burnAll">Bakar semua Buku</a>

            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
            @endif

            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">judul buku</th>
                        <th scope="col">aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach( $books as $b )
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $b->judul_buku }}</td>
                        <td>
                            <a href="/daftar/restore/{{ $b->id }}" class="badge badge-success">Kembalikan</a>
                            <a href="/daftar/burn/{{ $b->id }}" class="badge badge-danger" onclick="return confirm('Apakah anda yakin ingin menghapus permanen data ini?')">Hapus permanen</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

        </div>
    </div>
</div>
@endsection