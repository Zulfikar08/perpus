<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// 
Route::get('/', function () {
    return view('welcome');
});


// TRASH
Route::get('/daftar/trash', 'ListController@trash');
Route::get('/daftar/restore/{book}', 'ListController@restore');
Route::get('/daftar/restoreAll', 'ListController@restoreAll');
Route::get('/daftar/burn/{book}', 'ListController@burn');
Route::get('/daftar/burnAll', 'ListController@burnAll');

// SEARCH
Route::post('searching', 'ListController@search')->name('/daftar/searching');

// MENU PINJAMAN
Route::get('/pinjaman', 'BorrowsController@index');
Route::get('/pinjaman/create', 'BorrowsController@create');

// IMPORT DATA BUKU
Route::post('/daftar/import_excel', 'ListController@import_excel');

// EXPORT DATA BUKU
Route::get('/daftar/export_excel', 'ListController@export_excel');

// DAFTAR BUKU
Route::get('/search','ListController@search');
Route::get('/daftar', 'ListController@index');
Route::get('/daftar/create', 'ListController@create');
Route::get('/daftar/{book}', 'ListController@show');
Route::post('/daftar', 'ListController@store');
Route::delete('/daftar/{book}', 'ListController@destroy');
Route::get('/daftar/{book}/edit', 'ListController@edit');
Route::patch('/daftar/{book}', 'ListController@update');




