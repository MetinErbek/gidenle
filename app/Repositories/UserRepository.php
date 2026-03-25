<?php

namespace App\Repositories;

use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserRepository
{
    public function findByEmail($email)
    {
        return User::where('user_email', $email)->first();
    }

    public function login($email, $password)
    {
        $user = User::where('user_email', $email)
                    ->where('user_pass', md5($password))
                    ->first();
        return $user;
    }

    public function create(array $data)
    {
        if (isset($data['user_pass'])) {
            $data['user_pass'] = md5($data['user_pass']);
        }
        return User::create($data);
    }
}
