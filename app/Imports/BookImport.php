<?php

namespace App\Imports;

use App\Book;
use Maatwebsite\Excel\Concerns\ToModel;

class BookImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        
        return new Book([
            'judul_buku' => $row['0'],
            'isbn' => $row['1'],
            'pengarang' => $row['2'],
            'penerbit' => $row['3'],
            'jenis_buku' => $row['4']
        ]);
    }
}
