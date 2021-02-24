<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function product()
    {
        $query =  request('query');

        $products = Product::where("title", "like", "%$query%")->latest()->paginate(10);
        return view('product.index', compact('products'));
    }
}
