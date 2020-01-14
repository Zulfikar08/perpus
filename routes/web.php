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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/belajar', function () {
    return view('belajar');
});

Route::get('/zulfikar', function () {
    return view('zulfikar');
});

Route::get('/about', function () {
    return view('about');
});
