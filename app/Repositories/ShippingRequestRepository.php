<?php

namespace App\Repositories;

use App\Models\ShippingRequest;

class ShippingRequestRepository
{
    public function all()
    {
        return ShippingRequest::all();
    }

    public function find($id)
    {
        return ShippingRequest::find($id);
    }

    public function create(array $data)
    {
        return ShippingRequest::create($data);
    }

    public function getActiveRequests()
    {
        return ShippingRequest::where('request_status', 'pending')->get();
    }

    public function getByOwner($ownerId)
    {
        return ShippingRequest::where('request_owner_id', $ownerId)->get();
    }
}
