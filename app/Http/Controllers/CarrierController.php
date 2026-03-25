<?php

namespace App\Http\Controllers;

use App\Repositories\ShippingRequestRepository;
use App\Repositories\MainRepository;
use Illuminate\Http\Request;

class CarrierController extends Controller
{
    protected $requestRepository;
    protected $mainRepository;

    public function __construct(ShippingRequestRepository $requestRepository, MainRepository $mainRepository)
    {
        $this->requestRepository = $requestRepository;
        $this->mainRepository = $mainRepository;
    }

    public function searchPacket()
    {
        $packets = $this->requestRepository->getActiveRequests();
        return view('searchpacket', compact('packets'));
    }

    public function pendingPackets()
    {
        $packets = $this->requestRepository->getActiveRequests(); // Filter by carrier's offers
        return view('pendingpackets', compact('packets'));
    }

    public function successPackets()
    {
        $packets = $this->requestRepository->getActiveRequests(); // Filter by success status
        return view('mypackets', compact('packets'));
    }

    public function addOffer($id)
    {
        $packet = $this->requestRepository->find($id);
        return view('addoffer', compact('packet'));
    }

    public function postAddOffer(Request $request, $id)
    {
        // Implementation for adding offer
        return redirect()->route('carry.pending')->with('form_error', 'Teklifiniz İletildi');
    }
}
