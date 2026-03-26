<?php

namespace App\Repositories;

use App\Models\ShippingRequest;
use Auth;
use App\Repositories\UserRepository;
use Str;

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
        //echo json_encode($data);exit;
        if(Auth::user())
        {
            $data['request_owner_id'] = Auth::user()->user_id;
        } else 
        {
            if(isset($data['user_email']) && isset($data['user_pass']))
            {
                $userRepository = new UserRepository();
                $user = $userRepository->createIfNotExist($data);
                //dd($user);exit;
                $data['request_owner_id'] = $user->user_id;
            } else 
            {
                return false;
            }  
        }
  
        $data['safe_url'] = Str::slug($data['packet_name']);
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
