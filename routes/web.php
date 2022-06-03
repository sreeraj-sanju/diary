<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExpenseController;
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

Route::get('/superAdmin', function () {
    return view('super_admin/dashboard');
});

Route::resources([
    'stocks' => StockController::class,
    'ExpenseName' => ExpenseController::class,
]);

Route::view('boostrap-modal','super_admin/layout');

Route::view('budget','livewire.budget.expense_layout')->name('budget');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
