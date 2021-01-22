<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use SoftDeletes;
    //
    protected $fillable = ['judul_buku', 'isbn', 'pengarang', 'penerbit', 'jenis_buku'];
}
