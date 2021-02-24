<?php

use Illuminate\Support\Facades\Auth;
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

Route::get('/', 'ProductController@index')->name('home');
Route::get('search', 'SearchController@product')->name('search.products');
Route::prefix('product')->middleware('auth')->group(
    function () {
        Route::get('create', 'ProductController@create')->name('product.create');
        Route::post('store', 'ProductController@store');
        Route::get('{product:slug}/edit', 'ProductController@edit');
        Route::patch('{product:slug}/edit', 'ProductController@update');
        Route::delete('{product:slug}/delete', 'ProductController@destroy');
        Route::get('{product:slug}', 'ProductController@show')->name('product.show')->withoutMiddleware('auth');
        Route::get('report', 'ProductController@report')->name('product.report');
    }
);
// ========================== FILTER BY CATEGORY ===============================
Route::get('categories/{category:slug}', 'CategoryController@show')->name('categories.show');

Auth::routes();
