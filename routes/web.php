<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\{
    DashboardController, PrathibhaController,StockController
};
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
    // Route::get('/dashboard', function () {
    //     return view('super_admin.dashboard');
    // })->name('dashboard');
    Route::get('/dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
});

Route::middleware(['admin:admin'])->group(function(){
    // Route::get('/admin-dashboard', [DashboardController::class, 'dashboard'])->name('admin_dashboard');
    Route::view('boostrap-modal','super_admin/layout');

    Route::view('budget','livewire.budget.expense_layout')->name('budget');
    Route::view('stocks','livewire.stocks.stocks_layout')->name('stocks');
    Route::view('components', 'livewire.electronics.components_layout')->name('component');
    Route::view('bills', 'livewire.electronics.bills_layout')->name('bills');
    Route::view('actions', 'livewire.actions.items_layout')->name('actions');
    Route::view('to_do_list', 'livewire.to_do_list.list')->name('to_do_list');
    Route::get('/stock_analysis', [StockController::class, 'stock_analysis'])->name('stock_analysis');
});

// ROUTE SET FOR PRATHIBHA
Route::get('/prathibha', [PrathibhaController::class, 'prathibha'])->name('prathibha');
Route::get('/prathibha_2022', [PrathibhaController::class, 'prathibha_2022'])->name('prathibha_2022');
Route::POST('/program_store', [PrathibhaController::class, 'program_store'])->name('program_store');
Route::GET('/program_edit/{id}', [PrathibhaController::class, 'program_edit'])->name('program_edit');
Route::POST('/program_update', [PrathibhaController::class, 'program_update'])->name('program_update');
Route::GET('/program_delete/{id}', [PrathibhaController::class, 'program_delete'])->name('program_delete');
