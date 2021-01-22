@extends('layout/main')

@section('title', 'Daftar Buku')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-md">
            <u>
                <h3 class="mt-3">Daftar Buku</h3>
            </u>

            <a class="btn btn-primary mb-2" href="/daftar/create">Tambah data buku</a>
            <a class="btn btn-warning mb-2" href="/daftar/export_excel">Export</a>
            <button type="button" class="btn btn-danger mb-2" data-toggle="modal" data-target="#importExcel">
            Import Excel
            </button>
            <form class="form-inline my-2 my-lg-0 float-right" method="post" action="{{ route('/daftar/searching') }}">
                @csrf
                <input name="search" id="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
            </form>

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
                            <a href="daftar/{{ $b->id }}" class="badge badge-primary">detail</a>
                            <a href="daftar/{{ $b->id }}" class="badge badge-info">pinjam</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="d-block col-12 mt-3">
                {{ $books->links() }}
            </div>

        </div>
    </div>
</div>

<!-- Import Excel -->
<div class="modal fade" id="importExcel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form method="post" action="/daftar/import_excel" enctype="multipart/form-data">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Import Excel</h5>
                </div>
                <div class="modal-body">

                    {{ csrf_field() }}

                    <label>Pilih file excel</label>
                    <div class="form-group">
                        <input type="file" name="file" required="required">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Import</button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection