<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompaniesController;
use App\Http\Controllers\TrainerController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\DeleteController;

Route::get('/', function () {
    return view('welcome');
});
Route::get('companies',[CompaniesController::class,'getCompanies'])->middleware('per_page');
Route::get('companies',[CompaniesController::class,'index']);
Route::get('trainers',[TrainerController::class,'getTrainer'])->middleware('per_page');
Route::get('search',[SearchController::class,'search'])->middleware('per_page');
Route::fallback(function(){
    return 'Not found';
});
Route::get('category',[CategoriesController::class,'getCategory']);


// Route:
//authentication
Route::get('dashboard', [CustomAuthController::class, 'dashboard']);
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom');
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom');
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');

//
Route::delete('companies/{id}', [DeleteController::class, 'destroy']);


