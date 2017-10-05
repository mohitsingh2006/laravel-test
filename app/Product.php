<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name', 'email','company','address','productId','age','mobile','height','weight',
    ];
    
    protected $hidden = [
        'updated_at', 'created_at',
    ];
    
}
