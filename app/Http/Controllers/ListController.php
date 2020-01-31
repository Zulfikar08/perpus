<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;

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
        $books = Book::all();
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
            'no_induk' => 'required|size:10',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'jenis_buku' => 'required'
        ]);

        Book::create($request->all());
        return redirect('/')->with('status', 'Data buku berhasil ditambahkan!');
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
            'no_induk' => 'required|size:10',
            'pengarang' => 'required',
            'penerbit' => 'required',
            'jenis_buku' => 'required'
        ]);
        
        Book::where('id', $book->id)
            ->update([
                'judul_buku' => $request->judul_buku,
                'no_induk' => $request->no_induk,
                'pengarang' => $request->pengarang,
                'penerbit' => $request->penerbit,
                'jenis_buku' => $request->jenis_buku
            ]);
        return redirect('/')->with('status', 'Data buku berhasil diubah!');
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
        return redirect('/')->with('status', 'Data buku berhasil dihapus!');
    }
}
