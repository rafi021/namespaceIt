<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EmployerController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\JobsController;
use Illuminate\Support\Facades\Route;

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

Route::get('/',[FrontendController::class, 'index'])->name('home');


Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

// Jobs Routes
Route::get('/job-list',[JobsController::class, 'index'])->name('job.index');
Route::get('/job/{jobs}',[JobsController::class, 'show'])->name('job.show');
// Employer Routes
Route::get('/employer/{employer}',[EmployerController::class, 'show'])->name('employer.show');
Route::get('/employers',[EmployerController::class, 'index'])->name('employer.index');