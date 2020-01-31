@extends('layout/main')
@section('title', 'Daftar Buku')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-6">
            <h3 class="mt-3"></h3>

            <u>
                <h3 class="mt-3">Detail buku</h3>
            </u>

            <table class="table">
                <tbody>
                    <tr>
                        <th scope="row">Judul buku</th>
                        <td><b>:</b> {{ $book->judul_buku }}</td>
                    </tr>
                    <tr>
                        <th scope="row">No induk</th>
                        <td><b>:</b> {{ $book->no_induk }}</td>
                    </tr>
                    <tr>
                        <th scope="row">Pengarang</th>
                        <td><b>:</b> {{ $book->pengarang }}</td>
                    </tr>
                    <tr>
                        <th scope="row">Penerbit</th>
                        <td><b>:</b> {{ $book->penerbit }}</td>
                    </tr>
                    <tr>
                        <th scope="row">Jenis buku</th>
                        <td><b>:</b> {{ $book->jenis_buku }}</td>
                    </tr>
                </tbody>
            </table>
            <a href="/" class="btn btn-sm btn-primary">kembali</a>

            <form action="{{ $book->id }}" method="POST">
                @method('delete')
                @csrf
                <button type="submit" class="btn btn-sm float-right btn-danger">hapus</button>
            </form>
            <a href="{{ $book->id }}/edit" class="btn btn-sm float-right btn-success mx-2">edit</a>
        </div>
    </div>
</div>
@endsection