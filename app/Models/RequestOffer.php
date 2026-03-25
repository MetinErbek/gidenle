<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RequestOffer extends Model
{
    protected $table = 'requests_offer';
    protected $primaryKey = 'requests_offer_id';
    public $timestamps = false;

    protected $fillable = [
        'request_id',
        'offer_user_id',
        'offer',
        'offer_details',
        'offer_egitim_name',
        'offer_egitim_start_date',
        'offer_egitim_end_date',
        'offer_commission',
        'offer_first_lesson_free',
        'create_date',
        'offer_status',
    ];

    protected function casts(): array
    {
        return [
            'offer_egitim_start_date' => 'datetime',
        ];
    }
}
