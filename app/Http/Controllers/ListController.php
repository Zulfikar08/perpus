<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;

use App\Imports\BookImport;
use App\Exports\BookExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;

class ListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // $books = Book::all();
        // return view('buku/index')->with([
        //     'books' => Book::paginate(10) 
        // ]);

        $books = Book::orderBy('id', 'DESC')->paginate(10);
        return view('buku/index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('buku/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Cara Pertama
        // $book = new Book;
        // $book->judul_buku = $request->judul;
        // $book->no_induk = $request->no_induk;
        // $book->pengarang = $request->pengarang;
        // $book->penerbit = $request->penerbit;
        // $book->jenis_buku = $request->jenis;

        // $book->save();

        // Cara Kedua
        // Book::create([
        //     'judul_buku' => $request->judul,
        //     'no_induk' => $request->no_induk,
        //     'pengarang' => $request->pengarang,
        //     'penerbit' => $request->penerbit,
        //     'jenis_buku' => $request->jenis,
        // ]);

        $request->validate([
            'judul_buku' => 'required',
            'isbn' => 'required|max:13',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'jenis_buku' => 'required'
        ]);

        Book::create($request->all());
        return redirect('/daftar')->with('status', 'Data buku berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        //
        return view('buku/show', compact('book'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $book)
    {
        //
        return view('buku/edit', compact('book'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        //
        $request->validate([
            'judul_buku' => 'required',
            'isbn' => 'required|max:13',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'jenis_buku' => 'required'
        ]);
        
        Book::where('id', $book->id)
            ->update([
                'judul_buku' => $request->judul_buku,
                'isbn' => $request->isbn,
                'pengarang' => $request->pengarang,
                'penerbit' => $request->penerbit,
                'jenis_buku' => $request->jenis_buku
            ]);
        return redirect('/daftar')->with('status', 'Data buku berhasil diubah!');
    }

    public function search(Request $request)
    {           
        $search = $request->search;
        $books = Book::where('judul_buku','like',"%".$search."%" )->paginate(5);
        return view('buku/index', compact('books'));
    }

    public function export_excel()
    {
        return Excel::download(new BookExport, 'Daftar Buku'. date('d M Y'). '.xlsx');
    }

    public function import_excel(Request $request) 
    {
        // validasi
        $this->validate($request, [
            'file' => 'required|mimes:xlsx'
        ]);
 
        // menangkap file excel
        $file = $request->file('file');
 
        // membuat nama file unik
        $nama_file = rand().$file->getClientOriginalName();
 
        // upload ke folder file_siswa di dalam folder public
        $file->move('data_upload',$nama_file);
 
        // import data
        Excel::import(new BookImport, public_path('/data_upload/'.$nama_file));

        // notifikasi dengan keberhasilan
        return redirect('/daftar')->with('status', 'Data buku berhasil diimport!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        //
        Book::destroy($book->id);
        return redirect('/daftar')->with('status', 'Data buku berhasil dihapus!');
    }

    public function trash()
    {
        // Menampilkan data yang di SoftDelete
        $books = Book::onlyTrashed()->get();
        return view('buku/trash', ['books' => $books]);
    }

    public function restore($id)
    {
        // 
        $books = Book::onlyTrashed()->where('id',$id);
        $books->restore();
        return redirect('/daftar')->with('status', 'Data buku berhasil dikembalikan!');
    }

    public function restoreAll()
    {
        // 
        $books = Book::onlyTrashed();
        $books->restore();
        return redirect('/daftar/trash')->with('status', 'Semua data buku berhasil dikembalikan!');
    }

    public function burn($id)
    {
        // 
        $books = Book::onlyTrashed()->where('id',$id);
        $books->forceDelete();
        return redirect('/daftar/trash')->with('status', 'Data berhasil dihapus!');
    }

    public function burnAll()
    {
        // 
        $books = Book::onlyTrashed();
        $books->forceDelete();
        return redirect('/daftar/trash')->with('status', 'Semua data buku berhasil dihapus permanen!');
    }
}
