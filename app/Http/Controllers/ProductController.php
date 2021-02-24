<?php

namespace App\Http\Controllers;

use App\{Category, Product};
use App\Http\Requests\ProductRequest;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return view('product.index', [
            'products' => Product::latest()->paginate(4),
        ]);
    }

    public function show(Product $product)
    {
        $products = Product::where('category_id', $product->category_id)->latest()->limit(6)->get();
        return view('product.show', compact('product', 'products'));
    }

    public function create()
    {
        return view('product.create', [
            'product' => new Product(),
            'categories' => Category::get(),
        ]);
    }

    public function store(ProductRequest $request)
    {
        $request->validate([
            'thumbnail' => 'image|mimes:jpeg,png,jpg|max:2048',
        ]);
        $attr = $request->all();

        $slug = \Str::slug(request('title'));
        $attr['slug'] = $slug;

        $thumbnail = request()->file('thumbnail') ? request()->file('thumbnail')->store("images/products") : null;

        $attr['category_id'] = request('category');
        $attr['thumbnail'] = $thumbnail;

        $product = auth()->user()->products()->create($attr);

        session()->flash('success', 'The product was created');
        return redirect('/');
    }

    public function edit(Product $product)
    {
        return view('product.edit', [
            'product' => $product,
            'categories' => Category::get(),
        ]);
    }

    public function update(ProductRequest $request, Product $product)
    {
        $request->validate([
            'thumbnail' => 'image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $this->authorize('update', $product);
        if (request()->file('thumbnail')) {
            \Storage::delete($product->thumbnail);
            $thumbnail = request()->file('thumbnail')->store("images/posts");
        } else {
            $thumbnail = $product->thumbnail;
        }

        $attr = $request->all();
        $attr['category_id'] = request('category');
        $attr['thumbnail'] = $thumbnail;

        $product->update($attr);

        session()->flash('success', 'The product was updated');
        return redirect('/');
    }

    public function destroy(Product $product)
    {
        $this->authorize('delete', $product);

        \Storage::delete($product->thumbnail);
        $product->delete();
        session()->flash('success', 'The product was destroyed');
        return redirect('/');
    }

    public function report()
    {
        return view('product.index', [
            'products' => Product::latest()->paginate(4),
        ]);
    }
}
