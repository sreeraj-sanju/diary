<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginApiController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// base url 
Route::get("base_url", [LoginApiController::class, "get_base_url"])->name("base_url");
//app login images
Route::get("login_images", [LoginApiController::class, "login_images"])->name("login_images");
Route::get("login", [LoginApiController::class, "login"])->name("login");