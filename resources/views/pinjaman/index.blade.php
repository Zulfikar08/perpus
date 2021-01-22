@extends('layout/main')
@section('title', 'Pinjaman Buku')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-10">
            <u>
                <h3 class="mt-3">Pinjaman Buku</h3>
            </u>

            <form class="form-inline">
              <div class="form-group mb-2">
                <div class="">
                  <input type="text" class="form-control" id="search" placeholder="Search...">
                </div>
              </div>
              <button type="submit" class="btn btn-primary ml-2 mb-2">Cari</button>
            </form>

            <table class="table table-hover">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nama Peminjam</th>
                  <th scope="col">Judul Buku</th>
                  <th scope="col">Kelas</th>
                  <th scope="col">Tanggal Pinjam</th>
                  <th scope="col">Tanggal Kembali</th>
                  <th scope="col">Aksi</th>
                </tr>
              </thead>
              <tbody>
                @foreach ( $borrows as $br )
                <tr>
                  <th scope="row">{{ $loop->iteration }}</th>
                  <td>{{ $br->nama_peminjam }}</td>
                  <td>{{ $br->judul_buku }}</td>
                  <td>{{ $br->kelas }}</td>
                  <td>{{ $br->tanggal_kembali }}</td>
                  <td>
                    <button class="btn btn-primary">Hehe</button>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>


        </div>
    </div>
</div>
@endsection