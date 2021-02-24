@extends('layouts.app', ['title' => ' Update Product'])

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">Update Product: {{ $product->title }}</div>
                <div class="card-body">
                    <form action="/product/{{ $product->slug }}/edit" method="POST" enctype="multipart/form-data">
                        @method('patch')
                        @csrf
                        @include('product.partials.form-control')
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
