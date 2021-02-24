@extends('layouts.app', ['title' => ' New Product'])

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">New Product</div>
                <div class="card-body">
                    <form action="/product/store" method="POST" enctype="multipart/form-data">
                        @csrf
                        @include('product.partials.form-control', ['submit' => 'Create'])
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
