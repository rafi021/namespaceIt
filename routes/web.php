<?php

use App\Http\Controllers\ApplicantController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EmployerController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\JobsController;
use App\Models\Employer;
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
Route::post('/job/store', [JobsController::class, 'store'])->name('jobs.store');

// Employer Routes
Route::get('/employer/{employer}',[EmployerController::class, 'show'])->name('employer.show');
Route::get('/employers',[EmployerController::class, 'index'])->name('employer.index');
Route::get('/employers/dashboard', [EmployerController::class, 'dashboard'])->name('employer.dashboard');
Route::get('/employers/profile', [EmployerController::class, 'profile'])->name('employer.profile');
Route::put('/employers/update/{employer}', [EmployerController::class, 'update'])->name('employer.update');

Route::get('/employers/create-job-post', [EmployerController::class, 'createjobpost'])->name('employer.create-job-post');
Route::get('/employers/resume/download/{id}', [EmployerController::class, 'resumedownload'])->name('resume.download');
Route::get('/employers/cover/download/{id}', [EmployerController::class, 'coverdownload'])->name('cover.download');

// Applicant Routes
Route::get('/applicants/dashboard', [ApplicantController::class, 'dashboard'])->name('applicant.dashboard');
Route::get('/applicants/profile', [ApplicantController::class, 'profile'])->name('applicant.profile');
Route::post('/applicants/profile/photo/update/{applicant}', [ApplicantController::class, 'photoupdate'])->name('applicant.photoupdate');
Route::put('/applicants/update/{applicant}', [ApplicantController::class,'update'])->name('applicant.update');
Route::get('/application/submit/{jobs_id}', [ApplicantController::class, 'applicationsubmit'])->name('application.sbumit');