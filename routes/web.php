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

Route::get('/', 'ListController@index');
Route::get('/create', 'ListController@create');
Route::get('/{book}', 'ListController@show');
Route::post('/', 'ListController@store');
Route::delete('/{book}', 'ListController@destroy');
Route::get('/{book}/edit', 'ListController@edit');
Route::patch('/{book}', 'ListController@update');
// Route::resource('/', 'ListController');

Route::get('/pinjaman', 'PagesController@pinjaman');
