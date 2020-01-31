@extends('layout/main')
@section('title', 'Daftar Buku')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-9">
            <u>
                <h3 class="mt-3">List Buku</h3>
            </u>

            <a class="btn btn-sm btn-primary mb-2" href="/create">Tambah data buku</a>

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
                            <a href="/{{ $b->id }}" class="badge badge-primary">detail</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

        </div>
    </div>
</div>
@endsection