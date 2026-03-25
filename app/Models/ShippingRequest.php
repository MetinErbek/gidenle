<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShippingRequest extends Model
{
    protected $table = 'requests';
    protected $primaryKey = 'request_id';
    public $timestamps = false;

    protected $fillable = [
        'request_owner_id',
        'request_cat_id',
        'request_real_cat_id',
        'level_target',
        'safe_url',
        'request_title',
        'request_details',
        'il',
        'ilce',
        'first_lesson_free',
        'offer_price',
        'request_date',
        'request_status',
        'create_date',
        'expire_date',
    ];

    protected function casts(): array
    {
        return [
            'request_date' => 'datetime',
            'create_date' => 'datetime',
            'expire_date' => 'datetime',
        ];
    }
}
