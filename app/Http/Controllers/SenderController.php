<?php

namespace App\Http\Controllers;

use App\Repositories\ShippingRequestRepository;
use App\Repositories\MainRepository;
use Illuminate\Http\Request;

class SenderController extends Controller
{
    protected $requestRepository;
    protected $mainRepository;

    public function __construct(ShippingRequestRepository $requestRepository, MainRepository $mainRepository)
    {
        $this->requestRepository = $requestRepository;
        $this->mainRepository = $mainRepository;
    }

    public function send()
    {
        $cities = $this->mainRepository->getCities();
        return view('send', compact('cities'));
    }

    public function pendingPackets()
    {
        $packets = $this->requestRepository->getByOwner(session('user_id'));
        return view('pendingpackets', compact('packets'));
    }

    public function successPackets()
    {
        $packets = $this->requestRepository->getByOwner(session('user_id')); // Filter by success status if needed
        return view('mypackets', compact('packets'));
    }

    public function offers($id)
    {
        $packet = $this->requestRepository->find($id);
        // Assuming we have a way to get offers for a request
        $offers = \Illuminate\Support\Facades\DB::table('requests_offer')
            ->join('users', 'requests_offer.offer_user_id', '=', 'users.user_id')
            ->where('request_id', $id)
            ->get();
        return view('offers', compact('packet', 'offers'));
    }

    public function selectOffer($id)
    {
        \Illuminate\Support\Facades\DB::table('requests_offer')
            ->where('requests_offer_id', $id)
            ->update(['offer_status' => 'success']);
        
        return redirect()->route('sender.success')->with('form_error', 'Teklif Seçildi');
    }
}
