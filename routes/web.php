<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\DashboardController;
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
    return view('super_admin.login');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

Route::middleware(['role:admin'])->group(function(){
    Route::get('/dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
    Route::view('boostrap-modal','super_admin/layout');

        Route::view('budget','livewire.budget.expense_layout')->name('budget');
        Route::view('stocks','livewire.stocks.stocks_layout')->name('stocks');
        Route::view('components', 'livewire.electronics.components_layout')->name('component');
        Route::view('bills', 'livewire.electronics.bills_layout')->name('bills');
    });
    
    Route::group(['middleware' => 'role:user'], function(){
        Route::get('/profile', function () {
                return view('profile.show');
            })->name('profile');
    });
});
