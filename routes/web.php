<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\ContactController;
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

Route::get('/hello-world', function () {
    return '<h1>Hello World</h1>';
});

Route::resource('/companies', CompanyController::class);

Route::get('/pegawai/{name}', [PegawaiController::class, 'show']);

Route::get('/contact', [ContactController::class, 'index']);
Route::post('/contact', [ContactController::class, 'store']);
