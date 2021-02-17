<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AbsenController;
use Illuminate\Support\Facades\Route;
use App\Http\controllers\AppController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\MatkulController;
use App\Http\Controllers\JadwalController;
use App\Http\Controllers\KontrakMataKuliahController;
use App\Http\Controllers\SemesterController;



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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('', [DashboardController::class, 'index']);

Route::resources([
    'dashboard' => DashboardController::class,
    'absen' => AbsenController::class,
    'matkul' => MatkulController::class,
    'mahasiswa' => MahasiswaController::class,
    'jadwal' => JadwalController::class,
    'kontrak_matakuliah' => KontrakMataKuliahController::class,
    'semester' => SemesterController::class,

]);
