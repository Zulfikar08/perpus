@extends('layout/main')
@section('title', 'Tambah data buku')

@section('container')
<div class="container">
    <div class="row">
        <div class="col-6">
            <h3 class="mt-3"></h3>

            <u>
                <h3 class="mt-3">Tambah data</h3>
            </u>

            <form method="POST" action="/daftar">
                @csrf
                <div class="form-group">
                    <label for="judul_buku">Judul buku</label>
                    <input type="text" class="form-control @error ('judul_buku') is-invalid @enderror" id="judul_buku" name="judul_buku" placeholder="Masukan judul buku" value="{{ old('judul_buku') }}">
                    @error('judul_buku')
                    <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="isbn">No isbn</label>
                    <input type="text" class="form-control @error ('isbn') is-invalid @enderror" id="isbn" name="isbn" placeholder="Masukan No induk buku" value="{{ old('isbn') }}">
                    @error('isbn')
                    <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="pengarang">Pengarang</label>
                    <input type="text" class="form-control @error ('pengarang') is-invalid @enderror" id="pengarang" name="pengarang" placeholder="Masukan pengarang" value="{{ old('pengarang') }}"> 
                    @error('pengarang')
                    <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="penerbit">Penerbit</label>
                    <input type="text" class="form-control @error ('penerbit') is-invalid @enderror" id="penerbit" name="penerbit" placeholder="Masukan penerbit" value="{{ old('penerbit') }}">
                    @error('penerbit')
                    <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="jenis_buku">Jenis buku</label>
                    <input type="text" class="form-control @error ('jenis_buku') is-invalid @enderror" id="jenis_buku" name="jenis_buku" placeholder="Masukan jenis buku" value="{{ old('jenis_buku') }}">
                    @error('jenis_buku')
                    <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <a href="/daftar" class="btn btn-sm btn-primary float-left">Back!</a>
                <button type="submit" class="btn btn-sm btn-success float-right">Tambahkan!</button>
            </form>

        </div>
    </div>
</div>
@endsection