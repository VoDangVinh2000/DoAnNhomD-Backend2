<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompaniesController;
use App\Http\Controllers\TrainerController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\CustomAuthController;
use App\Models\Companies;

Route::get('/', function () {
    return view('welcome');
});
Route::get('companies',[CompaniesController::class,'getCompanies'])->name('companies')->middleware('per_page');
Route::get('companies',[CompaniesController::class,'index'])->name('companies');
Route::get('trainers',[TrainerController::class,'getTrainer'])->middleware('per_page');
Route::get('search',[SearchController::class,'search'])->middleware('per_page');
Route::fallback(function(){
    return 'Not found';
});
Route::get('category',[CategoriesController::class,'getCategory'])->middleware('per_page');
//Crud companies
Route::post('add-companies',[CompaniesController::class,'addCompanies'])->name('addCompanies');
Route::post('edit-companies',[CompaniesController::class,'editCompanies'])->name('editCompanies');
 Route::get('companies-sort',[CompaniesController::class,'sortID'])->name('sortCompanies');
// Route:
//authentication
Route::get('dashboard', [CustomAuthController::class, 'dashboard']);
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom');
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom');
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');
