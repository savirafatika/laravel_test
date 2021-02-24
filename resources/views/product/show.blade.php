@extends('layouts.app')
@section('title', $product->title)
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8">
            @if ($product->thumbnail)
            <img style="height: 550px; object-fit: cover; object-position: center;" class="rounded w-100"
                src="{{ $product->takeImage }}">
            @endif
            <h1>{{ $product->title }}</h1>
            <div class="text-secondary mb-3">
                <a href="/categories/{{ $product->category->slug }}">{{ $product->category->name }}</a>
            </div>
            <p>{!! nl2br($product->body) !!}</p>
            {{-- nl2br = new line 2 break --}}

            @can('delete', $product)
            <div class="flex mt-3">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">
                    Delete
                </button>
                <a href="{{ $product->slug }}/edit" class="btn btn-sm btn-success">Edit</a>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin ingin menghapus?</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-2">
                                <div>{{ $product->title }}</div>
                            </div>
                            <form action="/product/{{$product->slug}}/delete" method="POST">
                                @csrf
                                @method('delete')
                                <div class="d-flex">
                                    <button class="btn btn-danger" type="submit" style="margin-right: 10px">Yes</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            @endcan
        </div>

        <div class="col-md-4">
            @foreach ($products as $product)
            <div class="card mb-4">
                <div class="card-body">
                    <div>
                        <a href="{{ route('categories.show', $product->category->slug) }}" class="text-secondary">
                            <small>{{ $product->category->name }} - </small>
                        </a>
                    </div>

                    <h5>
                        <a href="{{ route('product.show', $product->slug) }}" class="card-title text-dark">
                            {{ $product->title }}
                        </a>
                    </h5>

                    <div class="text-secondary my-3">
                        {{ Str::limit($product->body, 200, '..') }}
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
