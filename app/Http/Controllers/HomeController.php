<?php

namespace App\Http\Controllers;

use App\Repositories\MainRepository;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $mainRepository;

    public function __construct(MainRepository $mainRepository)
    {
        $this->mainRepository = $mainRepository;
    }

    public function index()
    {
        $cities = $this->mainRepository->getCities();
        return view('index', compact('cities'));
    }
}
