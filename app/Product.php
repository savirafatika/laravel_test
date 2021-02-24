<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['title', 'slug', 'body', 'category_id', 'thumbnail'];
    protected $with = ['author', 'category'];

    public function scopeLatestFirst()
    {
        return $this->latest()->first();
    }

    public function scopeLatestProduct()
    {
        return $this->latest()->get();
    }

    public function category()
    {
        // return $this->hasOne(Category::class);
        return $this->belongsTo(Category::class);
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getTakeImageAttribute()
    {
        return "/storage/" . $this->thumbnail;
    }
}
