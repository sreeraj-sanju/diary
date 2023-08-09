<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PrathibhaController;
use App\Http\Controllers\StockController;
use App\Http\Controllers\SettingsController;
use App\Http\Controllers\ReportController;
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

Route::get('/', function () {
    return view('super_admin.login');
})->name('lo');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    // Route::get('/dashboard', function () {
    //     return view('super_admin.dashboard');
    // })->name('dashboard');

    Route::middleware(['auth', 'admin:admin'])->group(function () {
        Route::get('/admin/dashboard', [DashboardController::class, 'dashboard'])->name('admin_dashboard');
        Route::view('boostrap-modal', 'super_admin/layout');

        Route::view('budget', 'livewire.budget.expense_layout')->name('budget');
        Route::view('stocks', 'livewire.stocks.stocks_layout')->name('stocks');
        Route::view('components', 'livewire.electronics.components_layout')->name('component');
        Route::view('bills', 'livewire.electronics.bills_layout')->name('bills');
        Route::view('actions', 'livewire.actions.items_layout')->name('actions');
        Route::view('to_do_list', 'livewire.to_do_list.list')->name('to_do_list');
        Route::view('trading_list', 'livewire.trading.trading')->name('trading');

        Route::get('/stock_analysis', [StockController::class, 'stock_analysis'])->name('stock_analysis');
        Route::get('/edit_settings', [SettingsController::class, 'edit_settings'])->name('edit_settings');
        Route::post('/update_settings', [SettingsController::class, 'update_settings'])->name('update_settings');
        Route::GET('/toggle_active', [StockController::class, 'toggle_active'])->name('toggle_active');
        Route::GET('/reports_index',[ReportController::class, 'reports_index'])->name('reports');
    });

    Route::middleware(['auth', 'usercheck:user'])->group(function () {
        Route::get('/dashboard', function () {
            return view('profile.show');
        })->name('dashboard');
    });
});

Route::get('/session_out', [SettingsController::class, 'sessionOut'])->name('sessionOut');

// ROUTE SET FOR PRATHIBHA
Route::get('/prathibhaList', [PrathibhaController::class, 'prathibha'])->name('prathibha');
Route::get('/prathibha_2022', [PrathibhaController::class, 'prathibha_2022'])->name('prathibha_2022');
Route::POST('/program_store', [PrathibhaController::class, 'program_store'])->name('program_store');
Route::GET('/program_edit/{id}', [PrathibhaController::class, 'program_edit'])->name('program_edit');
Route::POST('/program_update', [PrathibhaController::class, 'program_update'])->name('program_update');
Route::GET('/program_delete/{id}', [PrathibhaController::class, 'program_delete'])->name('program_delete');
