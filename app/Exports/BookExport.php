<?php

namespace App\Exports;

use App\Book;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class BookExport implements FromCollection, WithHeadings, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */

    public function headings(): array
    {
        return [
            'Judul',
            'No ISBN',
            'Penulis',
            'Penerbit',
            'Jenis Buku',
        ];
    }

	public function collection()
    {
        return Book::get(['judul_buku', 'isbn', 'pengarang', 'penerbit', 'jenis_buku']);
    }
}
