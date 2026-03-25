<?php

namespace App\Repositories;

use App\Models\RequestOffer;

class RequestOfferRepository
{
    public function getByRequest($requestId)
    {
        return RequestOffer::where('request_id', $requestId)->get();
    }

    public function create(array $data)
    {
        return RequestOffer::create($data);
    }

    public function find($id)
    {
        return RequestOffer::find($id);
    }

    public function updateStatus($id, $status)
    {
        $offer = RequestOffer::find($id);
        if ($offer) {
            $offer->offer_status = $status;
            $offer->save();
            return $offer;
        }
        return null;
    }
}
