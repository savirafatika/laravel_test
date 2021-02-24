<div class="form-group">
    <input type="file" name="thumbnail" id="thumbnail" class="form-control @error('thumbnail') is-invalid @enderror">
    @error('thumbnail')
    <div class=" invalid-feedback">
        {{ $message }}
    </div>
    @enderror
</div>
<div class="form-group mb-3">
    <label for="title">Title</label>
    <input type="text" name="title" id="title" value="{{ old('title') ?? $product->title }}"
        class="form-control @error('title') is-invalid @enderror">
    @error('title')
    <div class="invalid-feedback">
        {{ $message }}
    </div>
    @enderror
</div>
<div class="form-group mb-3">
    <label for="category">Category</label>
    <select name="category" id="category" class="form-select @error('category') is-invalid @enderror">
        <option disabled selected>Choose one!</option>
        @foreach ($categories as $category)
        <option {{ $category->id == $product->category_id ? 'selected' : '' }} value="{{ $category->id }}">
            {{ $category->name }}</option>
        @endforeach
    </select>
    @error('category')
    <div class="invalid-feedback">
        {{ $message }}
    </div>
    @enderror
</div>
<div class="form-group mb-3">
    <label for="body">Body</label>
    <textarea name="body" id="body"
        class="form-control @error('body') is-invalid @enderror">{{ old('body') ?? $product->body }}</textarea>
    @error('body')
    <div class="invalid-feedback">
        {{ $message }}
    </div>
    @enderror
</div>
<button type="submit" class="btn btn-primary">{{ $submit ?? 'Update' }}</button>
