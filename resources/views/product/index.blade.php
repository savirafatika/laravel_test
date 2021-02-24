@extends('layouts.app')

@section('content')
<div class="container">
    <div class="">
        <div>
            @isset ($category)
            <h4>Category: {{ $category->name }}</h4>
            @endisset

            @if (!isset($tag) && !isset($category))
            <h4>All Products</h4>
            @endif
            <hr>
        </div>
        {{-- <div>
            @if (Auth::check())
            <a href="{{ route('post.create') }}" class="btn btn-primary">New Post</a>
        @endif
    </div> --}}
</div>

<div class="row">
    <div class="col-12 row">
        @forelse ($products as $product)
        <div class="card mb-4 mx-2 col">
            @if ($product->thumbnail)
            <a href="{{ route('product.show', $product->slug) }}">
                <img style="height: 400px; object-fit: cover; object-position: center;" class="card-img-top"
                    src="{{ $product->takeImage }}">
            </a>
            @endif
            <div class="card-body">
                <div>
                    <a href="{{ route('categories.show', $product->category->slug) }}" class="text-secondary">
                        <small>{{ $product->category->name }} </small>
                    </a>
                </div>

                <div class="text-secondary my-3">
                    {{ Str::limit($product->body, 200, '..') }}
                </div>

                <div class="d-flex justify-content-between align-items-center mt-2">
                    <button type="button" class="btn btn-primary">Order</button>
                </div>
            </div>
        </div>
        @empty
        <div class="col-12">
            <div class="alert alert-info">
                There's no product.
            </div>
        </div>
        @endforelse
    </div>
</div>

{{ $products->links() }}

</div>
@stop
