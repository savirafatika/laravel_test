<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function show(Category $category)
    {
        $products = $category->products()->latest()->paginate(5);
        return view('product.index', compact('products', 'category'));
    }
}
