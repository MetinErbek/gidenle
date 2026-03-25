<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'ekategori';
    protected $primaryKey = 'cat_id';
    public $timestamps = false;
}
