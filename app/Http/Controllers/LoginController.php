<?php

namespace App\Http\Controllers;

use App\Repositories\UserRepository;
use App\Repositories\MainRepository;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    protected $userRepository;
    protected $mainRepository;

    public function __construct(UserRepository $userRepository, MainRepository $mainRepository)
    {
        $this->userRepository = $userRepository;
        $this->mainRepository = $mainRepository;
    }

    public function index()
    {
        return view('login');
    }

    public function postLogin(Request $request)
    {
        $user = $this->userRepository->login($request->user_email, $request->user_pass);
        if ($user) {
            session([
                'user_id' => $user->user_id,
                'user_name' => $user->user_name,
                'user_type' => $user->user_type,
                'Logged' => true
            ]);
            return redirect()->route('home');
        }
        return back()->with('form_error', 'Kullanıcı Bulunamadı.');
    }

    public function logout()
    {
        session()->flush();
        return redirect()->route('home');
    }

    public function carryRegister()
    {
        $carModels = $this->mainRepository->getCarModels();
        return view('carryregister', compact('carModels'));
    }

    public function postCarryRegister(Request $request)
    {
        // Implementation for registration
        return redirect()->route('home')->with('form_error', 'Kaydınız Başarılı');
    }
}
